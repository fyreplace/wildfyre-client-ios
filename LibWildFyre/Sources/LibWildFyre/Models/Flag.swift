import Moya

public struct Flag: Codable {
    public let reason: String
    public let comment: String?
}

public struct Choice: Codable {
    public let key: UInt64
    public let value: String
}

public enum FlagTarget {
    case reasons
    case report(areaName: String, postId: UInt64, commentId: UInt64? = nil, flag: Flag)
}

extension FlagTarget: TargetType {
    public var path: String {
        switch self {
        case .reasons:
            return "/choices/flag/reasons/"

        case let .report(areaName, postId, commentId, _):
            var p = "/areas/\(areaName)/\(postId)"

            if let c = commentId {
                p += "/\(c)"
            }

            return p + "/flag/"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .reasons:
            return .get

        case .report:
            return .post
        }
    }

    public var task: Task {
        switch self {
        case .reasons:
            return .requestPlain

        case let .report(_, _, _, flag):
            return .requestJSONEncodable(flag)
        }
    }
}

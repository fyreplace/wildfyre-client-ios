import Foundation
import Lib
import LibItemsList
import LibWildFyre
import RxSwift

public class ArchiveDataSource: NSObject, ItemsListDataSource {
    public var ownPosts = false

    @IBOutlet
    private var postRepo: PostRepository!

    public func fetch(from position: Int, size: Int) -> Observable<ItemBucket> {
        let fn = ownPosts ? postRepo.getOwnPosts : postRepo.getArchive
        return fn(position, size).map { ItemBucket($0.results, total: $0.count) }
    }
}

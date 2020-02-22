import Lib
import RxCocoa
import RxSwift
import UIKit

public class ProfileBioViewController: UIViewController, CentralDataConsumer {
    @IBOutlet
    private var textView: UITextView!

    public var centralViewModel: CentralViewModel!
    private var disposer = DisposeBag()

    public override func viewDidLoad() {
        centralViewModel.bio.purify(with: self)
            .bind(to: textView.rx.text)
            .disposed(by: disposer)
    }

    public override func viewWillAppear(_ animated: Bool) {
        textView.becomeFirstResponder()
    }

    @IBAction
    func navigationCancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}

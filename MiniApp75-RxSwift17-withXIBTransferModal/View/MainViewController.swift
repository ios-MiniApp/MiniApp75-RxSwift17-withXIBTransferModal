//
//  MainViewController.swift
//  MiniApp75-RxSwift17-withXIBTransferModal
//
//  Created by 前田航汰 on 2022/08/08.
//

import UIKit
import RxCocoa
import RxSwift

class MainViewController: UIViewController {

    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private  weak var textLabel: UILabel!
    var mainViewModel: MainViewModel?
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinding()
    }

    @IBAction private func didTapModalButton(_ sender: Any) {
        let secondViewController = SecondViewController()
        secondViewController.configureWith(text: textLabel.text ?? "")
        present(secondViewController, animated: true)
    }

    private func setupBinding() {
        mainViewModel = MainViewModel(textFieldObservable: textField.rx.text.orEmpty.asObservable())
        mainViewModel?.textLabelObservable
            .bind(to: textLabel.rx.text)
            .disposed(by: disposeBag)
    }

}

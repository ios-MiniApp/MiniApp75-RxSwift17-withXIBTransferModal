//
//  SecondViewController.swift
//  MiniApp75-RxSwift17-withXIBTransferModal
//
//  Created by 前田航汰 on 2022/08/08.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var textLabel: UILabel!
    private var text = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = text
    }

    @IBAction private func didTapBackButton(_ sender: Any) {
        dismiss(animated: true)
    }

    func configureWith(text: String){
        self.text = text
    }

}

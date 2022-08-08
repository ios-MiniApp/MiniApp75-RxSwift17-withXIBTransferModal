//
//  MainViewModel.swift
//  MiniApp75-RxSwift17-withXIBTransferModal
//
//  Created by 前田航汰 on 2022/08/08.
//

import Foundation
import RxSwift
import RxCocoa

class MainViewModel {

    var textLabelObservable = PublishSubject<String>()
    private let disposeBag = DisposeBag()

    init(textFieldObservable: Observable<String>) {
        textFieldObservable
            .filter{ 0 < $0.count }
            .map { $0 + "だよん" }
            .subscribe(onNext: { text in self.textLabelObservable.onNext(text) })
            .disposed(by: disposeBag)
    }

}

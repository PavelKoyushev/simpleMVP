//
//  Presenter.swift
//  simpleMVP
//
//  Created by Pavel Koyushev on 07.10.2020.
//

import Foundation

protocol PresenterView: class {
    func updateLabel()
}

class Presenter {
    
    weak var view: PresenterView?
    
    init(with view: PresenterView) {
        self.view = view
    }
    
    var timesTapped = 0
    
    func buttonTapped() {
        timesTapped += 1
        
        if timesTapped >= 2 {
            self.view?.updateLabel()
        }
    }
}

//
//  ViewController.swift
//  simpleMVP
//
//  Created by Pavel Koyushev on 07.10.2020.
//

import UIKit

extension ViewController: PresenterView {
   func updateLabel() {
        changeTextLabel.text = "I have been changed!"
    self.view.backgroundColor = .yellow
   }
}

class ViewController: UIViewController {
    
    lazy var presenter = Presenter(with: self)

    @IBOutlet weak var changeTextLabel: UILabel!
    @IBAction func tapTapButton(_ sender: Any) {
        presenter.buttonTapped()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

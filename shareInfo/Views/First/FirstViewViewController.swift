//
//  FirstViewViewController.swift
//  shareInfo
//
//  Created by Developer1 on 06/06/2020.
//  Copyright © 2020 com.sfresneda.app. All rights reserved.
//

import UIKit

class FirstViewViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    private var newValue: String = "No Value"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    
    @IBAction func navigateToSecond(_ sender: Any) {
        
        // 4: Set SecondViewController delegate as you implementing his interface
        // take a look at the bottom, the extension.
        let secondView = SecondViewController.init()
        secondView.delegate = self
        
        secondView.modalPresentationStyle = .pageSheet
        
        self.present(secondView, animated: true, completion: nil)
    }
    
}

extension FirstViewViewController: SecondViewDelegate {
    
    
    // 5: Cool, when this method is called, means your delegate owner
    // on this approach SecondViewController did call it. Now you have to handle the information
    // and enjoy. We will update the text value for label.
    func getInfoFromSecondView(_ value: String) {
        self.valueLabel.text = "NEW VALUE: \(value)"
    }
    
    // EXTRA: You can put anything on this delegates methods, String, Classes, Structs,
    // other delegates🤔… I hope this helps you
}

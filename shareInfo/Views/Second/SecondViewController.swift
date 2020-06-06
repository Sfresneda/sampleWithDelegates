//
//  SecondViewController.swift
//  shareInfo
//
//  Created by Developer1 on 06/06/2020.
//  Copyright © 2020 com.sfresneda.app. All rights reserved.
//

import UIKit

// 1: Create your delegate (protocol) with all the interactions will serve from
// delegate owner, on this case SecondViewController to delegate implementor
// on this case FirstViewController
protocol SecondViewDelegate {
    func getInfoFromSecondView(_ value: String)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!

    
    // 2: Delegates ALWAYS WEAK (optional)!!
    var delegate: SecondViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonHasPressed(_ sender: UIButton) {
        
        // 3: On this approach we will send info whe user taps on a view button
        // sending his title (if it have any). This information is sended using the
        // delegate, currentTitle (optional)to avoid unwrapp I put a alternative value
        // "no title"
        self.dismiss(animated: true, completion: {
            self.delegate?.getInfoFromSecondView(sender.currentTitle ?? "no title")
        })
    }
    
}

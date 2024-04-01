//
//  ViewController.swift
//  LolRef
//
//  Created by hopechings on 4/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    let r = Request()
    struct Champ {
        var name: String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        r.api(.champions, model: [Champ].self) { list in
            
        }
    }

}


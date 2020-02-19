//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Craig Swanson on 2/18/20.
//  Copyright © 2020 Craig Swanson. All rights reserved.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {

    let loadingVC = LoadingViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startAnimation(_ sender: UIButton) {
        self.present(loadingVC, animated: true) {
            DispatchQueue.main.async {
                self.dismiss(animated: true, completion: nil)
                self.reloadInputViews()
            }
        }
    }
    
}


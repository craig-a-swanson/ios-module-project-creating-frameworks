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
    
    @IBOutlet weak var iterationsTextField: UITextField!
    
    
    @IBAction func startAnimation(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoadingUISegue" {
            guard let loadingVC = segue.destination as? LoadingViewController else { return }

            guard let iterationsString = iterationsTextField.text else { return }
            
            let iterations = Int(iterationsString)
            
            loadingVC.iterations = iterations
        }
    }
    
}


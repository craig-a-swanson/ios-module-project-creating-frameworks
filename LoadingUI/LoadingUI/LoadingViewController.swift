//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Craig Swanson on 2/18/20.
//  Copyright © 2020 Craig Swanson. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    var animationView: IndeterminateLoadingView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = IndeterminateLoadingView(frame: UIScreen.main.bounds)
        self.view.addSubview(animationView)

        DispatchQueue.main.sync {
            animationView.startAnimating()
            sleep(5)
            animationView.stopAnimating()
        }
        
    }
    
}

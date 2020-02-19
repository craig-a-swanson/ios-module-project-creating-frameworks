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
    public var iterations: Int? {
        didSet {
            updateValues()
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = IndeterminateLoadingView(frame: UIScreen.main.bounds)
        self.view.addSubview(animationView)
        self.animationView.stopAnimating()
//         self.animationView.startAnimating()
        
    }
    
    func updateValues() {
        guard let iterations = iterations else { return }
        DispatchQueue.main.async {
            self.animationView.startAnimating()
//            self.animationView.stopAnimating()
        }
        sleep(UInt32(iterations))
        self.dismiss(animated: true, completion: nil)
    }
    
}

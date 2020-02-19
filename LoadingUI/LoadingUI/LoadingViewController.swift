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

// TODO:  There is a lot commented out, but in the end we just need to figure out how to make the spinning circle stop when we want it to.  Right now we can make it spin forever by commenting out the "stop" method, but whenever we add a sleep or a stop, the code seems to hit that before it even starts to animate.  Probably has something to do with the sync versus async, but changing it to sync makes it crash every time.  Need to figure that out.

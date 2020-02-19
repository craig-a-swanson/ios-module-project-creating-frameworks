//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Craig Swanson on 2/18/20.
//  Copyright © 2020 Craig Swanson. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    private var animationView: IndeterminateLoadingView!
    
    public var iterations: Int? {
        didSet {
            updateValues()
        }
    }
    
    private func updateValues() {
        guard let iterations = iterations else { return }
        DispatchQueue.main.async {
            self.animationView = IndeterminateLoadingView(frame: UIScreen.main.bounds)
            self.view.addSubview(self.animationView)
            
            // The iterations variable is set in the IndeterminateLoadingView class
            // This will kick off the animations for the specified number of iterations
            // I multiply it by two because one cycle appears on the screen as only half an animation. What appears to the user as one full cycle on the screen is really two cycles in the code.
            self.animationView.iterations = iterations * 2
            
            // I couldn't figure out how to get the dismiss to wait for the animation to complete.
            //            self.dismiss(animated: true, completion: nil)
        }
    }
}


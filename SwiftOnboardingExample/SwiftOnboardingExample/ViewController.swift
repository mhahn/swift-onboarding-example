//
//  ViewController.swift
//  SwiftOnboardingExample
//
//  Created by Michael Hahn on 7/14/15.
//  Copyright (c) 2015 RH Labs Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var overlaidView: UIView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // Up to you where you want to put the hiding of the overlaid view controller. if you put it viewDidAppear it is a little slower since that means the view is being displayed
        if !OnboardingActions.hasCompletedOnboarding() {
            overlaidView.hidden = false
        } else {
            self.overlaidView.hidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        if !OnboardingActions.hasCompletedOnboarding() {
            presentOnboardingViewController()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Private Methods
    
    private func presentOnboardingViewController() {
        if let vc = storyboard?.instantiateViewControllerWithIdentifier(OnboardingViewController.getStoryboardId()) as? UIViewController {
            self.presentViewController(vc, animated: true, completion: nil)
        }
    }

    @IBAction func resetOnboarding(sender: AnyObject) {
        OnboardingActions.resetOnboarding(nil)
    }
}


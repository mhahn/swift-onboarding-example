//
//  OnboardingViewController.swift
//  SwiftOnboardingExample
//
//  Created by Michael Hahn on 7/14/15.
//  Copyright (c) 2015 RH Labs Inc. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    

    class func getStoryboardId() -> String {
        return "onboardingViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissOnboarding(sender: AnyObject) {
        OnboardingActions.completeOnboarding { () -> Void in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
    }

}

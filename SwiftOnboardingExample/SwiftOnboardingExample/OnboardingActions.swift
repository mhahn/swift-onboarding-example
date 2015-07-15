//
//  OnboardingActions.swift
//  SwiftOnboardingExample
//
//  Created by Michael Hahn on 7/14/15.
//  Copyright (c) 2015 RH Labs Inc. All rights reserved.
//

import Foundation

private let HasCompletedOnboarding = "HasCompletedOnboarding"

// Use a struct to create a namespace for the actions
struct OnboardingActions {

    // Taking an optional completion handler means we could do some async action here
    static func completeOnboarding(completion: (() -> Void)?) {
        setHasCompletedOnboarding(true, completion: completion)
    }

    static func resetOnboarding(completion: (() -> Void)?) {
        setHasCompletedOnboarding(false, completion: completion)
    }
    
    static func hasCompletedOnboarding() -> Bool {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        return userDefaults.boolForKey(HasCompletedOnboarding)
    }

    static private func setHasCompletedOnboarding(complete: Bool, completion: (() -> Void)?) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setBool(complete, forKey: HasCompletedOnboarding)
        completion?()
    }
    
}
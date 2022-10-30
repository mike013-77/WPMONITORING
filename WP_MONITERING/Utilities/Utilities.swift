//
//  Utilities.swift
//  Practice Task 1
//
//  Created by Mike van Wijnen..
//

import UIKit

class Utilities{
    static let shared = Utilities()
    
    func getViewController(identifier: String, storyboardType: StoryboardType) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardType.rawValue, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}

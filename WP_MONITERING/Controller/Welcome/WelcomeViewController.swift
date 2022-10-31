//
//  WelcomeViewController.swift
//  WP MONITORING
//
//   Created by Mike van Wijnen
//

import UIKit

class WelcomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Tap will link to overview page from start page
    @IBAction func startBtnTapped(_ sender: UIButton) {
        let vc = Utilities.shared.getViewController(identifier: "OverviewViewController", storyboardType: .main)
        super.setRootViewController(vc)
    }
    
}

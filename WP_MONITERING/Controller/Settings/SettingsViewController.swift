//
//  SettingsViewController.swift
//  WP MONITORING
//
//   Created by Mike van Wijnen
//

import UIKit

class SettingsViewController: BaseViewController {

    @IBOutlet weak var navBarView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        navBarView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    @IBAction func homeTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "OverviewViewController", storyboardType: .main)
        super.setRootViewController(vc)
        
    }

}

//
//  SecuirtyViewController.swift
//  WP MONITORING
//
//   Created by Mike van Wijnen
//

import UIKit
import MapKit

class SecuirtyViewController: BaseViewController {

    @IBOutlet weak var botTraficView: UIView!
    @IBOutlet weak var botTraficByCoutryView: UIView!
    @IBOutlet weak var topWebsiteView: UIView!
    @IBOutlet weak var secuirtyStatView: UIView!
    @IBOutlet weak var latestResultView: UIView!
    
    @IBOutlet weak var navBarView: UIView!
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        botTraficView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        botTraficByCoutryView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        topWebsiteView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        secuirtyStatView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        latestResultView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        navBarView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        // show location on map
        let location = CLLocationCoordinate2D(latitude: 51.5606, longitude: 5.0919)
        mapView.setCenter(location, animated: true)
    }
    
    @IBAction func homeTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "OverviewViewController", storyboardType: .main)
        super.setRootViewController(vc)
    }
    
    @IBAction func settingTapped(_ sender:UIButton){
        let vc = Utilities.shared.getViewController(identifier: "SettingsViewController", storyboardType: .main)
        super.setRootViewController(vc)
        
    }
    

}

//
//  NavigationMapViewController.swift
//  Navty
//
//  Created by Edward Anchundia on 2/28/17.
//  Copyright © 2017 Edward Anchundia. All rights reserved.
//

import UIKit

class NavigationMapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewHierarchy()
        setupViews()

        // Do any additional setup after loading the view.
    }

    func setupViewHierarchy() {
        self.edgesForExtendedLayout = []
        
//        view.addSubview(mapView)
//        mapView.addSubview(searchDestination)
    }
    
    func setupViews() {
//        mapView = MGLMapView(frame: view.bounds)
//        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        mapView.styleURL = MGLStyle.lightStyleURL(withVersion: 9)
//        mapView.tintColor = UIColor.blue
        
        
    }
    
//    internal lazy var mapView: MGLMapView = {
//        let mapView = MGLMapView()
//        return mapView
//    }()
    
    internal lazy var searchDestination: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Desination"
        return searchBar
    }()

}

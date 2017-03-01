//
//  ViewController.swift
//  Navty
//
//  Created by Edward Anchundia on 2/28/17.
//  Copyright © 2017 Edward Anchundia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
   var directions = [GoogleDirections]()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
            getData()
    }

    func getData() {
        APIRequestManager.manager.getData(endPoint: "https://maps.googleapis.com/maps/api/directions/json?origin=Disneyland&destination=Universal+Studios+Hollywood4&key=AIzaSyCbkeAtt4S2Cfkji1Z4SBY-TliAQ6QinDc") { (data) in
            if let validData = data {
                if let jsonData = try? JSONSerialization.jsonObject(with: validData, options: []),
                    let google = jsonData as? [String: Any] {
                    self.directions = GoogleDirections.getData(from: google)
                    dump(self.directions)
                  
                }
            }
        }
    }



}


//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Zach Cervi on 11/24/17.
//  Copyright © 2017 Zach Cervi. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation{
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String){
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}

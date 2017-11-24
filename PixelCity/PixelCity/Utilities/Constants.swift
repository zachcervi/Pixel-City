//
//  Constants.swift
//  PixelCity
//
//  Created by Zach Cervi on 11/24/17.
//  Copyright © 2017 Zach Cervi. All rights reserved.
//

import Foundation

let API_KEY = "ebb5fdcefab06330d76e769ca3d80a45"

func flickrUrl(forAPIKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int)-> String{
    return  "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"

}




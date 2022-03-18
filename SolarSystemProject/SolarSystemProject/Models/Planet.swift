//
//  Planet.swift
//  SolarSystemProject
//
//  Created by Aries Lam on 3/17/22.
//

import Foundation
class Planet{
    var planetName: String
    var planetImageName: String
    var planetDiameter: Int
    var planetDayLength: Float
    var maxMillionKMsFromSun: Float
    
    init(planetName: String, planetImageName: String, planetDiameter: Int,  planetDayLength: Float, maxMillionKMsFromSun: Float){
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDiameter = planetDiameter
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
}

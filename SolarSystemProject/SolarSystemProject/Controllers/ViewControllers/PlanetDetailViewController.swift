//
//  PlanetDetailViewController.swift
//  SolarSystemProject
//
//  Created by Aries Lam on 3/17/22.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    //Outlets
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetImage: UIImageView!
//    @IBOutlet weak var diameterLabel: UILabel!
    @IBOutlet weak var diameterValueLabel: UILabel!
//    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var distanceValueLabel: UILabel!
//    @IBOutlet weak var dayLengthLabel: UILabel!
    @IBOutlet weak var dayLengthValueLabel: UILabel!
    
    //Properties
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView(){
        guard let  planet = planet else {
            return
        }
        planetName.text = planet.planetName
        planetImage.image = UIImage(named: planet.planetImageName)
        diameterValueLabel.text = "\(planet.planetDiameter)"
        distanceValueLabel.text = "\(planet.maxMillionKMsFromSun)"
        dayLengthValueLabel.text = "\(planet.planetDayLength)"
        
    }
    
   

}

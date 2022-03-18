//
//  PlanetListTableViewController.swift
//  SolarSystemProject
//
//  Created by Aries Lam on 3/17/22.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.planetName
        cell.imageView?.image = UIImage(named: planet.planetImageName)
        

        return cell
    }
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDetail"{
            guard let indexPath = tableView.indexPathForSelectedRow,
                    let destination = segue.destination as? PlanetDetailViewController
            else{return}
            
            let planetToSend = PlanetController.planets[indexPath.row]
            destination.planet = planetToSend
        }
    }
    

}

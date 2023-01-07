//
//  ViewController.swift
//  HIMYMbook
//
//  Created by Özgür Salih Dülger on 7.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var MyHımym = [Himym]()
    var chosenHimym : Himym?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let barney = Himym(name: "Barney Stinson", character: "Funny Person", image: UIImage(named: "barney")!)
        
        let ted = Himym(name: "Ted Mosby", character: "Person Seeking Love", image: UIImage(named: "ted")!)
        
        let robin = Himym(name: "Robin Scherbatsky", character: "Confused Person", image: UIImage(named: "robin")!)
        
        let marshall = Himym(name: "Marshall Eriksen", character: "Very Loving Person", image: UIImage(named: "marshall")!)
        
        let lily = Himym(name: "Lily Aldrin", character: "Very Loving Person", image: UIImage(named: "lily")!)
        
        MyHımym.append(barney)
        MyHımym.append(ted)
        MyHımym.append(robin)
        MyHımym.append(marshall)
        MyHımym.append(lily)
        
       
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MyHımym.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = MyHımym[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenHimym = MyHımym[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedHimym = chosenHimym
            
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
           
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
    


}


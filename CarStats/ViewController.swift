//
//  ViewController.swift
//  CarStats
//
//  Created by Shivam on 01/04/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    var items = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.items = loadPlist()
        randomCar(self)
        
    }
    
    
    func loadPlist() -> [[String:String]] {
        let path = Bundle.main.path(forResource: "carList", ofType: "plist")
        return NSArray.init(contentsOf: URL.init(fileURLWithPath: path!)) as! [[String:String]]
        
        
        
    }

    @IBAction func randomCar(_ sender: Any) {
        
        let dataSelect = items.randomElement()!
        imageView.image = UIImage(named: dataSelect["Image"]!)
        label1.text = dataSelect["Name"]
        label2.text = "Top Speed: \(dataSelect["TopSpeed"]!) MPH"
        
        label3.text = "0-60: \(dataSelect["0-60"]!) seconds"
        label4.text = "BHP: \(dataSelect["BHP"]!)"
        label5.text = "MPG: \(dataSelect["MPG"]!)"
        label6.text = "Price: \(dataSelect["Price"]!)"
        
        
        
        
    }
    
    
}


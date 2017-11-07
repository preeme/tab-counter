//
//  ViewController.swift
//  Tab Counter
//
//  Created by Michael Roa on 11/6/17.
//  Copyright © 2017 Michael Roa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Outlets
    
    @IBOutlet weak var countLabel: UILabel!
    //MARK: - Properties
    var count = 0
    
    //MARK: - Interactions

    
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func tabResetButton(_ sender: UIBarButtonItem) {
        count = 0
        countLabel.text = String(count)
    }
    
    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    //MARK: - Functions
    func increaseCount() {
    count += 1
    countLabel.text = String(count)
    }
}


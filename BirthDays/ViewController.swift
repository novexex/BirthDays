//
//  ViewController.swift
//  BirthDays
//
//  Created by Blackwood Martain on 10/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    //@IBOutlet weak var resultButton: UIButton!
    private var daysNumbers = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //resultButton.layer.cornerRadius = 12
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range  = sender.date..<Date.now
        daysNumbers = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTapped() {
            infoLabel.text = "You've been enjoying life for \(daysNumbers)"
    }

}

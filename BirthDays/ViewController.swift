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
    private var senderDate = Date()
    private var nowDate = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        senderDate = sender.date
        nowDate = Date.now
    }
    
    @IBAction func resultButtonTapped() {
        if senderDate > nowDate {
            showAlert(title: "Wrong date", message: "You cannot be born in the future")
            infoLabel.text = "You've been enjoying life for ... days now"
        } else {
            let range  = senderDate..<nowDate
            daysNumbers = range.formatted(.components(style: .wide, fields: [.day]))
            let number = daysNumbers.split(separator: " ")
            infoLabel.text = "You've been enjoying life for \(number[0]) days now"
        }
    }

}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

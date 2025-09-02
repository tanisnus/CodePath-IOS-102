//
//  ViewController.swift
//  Tanis - CodePath - IOS
//
//  Created by Tanis Sarbatananda on 8/31/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {

        numberOfPetsLabel.text = "\(Int(sender.value))"
      }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Get the year title from the segmented control
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex) ?? "Unknown"
        
        // Build the introduction string
        let introduction = """
        My name is \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "") and I attend \(schoolNameTextField.text ?? "").
        I am currently in my \(year) year and I own \(Int(morePetsStepper.value)) dogs.
        It is \(morePetsSwitch.isOn) that I want more pets.
        """
        
        // Print the introduction
        print(introduction)
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
    
    
  


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Stepper value: \(morePetsStepper.value)")
        print("Stepper minimum: \(morePetsStepper.minimumValue)")
        print("Stepper maximum: \(morePetsStepper.maximumValue)")
        print("Label text: \(numberOfPetsLabel.text ?? "nil")")
    }


}


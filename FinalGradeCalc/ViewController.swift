//
//  ViewController.swift
//  FinalGradeCalc
//
//  Created by Malena on 10/19/20.
//  Copyright © 2020 MDB. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var mySegmentedController: UISegmentedControl!
    
    @IBOutlet weak var leftTextField: UITextField!
    
    @IBOutlet weak var rightTextField: UITextField!
    
    @IBOutlet weak var middleTextField: UITextField!
    
    @IBOutlet weak var bottomTextField: UITextField!
    
    @IBOutlet weak var desiredGradeTextField: UITextField!
    
    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var middleLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var finalGradeLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hideBottomTextField()
        hideBottomLabel()
    }

    
    func showBottomTextField()
    {
        bottomTextField.isHidden = false
    }
    func hideBottomTextField()
    {
        bottomTextField.isHidden = true
    }
    
    func showBottomLabel()
    {
        bottomLabel.isHidden = false
    }
    func hideBottomLabel()
    {
        bottomLabel.isHidden = true
        bottomLabel.isHidden = true
    }
    

        @IBAction func finalGradeGestureTapped(_ sender: UITapGestureRecognizer)
    {
        print("This is working")
        let q1Text = leftTextField.text ?? "0"
        let q1Num = Double(q1Text) ?? 0

        let q2Text = leftTextField.text ?? "0"
        let q2Num = Double(q2Text) ?? 0
        
        if mySegmentedController.selectedSegmentIndex == 0
        {
            let desiredGrade = middleTextField.text ?? "0"
            let desiredNum = Double(desiredGrade) ?? 0
            
            let testGrade = (desiredNum-(0.4*q1Num)-(0.4*q2Num))/0.2
            
            finalGradeLabel.text = "You will need to recieve a score of \(testGrade)% on the final in order to reach your desired grade of \(desiredGrade) for the end of the class."
                        
        }
        
        else if mySegmentedController.selectedSegmentIndex == 1
        {
            let midtermGrade = middleTextField.text ?? "0"
            let midtermNum = Double(midtermGrade) ?? 0
            
            let desiredGrade = bottomTextField.text ?? "0"
            let desiredNum = Double(desiredGrade) ?? 0
            
            let testGrade = (desiredNum-(0.4*q1Num)-(0.4*q2Num)-(0.1*midtermNum))/0.1
            
            finalGradeLabel.text = "You will need to recieve a score of \(testGrade)% on the final in order to reach your desired grade of \(desiredGrade) for the end of the class."
        }
    }
    
    
    @IBAction func segmentedControllerTapped(_ sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            hideBottomTextField()
            hideBottomLabel()
            
            middleLabel.text = "Desired Grade:"
    
        case 1:
            showBottomTextField()
            showBottomLabel()
                       
            middleLabel.text = "Midterm Grade:"
            bottomLabel.text = "Desired Grade:"
        
        default: break
        }
    }
    
}

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
    
    var desiredNum: Double = 0.0
    var testGrade: Double = 0.0
    
    func changeTextForSpecialTestGrades()
    {
        if testGrade <= 0
        {
            finalGradeLabel.text = "Wow!  You don't even need to take the final exam in order to achieve your desired ending grade of \(desiredNum)% in the class.  (But you should still probably go take it 🙃)."
        }
        
        else if testGrade > 100
        {
            finalGradeLabel.text = "Eek!  You will need to recieve a score of \(testGrade)% on the final exam in order to achieve your desired ending grade of \(desiredNum)% in the class.  You might want to ask your teacher for some extra credit opportunities."
        }
    }
    
    func changeColorsForTestGrades()
    {
        if testGrade <= 0
        {
            // this is the code for the BLUE color
            view.backgroundColor = UIColor.init(red: 171/255, green: 226/255, blue: 255/255, alpha: 1)
        }
        else if testGrade < 80 && testGrade > 0
        {
            // this is the code for the GREEN color
            view.backgroundColor = UIColor.init(red: 153/255, green: 232/255, blue: 183/255, alpha: 1)
        }
        
        else if testGrade >= 80 && testGrade <= 100
        {
            // this is the code for the YELLOW color
            view.backgroundColor = UIColor.init(red: 255/255, green: 242/255, blue: 171/255, alpha: 1)
        }
        
        else if testGrade > 100
        {
            // this is the code for the RED color
            view.backgroundColor = UIColor.init(red: 242/255, green: 124/255, blue: 124/255, alpha: 1)
        }
    }

    
        @IBAction func finalGradeGestureTapped(_ sender: UITapGestureRecognizer)
    {
        let q1Text = leftTextField.text ?? "0"
        let q1Num = Double(q1Text) ?? 0

        let q2Text = leftTextField.text ?? "0"
        let q2Num = Double(q2Text) ?? 0
            
        if mySegmentedController.selectedSegmentIndex == 0
        {
            let desiredGrade = middleTextField.text ?? "0"
            desiredNum = Double(desiredGrade) ?? 0
            
            testGrade = (desiredNum-(0.4*q1Num)-(0.4*q2Num))/0.2
            
            finalGradeLabel.text = "You will need to recieve a score of \(testGrade)% on the final in order to reach your desired grade of \(desiredGrade) for the end of the class."
                        
        }
        
        else if mySegmentedController.selectedSegmentIndex == 1
        {
            let midtermGrade = middleTextField.text ?? "0"
            let midtermNum = Double(midtermGrade) ?? 0
            
            let desiredGrade = bottomTextField.text ?? "0"
            desiredNum = Double(desiredGrade) ?? 0
            
            testGrade = (desiredNum-(0.4*q1Num)-(0.4*q2Num)-(0.1*midtermNum))/0.1
            
            finalGradeLabel.text = "You will need to recieve a score of \(testGrade)% on the final exam in order to achieve your desired ending grade of \(desiredGrade)% in the class."
        }
        changeTextForSpecialTestGrades()
        changeColorsForTestGrades()
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
            
            middleTextField.text = ""
                       
            middleLabel.text = "Midterm Grade:"
            bottomLabel.text = "Desired Grade:"
        
        default: break
        }
    }
    
   //  Below is a shake gesture so that everything will reset when the phone is shaken.
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        view.backgroundColor = UIColor.white
        
        leftTextField.text = ""
        rightTextField.text = ""
        middleTextField.text = ""
        bottomTextField.text = ""
        finalGradeLabel.text = "Find What I Need To Get On The Final Exam"
    }
}

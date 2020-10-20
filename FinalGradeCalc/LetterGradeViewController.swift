//
//  LetterGradeViewController.swift
//  FinalGradeCalc
//
//  Created by Malena on 10/20/20.
//  Copyright © 2020 MDB. All rights reserved.
//

import UIKit

class LetterGradeViewController: UIViewController
{

    @IBOutlet weak var bothQuartersLabel: UILabel!
    
    @IBOutlet weak var midtermLabel: UILabel!
    
    @IBOutlet weak var finalExamLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        textForQuartersLabel()
        midtermLabel.text = "Final Exam:  The Final Exam grade makes up 20% of the class ending grade."
        finalExamLabel.isHidden = true
    }
    
    func textForQuartersLabel()
    {
        bothQuartersLabel.text = "Q1 + Q2:  The First Quarter grade is 40% of the class ending grade.  The Second Quarter grade is also 40% of the class ending grade.  So, together, the First & Second Quarter grades make up 80% of the class ending grade."
    }
    @IBAction func segmentedControllerTapped(_ sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            textForQuartersLabel()
            midtermLabel.text = "Final Exam:  The Final Exam grade makes up 20% of the class ending grade."
            finalExamLabel.isHidden = true
    
        case 1:
            textForQuartersLabel()
            midtermLabel.text = "Midterm Exam:  The Midterm Exam grade makes up 10% of the class ending grade."
            finalExamLabel.text = "Final Exam:  The Final Exam grade makes up 10% of the class ending grade."
            finalExamLabel.isHidden = false
    
        default : break
        }
    }
}

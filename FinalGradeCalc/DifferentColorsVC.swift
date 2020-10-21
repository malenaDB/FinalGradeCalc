//
//  DifferentColorsVC.swift
//  FinalGradeCalc
//
//  Created by Malena on 10/21/20.
//  Copyright © 2020 MDB. All rights reserved.
//

import UIKit

class DifferentColorsVC: UIViewController
{
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var explanationLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        headerLabel.text = "Why Are There Different Background Colors?"
        explanationLabel.text = "The Final Grade Calculator uses different background colors to indicate how high of a grade you will need to receive on your Final Exam in order to achieve your desired class ending grade.  You can click on the different colors to learn about what each one means!"
    }
    
    
    @IBAction func segmentedControlTap(_ sender: UISegmentedControl)
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            view.backgroundColor = UIColor.white
            headerLabel.text = "Why Are There Different Background Colors?"
            explanationLabel.text = "The Final Grade Calculator uses different background colors to indicate how high of a grade you will need to receive on your Final Exam in order to achieve your desired class ending grade.  You can click on the different colors to learn about what each one means!"
            
        case 1:
            // this is the code for the RED color
            view.backgroundColor = UIColor.init(red: 242/255, green: 124/255, blue: 124/255, alpha: 1)
            
            headerLabel.text = "What Does A Red Background Mean?"
            explanationLabel.text = "If your background color turns red, it means that you will need to recieve a grade more than 100% on your Final Exam in order to achieve your desired class ending grade.  If your background turns red, you should consider asking your teacher for extra credit opportunities in order to reach your target grade for your Final Exam (which will allow you to recieve your desired class ending grade)."
            
        case 2:
            // this is the code for the YELLOW color
            view.backgroundColor = UIColor.init(red: 255/255, green: 242/255, blue: 171/255, alpha: 1)
            
            headerLabel.text = "What Does A Yellow Background Mean?"
            explanationLabel.text = "If your background color turns yellow, it means that you will need to recieve a grade between 80% and 100% on your Final Exam in order to achieve your desired class ending grade.  A yellow background should be a warning to you that you should probably do some studying in order to make sure that you are able to reach your target grade for your Final Exam (which will allow you to recieve your desired class ending grade)."
            
        case 3:
            // this is the code for the GREEN color
            view.backgroundColor = UIColor.init(red: 153/255, green: 232/255, blue: 183/255, alpha: 1)
            
            headerLabel.text = "What Does A Green Background Mean?"
            explanationLabel.text = "If your background color turns green, it means that you will need to recieve a grade between 0% and 79% on your Final Exam in order to reach your desired class ending grade.  A green background should give you a sigh of relief that, while you should certainly try your best on the Final Exam, you'll have more room for wrong-answers on your Final Exam."
            
        case 4:
            // this is the code for the BLUE color
            view.backgroundColor = UIColor.init(red: 171/255, green: 226/255, blue: 255/255, alpha: 1)
            headerLabel.text = "What Does A Blue Background Mean?"
            explanationLabel.text = "If your background color turns blue, you should throw yourself a mini-party!  🥳  A blue background means that you need a grade of 0% or less on your Final Exam in order to reach your desired class ending grade.  Of course, you still should take the final and try your best."
    
        default : break
        }
    }
}

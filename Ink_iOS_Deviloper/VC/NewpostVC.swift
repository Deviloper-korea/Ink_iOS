//
//  NewpostVC.swift
//  Ink_iOS_Deviloper
//
//  Created by 신동규 on 2018. 2. 26..
//  Copyright © 2018년 신동규. All rights reserved.
//

import UIKit

class NewpostVC: UIViewController {

    @IBOutlet weak var selectTopic: UIButton!
    @IBOutlet weak var ink: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var submitNewspeed: UIButton!
    
    
    @IBAction func selectTpc(_ sender: Any) {
        
        let alertController = UIAlertController(title: "글감선택", message: "글감을 선택해주세요", preferredStyle: UIAlertControllerStyle.alert)
        
        
        let oneAction = UIAlertAction(title: "One", style: .default) { _ in }
        let twoAction = UIAlertAction(title: "Two", style: .default) { _ in }
        let threeAction = UIAlertAction(title: "Three", style: .default) { _ in }
    
        
        alertController.addAction(oneAction)
        alertController.addAction(twoAction)
        alertController.addAction(threeAction)

        
        let DestructiveAction = UIAlertAction(title: "취소", style: UIAlertActionStyle.destructive) { (result : UIAlertAction) -> Void in
            
            print("취소")
            
        }
        
        alertController.addAction(DestructiveAction)
        
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.layer.borderWidth = 2.0
        self.textField.layer.borderColor=UIColor.darkGray.cgColor

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  
    }
    

}

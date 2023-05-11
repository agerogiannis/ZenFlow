//
//  CustomizationViewController.swift
//  Meditation and Focus
//
//  Created by Alexia Gerogiannis on 5/11/23.
//

import UIKit


class CustomizationViewController: UIViewController {
    private var options: [String] = ["Meditation", "Study Timers","Education","Growing a Garden!"]
                                            
    @IBOutlet weak var nameTextField: UITextField!
    var newUser = User()
    
    /*@IBOutlet weak var isChosen1: UILabel!
    @IBOutlet weak var isChosen2: UILabel!
    @IBOutlet weak var isChosen3: UILabel!
    @IBOutlet weak var isChosen4: UILabel!*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*self.isChosen1.isHidden = true;
        self.isChosen2.isHidden = true;
        self.isChosen3.isHidden = true;
        self.isChosen4.isHidden = true;*/

        // Do any additional setup after loading the view.
    }
    
    @IBAction func meditationButton(_ sender: UIButton) {
        if (newUser.interestPreferences[0]==false){
            newUser.interestPreferences[0] = true;
            //self.isChosen1.isHidden = false;

        }
        else{
            newUser.interestPreferences[0] = false;
            //self.isChosen1.isHidden = true;

        }
    }
    @IBAction func Game(_ sender: UIButton) {
        if (newUser.interestPreferences[3]==false){
            newUser.interestPreferences[3] = true;
            //self.isChosen4.isHidden = false;
        }
        else{
            newUser.interestPreferences[3] = false;
            //self.isChosen4.isHidden = true;
        }
    }
    @IBAction func Education(_ sender: UIButton) {
        if (newUser.interestPreferences[1]==false){
            newUser.interestPreferences[1] = true;
            //self.isChosen3.isHidden = false;
        }
        else{
            newUser.interestPreferences[1] = false;
            //self.isChosen3.isHidden = true;
        }
    }
    @IBAction func timerButton(_ sender: UIButton) {
        if (newUser.interestPreferences[2]==false){
            newUser.interestPreferences[2] = true;
            //self.isChosen2.isHidden = false;
        }
        else{
            newUser.interestPreferences[2] = false;
            //self.isChosen2.isHidden = true;
        }
        
    }
    @IBAction func saveButton(_ sender: UIButton) -> Void {
        guard let userName = nameTextField.text else { return }
        newUser.name = userName
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

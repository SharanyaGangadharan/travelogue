//
//  ViewController.swift
//  Travelogue
//
//  Created by Sharanya Gangadharan on 12/7/17.
//  Copyright © 2017 sdsu. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        //validation
        if let userEmail = email.text, let pass = password.text{
        //sign in
            Auth.auth().signIn(withEmail: userEmail, password: pass, completion: { (user, error) in
                
                //check that user isn't nil
                if user != nil{
                    self.performSegue(withIdentifier: "goToHome" , sender: self)
                    print("user found");
                }
                else{
                    print("error found");
                }
            })
        }
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
    }
    


}


//
//  SetGoal.swift
//  FitnesApp
//
//  Created by Lukas Züger on 25.06.21.
//

import UIKit

class SetGoal: UIViewController{
    
    private var userDefaults = UserDefaults.standard
    
    @IBOutlet var label: UILabel!
    
    
    @IBOutlet var squatGoal: UITextField!
    
    @IBOutlet var lungesGoal: UITextField!
    
    @IBOutlet var pushupGoal: UITextField!
    
    @IBOutlet var pullupsGoal: UITextField!
    
    @IBOutlet var burpeesGoal: UITextField!
    
    @IBOutlet var crunchesGoal: UITextField!
    
    @IBOutlet var plankGoal: UITextField!
    
    @IBOutlet var legRaiseGoal: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Set your Dayly Goal"
    }
    
    @IBAction func deleteUserdefaults(_ sender: Any) {
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        userDefaults.setValue(Int(squatGoal.text ?? "0") , forKey: "squatGoal")
        userDefaults.setValue(Int(lungesGoal.text ?? "0"), forKey: "lungesGoal")
        userDefaults.setValue(Int(pushupGoal.text ?? "0") , forKey: "pushupsGoal")
        userDefaults.setValue(Int(pullupsGoal.text ?? "0") , forKey: "pullupsGoal")
        userDefaults.setValue(Int(burpeesGoal.text ?? "0") , forKey: "burpeesGoal")
        userDefaults.setValue(Int(crunchesGoal.text ?? "0") , forKey: "crunchesGoal")
        userDefaults.setValue(Int(plankGoal.text ?? "0") , forKey: "plankGoal")
        userDefaults.setValue(Int(legRaiseGoal.text ?? "0") , forKey: "legRaiseGoal")
        
        self.navigationController?.popViewController(animated: true)
    }
    
}

//
//  Legs.swift
//  FitnesApp
//
//  Created by Lukas Züger on 24.06.21.
//

import UIKit
import WebKit

class Exercise: UIViewController{
    
    private var userdefault = UserDefaults.standard

    @IBOutlet var textField: UITextField!
    
    @IBOutlet var button: UIButton!
    
    
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addReps(_ sender: Any) {
        test()
        self.navigationController?.popViewController(animated: true)
        
        }
    
    func test(){
        
        switch (title.self) {
        
        case "Squats":
            var data = userdefault.integer(forKey: "Squats")
            userdefault.removeObject(forKey: "Squats")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Squats")

            
            return
        
        case "Lunges":
            var data = userdefault.integer(forKey: "Lunges")
            userdefault.removeObject(forKey: "Lunges")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Lunges")
            return

        case "Pushups":
            var data = userdefault.integer(forKey: "Pushups")
            userdefault.removeObject(forKey: "Pushups")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Pushups")
            return

        case "Pullups":
            var data = userdefault.integer(forKey: "Pullups")
            userdefault.removeObject(forKey: "Pullups")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Pullups")
            return

        case "Burpees":
            var data = userdefault.integer(forKey: "Burpees")
            userdefault.removeObject(forKey: "Burpees")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Burpees")
            return

        case "Crunches":
            var data = userdefault.integer(forKey: "Crunches")
            userdefault.removeObject(forKey: "Crunches")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Crunches")
            return

        case "Plank":
            var data = userdefault.integer(forKey: "Plank")
            userdefault.removeObject(forKey: "Plank")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Plank")
            return

        case "Leg Raise":
            var data = userdefault.integer(forKey: "Leg Raise")
            userdefault.removeObject(forKey: "Leg Raise")
            data += Int(textField.text ?? "0") ?? 0
            userdefault.setValue(data, forKey: "Leg Raise")
            return

        default:
            return
        }

    }
    

}

//
//  Progress.swift
//  FitnesApp
//
//  Created by Lukas Züger on 25.06.21.
//

import UIKit

class Progress: UIViewController{
    var userdefault = UserDefaults.standard
    var counter = 0
    
    @IBOutlet var text: UILabel!
    
    
    @IBOutlet var squatReps: UILabel!
    
    @IBOutlet var lungesReps: UILabel!
    
    @IBOutlet var pushupsReps: UILabel!
    
    @IBOutlet var pullupsReps: UILabel!
    
    @IBOutlet var burpeesReps: UILabel!
    
    @IBOutlet var crunchReps: UILabel!
    
    @IBOutlet var plankTime: UILabel!
    
    @IBOutlet var legRaiseReps: UILabel!
    
    
    @IBOutlet var checkSquat: UIImageView!
    
    @IBOutlet var checkLunges: UIImageView!
    
    @IBOutlet var checkPushups: UIImageView!
    
    @IBOutlet var checkPullups: UIImageView!
    
    @IBOutlet var checkBurpees: UIImageView!
    
    @IBOutlet var checkCrunches: UIImageView!
    
    @IBOutlet var checkPlank: UIImageView!
    
    @IBOutlet var checkLegRaise: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addProgressToLabel()
        compareGoalToProgress()
        
        
    }
    
    func addProgressToLabel(){
        
        var plank = userdefault.value(forKey: "Plank") ?? 0
        plank = plank as! Int / 60
        userdefault.setValue(plank, forKey: "Plank")
        
        squatReps.text = "\(userdefault.value(forKey: "Squats") ?? "0")"
        lungesReps.text = "\(userdefault.value(forKey: "Lunges") ?? "0")"
        pushupsReps.text = "\(userdefault.value(forKey: "Pushups") ?? "0")"
        pullupsReps.text = "\(userdefault.value(forKey: "Pullups") ?? "0")"
        burpeesReps.text = "\(userdefault.value(forKey: "Burpees") ?? "0")"
        crunchReps.text = "\(userdefault.value(forKey: "Crunches") ?? "0")"
        plankTime.text = "\(userdefault.value(forKey: "Plank") ?? "0")"
        legRaiseReps.text = "\(userdefault.value(forKey: "Leg Raise") ?? "0")"
    }
    
    // Compares set Goal userdefaults to progress userdefaults
    
    func compareGoalToProgress(){
        text.text = "keep gioing to rach your dayly goal"
        
        
        if  userdefault.integer(forKey: "Squats") >= userdefault.integer(forKey: "squatGoal"){
            
            checkSquat.image = .checkmark
            counter += 1
        }

        
        if  userdefault.integer(forKey: "Lunges") >= userdefault.integer(forKey: "lungesGoal"){
            
            checkLunges.image = .checkmark
            counter += 1
        }
        
        if  userdefault.integer(forKey: "Pushups") >= userdefault.integer(forKey: "pushupsGoal"){
            
            checkPushups.image = .checkmark
            counter += 1
        }
        
        if  userdefault.integer(forKey: "Pullups") >= userdefault.integer(forKey: "pullupsGoal"){
            
            checkPullups.image = .checkmark
            counter += 1
        }
        
        if  userdefault.integer(forKey: "Burpees") >= userdefault.integer(forKey: "burpeesGoal"){
            
            checkBurpees.image = .checkmark
            counter += 1
        }
        
        if  userdefault.integer(forKey: "Crunches") >= userdefault.integer(forKey: "crunchesGoal"){
            
            checkCrunches.image = .checkmark
            counter += 1
        }
        
        if  userdefault.integer(forKey: "Plank") >= userdefault.integer(forKey: "plankGoal"){
            
            checkPlank.image = .checkmark
            counter += 1
        }
        
        if  userdefault.integer(forKey: "Leg Raise") >= userdefault.integer(forKey: "legRaiseGoal"){
            
            checkLegRaise.image = .checkmark
            counter += 1
        }
        
        if counter == 8 {
            text.text = "Congatulation you have reached your dayly goal"
        }
    }
    
    
}

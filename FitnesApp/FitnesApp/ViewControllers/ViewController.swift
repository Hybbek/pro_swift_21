//
//  ViewController.swift
//  FitnesApp
//
//  Created by Lukas Züger on 24.06.21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    private let identifier = "CELL"


    @IBOutlet var tableView: UITableView!
    
    
    private let nextTableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "CELL")
        let storyboaard = UIStoryboard(name: "Main", bundle: nil)
        
        
        return table
    }()
    
    private let exercises = [
        ["Squats", "Lunges"],
        ["Pushups", "Pullups", "Burpees"],
        ["Crunches", "Plank", "Leg Raise"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Exercises"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    

    //TableView Layout

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0:
            return "Legs"
        case 1:
            return "Upper Body"
        case 2:
            return "Core"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    //passiert nichts?
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return exercises.count
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let category = exercises[indexPath.section][indexPath.row]
        
        
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Exercise") as! Exercise

        vc.title = category
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true) //opens new vc
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises[section].count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        cell.textLabel?.text = exercises[indexPath.section][indexPath.row]
        
        return cell
        }
    
    // open Progress Viecontroller (shows your progress)
    @IBAction func getProgress(_ sender: Any) {
        //let storyboard1 = UIStoryboard(name: "Main", bundle: nil)
        let vcProgress = storyboard?.instantiateViewController(withIdentifier: "Progress") as! Progress
        
        vcProgress.title = "Progress"
        vcProgress.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vcProgress, animated: true)
    }
    
    // open SetGoal Viewcontroller (you can set your Goal there)
    @IBAction func setGoal(_ sender: Any) {
//        let storyboard2 = UIStoryboard(name: "Main", bundle: nil)
        let vcGoal = storyboard?.instantiateViewController(withIdentifier: "SetGoal") as! SetGoal

        vcGoal.title = "Dayly Goal"
        vcGoal.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vcGoal, animated: true)
        
    }
    


}



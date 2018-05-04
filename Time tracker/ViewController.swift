//
//  ViewController.swift
//  Time tracker
//
//  Created by Macbook Pro on 04/05/2018.
//  Copyright © 2018 iotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var eggTime  = 210
    
    var timer = Timer()
    
    @IBOutlet weak var timeText: UILabel!
    
    @IBAction func onPauseClick(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func onResumeClick(_ sender: Any) {
        if (!timer.isValid){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerProcess), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func onResetClick(_ sender: Any) {
        eggTime = 210
        timeText.text = String(eggTime)
    }
    
    @IBAction func onMinus10Click(_ sender: Any) {
        if(eggTime-10>=0){
            eggTime -= 10
        }else{
            
        }
        timeText.text = String(eggTime)
    }
    
    @IBAction func onPlus10Click(_ sender: Any) {
        eggTime += 10
        timeText.text = String(eggTime)
    }
    
    @objc func timerProcess() {
        if(eggTime-1>0){
            eggTime -= 1
            timeText.text = String(eggTime)
        }else{
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeText.text = String(eggTime)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}


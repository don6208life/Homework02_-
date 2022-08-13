//
//  ViewController.swift
//  九九乘法測驗
//
//  Created by Don Chan on 2022/8/13.
//

import UIKit

class ViewController: UIViewController
{
    let numbersArray1:Array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
   
    let numbersArray2:Array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    let scoreArray:Array = ["0", "10", "20", "30", "40", "50", "60", "70", "80", "90", "100"]
    
    @IBOutlet weak var number1: UIImageView!
       
    @IBOutlet weak var number2: UIImageView!
    
    @IBOutlet weak var calSigns1: UIImageView!
    
    @IBOutlet weak var calSigns2: UIImageView!
    
    @IBOutlet weak var score: UIImageView!
    
    @IBOutlet weak var playNotice: UILabel!
    
    @IBOutlet weak var buttonLabel: UILabel!
    
    @IBOutlet weak var result: UIImageView!
    
    @IBOutlet weak var textInput: UITextField!
    
    var index = 0
    var answer1 = 0
    var answer2 = 0
    var playCount = 0
    var rightCount = 0
    var inputCounter = 0
    
    @IBOutlet weak var label: UIImageView!
    
    @IBOutlet weak var inputText: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        number1.image = UIImage(named: numbersArray1[index])
        number2.image = UIImage(named: numbersArray2[index])
        buttonLabel.text = "測驗開始"
        score.image = UIImage(named:"0")
        
    }
    

    @IBAction func startTest(_ sender: UIButton)
    {
        inputCounter += 1
        playNotice.text = "還有\(10-playCount)題"
        print("這是inputCounter\(inputCounter)")
        if inputCounter == 10
        {
            buttonLabel.text = "最後一題"
        }
        
        if inputCounter > 10
        {
            playCount = 0
            rightCount = 0
            inputCounter = 0
            number1.image = UIImage(named:"0")
            number2.image = UIImage(named:"0")
            score.image = UIImage(named:"0")
            result.image = nil
            inputText.text = nil
            buttonLabel.text = "測驗開始"
            playNotice.text = "還有\(10-playCount)題"
        }
       else
       {
           if inputCounter < 10
           {
               buttonLabel.text = "下一題"
           }
        inputText.text = nil
        
        let no1:Int = Int.random(in: 1...9)
        index = no1
        answer1 = no1
        number1.image = UIImage(named:numbersArray1[index])
        
        let no2:Int = Int.random(in: 1...9)
        index = no2
        answer2 = no2
        number2.image = UIImage(named:numbersArray2[index])
       
        }
    }
    
    @IBAction func input(_ sender: UITextField)
    {
        if index != 0
        {
            let inputNumber = Int(inputText.text!)

            let answer:Int = answer1 * answer2

            if inputNumber == answer
            {
                rightCount += 1
                result.image = UIImage(named: "對")
                switch rightCount
                {
                    case 0:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 1:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 2:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 3:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 4:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 5:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 6:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 7:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 8:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 9:
                    score.image = UIImage(named:scoreArray[rightCount])

                    case 10:
                    score.image = UIImage(named:scoreArray[rightCount])

                    default:
                    break
                }
            }
            else
            {
                result.image = UIImage(named: "錯")
            }
        }
    }
    
    @IBAction func confirmOnClick(_ sender: UIButton)
    {
        if index == 0
        {
            self.view.endEditing(true)
            playNotice.text = "請按測驗開始"
        }
        else
        {
            self.view.endEditing(true)
        playCount += 1
        print(playCount)
        switch playCount
        {
            case 1...9:
            playNotice.text = "還有\(10-playCount)題"
            
            case 10:
            playNotice.text = "作答結束"
            buttonLabel.text = "重新測驗"
            
                if inputCounter == 10
                {
                    if rightCount > 8
                    {
                        result.image = UIImage.animatedImageNamed("好棒-", duration: 1)
                    }
                    else
                    {
                        result.image = UIImage.animatedImageNamed("生氣-", duration: 1)
                    }
                }
            index = 0
            playCount = 0
            rightCount = 0
           
            default:
            break
        }
        }
    }
    
}
                
                
                
      

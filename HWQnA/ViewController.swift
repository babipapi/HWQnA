//
//  ViewController.swift
//  HWQnA
//
//  Created by Daniel on 2019/4/29.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    var questions = [Question]()
    
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let question1 = Question()
        question1.description = "哆啦A夢最愛吃的東西是？"
        question1.answer = "銅鑼燒"
        questions.append(question1)
        let question2 = Question()
        question2.description = "大雄對靜香的感情是……"
        question2.answer = "對靜香一心一意，從不變心，由一而終。"
        questions.append(question2)
        let question3 = Question()
        question3.description = "在大雄家，哆啦A夢晚上睡覺時，都睡在哪裡？"
        question3.answer = "大雄房間的櫥櫃裡。"
        questions.append(question3)
        let question4 = Question()
        question4.description = "大雄、靜香、胖虎、小夫、哆啦A夢，何者身高最矮？"
        question4.answer = "哆啦A夢"
        questions.append(question4)
        let question5 = Question()
        question5.description = "哆啦A夢口袋裡的道具是怎麼來的？"
        question5.answer = "從未來的商店買來或者租來的"
        questions.append(question5)
        let question6 = Question()
        question6.description = "哆啦A夢的身高是多少？"
        question6.answer = "129.3cm"
        questions.append(question6)
        let question7 = Question()
        question7.description = "哆啦A夢被使用最多的道具第一名是？"
        question7.answer = "竹蜻蜓"
        questions.append(question7)
        let question8 = Question()
        question8.description = "哆啦A夢是什麼星座？"
        question8.answer = "處女座"
        questions.append(question8)
        let question9 = Question()
        question9.description = "哆啦A夢為什麼那麼喜歡吃銅鑼燒？"
        question9.answer = "因為具有很大的紀念意義"
        questions.append(question9)
        let question10 = Question()
        question10.description = "哆啦A夢的開關在哪裡？"
        question10.answer = "尾巴"
        questions.append(question10)
        
        questionLabel.text = questions[index].description
        numberLabel.text = String(index + 1)
    }
    
    
    @IBAction func answer(_ sender: UIButton) {
        answerLabel.text = questions[index].answer
        
    }
    
    @IBAction func nextquestion(_ sender: UIButton) {
        index = index + 1
        if index == questions.count {
            index = 0
        }
        questionLabel.text = questions[index].description
        answerLabel.text = ""
        numberLabel.text = String(index + 1)
    }
    
}


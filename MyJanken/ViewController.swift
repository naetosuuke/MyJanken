//
//  ViewController.swift
//  MyJanken
//
//  Created by Daisuke Doi on 2022/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    //じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
       
        
        //新しいジャンケンの結果を一時的に格納する変数を設ける
        var newAnswerNumber = 0
        
        
        //　ランダムに結果を出すが、前回の結果と異なる場合のみ採用
        // repeatは繰り返しを意味する
        repeat {
            
            // 0,1,2の数値をランダムに算出(乱数)
            newAnswerNumber = Int.random(in: 0..<3)
            
            //前回と同じ結果の時は、再度ランダムに数値を出す
            //異なる結果の時は、repeatを抜ける
        } while answerNumber == newAnswerNumber
            
       //新しいジャンケンの検索結果を格納
        answerNumber = newAnswerNumber
        
                    
        if answerNumber == 0 {
            
            //グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
            
        } else if answerNumber == 1 {
            
            
            //チョキ
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
            
        } else if answerNumber == 2 {
            
            //パー
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
            
        }
        //次のジャンケンへ 変数ランダム化に際して不使用になった
        //answerNumber += 1
    
        
    }
}


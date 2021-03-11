//
//  ViewController.swift
//  qizu
//
//  Created by 岩佐力 on 2020/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
        //
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var yoyoy: UILabel!
    
    
    
    
      
        var collectAnswer = String()
        //
        override func viewDidLoad() {
            super.viewDidLoad()
            
        // 背景設定
            yoyoy.sizeToFit()
            
            let rotationTransform = CGAffineTransform(rotationAngle: -CGFloat.pi/6)
            let width = self.view.frame.width
            let height = self.view.frame.height
            self.view.backgroundColor = #colorLiteral(red: 0.859726996, green: 0.9061488018, blue: 0.4682430356, alpha: 1)

            let mediumturquoiseColorView = UIView()
            mediumturquoiseColorView.backgroundColor = #colorLiteral(red: 0.9061488018, green: 0.3368121562, blue: 0.4585037478, alpha: 1)
            mediumturquoiseColorView.frame.size = CGSize(width: 400, height: 400)
            mediumturquoiseColorView.center = CGPoint(x: 0, y: 0)
            mediumturquoiseColorView.layer.cornerRadius = 200
            self.view.addSubview(mediumturquoiseColorView)
            self.view.sendSubviewToBack(mediumturquoiseColorView)
            
            let cirelePlumColorView = UIView()
            cirelePlumColorView.backgroundColor =  #colorLiteral(red: 0.9061488018, green: 0.3368121562, blue: 0.4585037478, alpha: 1)
            cirelePlumColorView.frame.size = CGSize(width: 1000, height: 15)
            cirelePlumColorView.center = CGPoint(x: width-50, y: height-50)
            cirelePlumColorView.transform = rotationTransform
            self.view.addSubview(cirelePlumColorView)
            self.view.sendSubviewToBack(cirelePlumColorView)
            
            let cirelePlumColorView2 = UIView()
            cirelePlumColorView2.backgroundColor =  #colorLiteral(red: 0.9061488018, green: 0.3368121562, blue: 0.4585037478, alpha: 1)
            cirelePlumColorView2.frame.size = CGSize(width: 1000, height: 15)
            cirelePlumColorView2.center = CGPoint(x: width-80, y: height-80)
            cirelePlumColorView2.transform = rotationTransform
            self.view.addSubview(cirelePlumColorView2)
            self.view.sendSubviewToBack(cirelePlumColorView2)
                    
            let imagui = UIView()
            imagui.backgroundColor = #colorLiteral(red: 0.3201474639, green: 0.6640287564, blue: 0.9061488018, alpha: 1)
            imagui.frame.size = CGSize(width: 100, height: 100)
            imagui.center = CGPoint(x: 70, y: 70)
            imagui.layer.cornerRadius = 50
            self.view.addSubview(imagui)
            self.view.sendSubviewToBack(imagui)
            
            randomQuestion()
            
        }
        //
        // function//////////////////////
        // 問題をランダム表示するためのプログラム
        func randomQuestion(){
            var randomNumber = arc4random() % 3
            randomNumber += 1
            //
            switch(randomNumber){
            case 1:
                questionLabel.text = "鰈"
                button1.setTitle("エイ", for: UIControl.State.normal)
                button2.setTitle("カレイ", for: UIControl.State.normal)
                button3.setTitle("ヒラメ", for: UIControl.State.normal)
                collectAnswer = "2"
                break
            case 2:
                questionLabel.text = "鮪"
                button1.setTitle("マグロ", for: UIControl.State.normal)
                button2.setTitle("コイ", for: UIControl.State.normal)
                button3.setTitle("サバ", for: UIControl.State.normal)
                collectAnswer = "1"
                break
            case 3:
                questionLabel.text = "海豹"
                button1.setTitle("アザラシ", for: UIControl.State.normal)
                button2.setTitle("シャチ", for: UIControl.State.normal)
                button3.setTitle("イルカ", for: UIControl.State.normal)
                collectAnswer = "1"
                break
            default:
                break
            }
        }
        //
        // Button Action /////////////////////////////
        @IBAction func button1Action(_ sender: Any) {
            
        }
        @IBAction func button2Action(_ sender: Any) {
           
        }
        @IBAction func button3Action(_ sender: Any) {
           
        }
        @IBAction func Next(_ sender: Any) {
            randomQuestion()
        }
    }



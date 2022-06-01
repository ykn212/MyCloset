//
//  ViewController.swift
//  MyCloset
//
//  Created by 中村薫乃 on 2022/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    //ボタンの変数を準備
    @IBOutlet var tapButton1: UIButton!
    @IBOutlet var tapButton2: UIButton!
    
    @IBAction func tapButton1() {
        
        //CollectionViewControllerに画面移動する
        
    }
    
    @IBAction func tapButton2() {
        
        // TemperatureTableViewControllerに画面移動する
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        tapButton1.layer.cornerRadius = 75
        tapButton2.layer.cornerRadius = 75
        
    }


}


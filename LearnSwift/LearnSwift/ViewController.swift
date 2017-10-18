//
//  ViewController.swift
//  LearnSwift
//
//  Created by Ice on 2017/10/18.
//  Copyright © 2017年 Ice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myString = "Hello World 1222";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        print(myString);
        
        let a = 100000
        print(a)
        
        for x in 0...10{
            print("\(x) ",terminator:"")
        }
        
        print("\(myString)的地址")
        
        var ss:String?
        ss = "6789"
        print(ss!)
        
        if a == 3{
            print("12333\n \(a)")
        }else{
            print("oooo")
        }
        
        switch a {
        case 10:
            print("值 = 10")
            fallthrough
        case 100:
            print("值 = 100")
        case 1000:
            print("值 = 1000")
        default:
            print("值 = 10000")
        }
        
        let someInts:[Int] = [10,20,30]
        for x in someInts{
            print("数组: \(x)")
        }

        
        var index = 10
        while index < 20 {
            print("while:\(index)")
            index += 1
        }
        
        self.stringFunc()
        self.character()
        self.arrayFunc()
        self.dicFunc()
    }
    
    func stringFunc() {
        let str = ""
        if str.isEmpty{
            print("空字符串")
        }else{
            print(str);
        }
        
        var stra = "菜鸟"
        stra += "🐔"
        
        print(stra)
        
        let a = 100
        var strb = "\(stra)是最棒的\(a)分"
        print(strb)
    }
    
    func character(){
        for ch in "Runoob".characters{
            print(ch)
        }
    }
    
    func arrayFunc() {
        var someArr:[Int] = [10,100,100]
        someArr += [10000]
        someArr.append(10000000)
        
        let ints:[Int] = [2,22,222]
        
        let s = someArr + ints
        
        for (index,x) in s.enumerated(){
            print("index:\(index) value:\(x)")
        }
    }
    
    
    func dicFunc() {
        var dic:[Int:String] = [1:"1",2:"2",3:"3"]
        dic.updateValue("100", forKey: 1)
        dic.updateValue("99", forKey: 4)
        dic[1] = "888"
        
        for (key,value) in dic{
            print("字典 key:\(key) value:\(value)")
        }
        
        
        print("输出字典的键(key)")
        
        for (key) in dic.keys {
            print("\(key)")
        }
        
        print("输出字典的值(value)")
        
        for (value) in dic.values {
            print("\(value)")
        }
        
        print("移除前\(dic)");
        
        dic.removeValue(forKey: 1)
        print("移除后\(dic)");
        
        dic[2] = nil
        print("再次移除后\(dic)");
    }
    

}


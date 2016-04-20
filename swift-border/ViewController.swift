//
//  ViewController.swift
//  swift-border
//
//  Created by huanghy on 16/4/20.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "1")
        let imageView = UIImageView(image: image)
        
        imageView.frame = CGRectMake(24, 20, 100, 100)
        //        imageView.layer.borderWidth = 10
        //        imageView.layer.borderColor = UIColor.blueColor().CGColor
        
        //        imageView.layer.cornerRadius = 50
        //        imageView.layer.masksToBounds = true

        //设置图像视图层的阴影颜色为黑色
        imageView.layer.shadowColor = UIColor.blackColor().CGColor
        //设置图像视图层，阴影的横向和纵向偏移值
        imageView.layer.shadowOffset = CGSizeMake(30.0, 30.0)
        //设置图像视图层的阴影透明度
        imageView.layer.shadowOpacity = 0.45
        //设置图像视图层的阴影半径大小
        imageView.layer.shadowRadius = 5.0
        self.view.addSubview(imageView)
        
        
        let rect = CGRectMake(60, 200, 200, 200)
        let gradientView = UIView(frame: rect)
        
        //新建一个渐变层
        let gradientLayer = CAGradientLayer()
        //设置渐变层的位置和尺寸，与视图对象保持一致
        gradientLayer.frame = gradientView.frame
        //设置渐变的起始颜色为黄色
        let fromColor = UIColor.yellowColor().CGColor
        //设置渐变的中间颜色为红色
        let midColor = UIColor.redColor().CGColor
        //设置渐变的结束颜色为紫色
        let toColor = UIColor.purpleColor().CGColor
        //将渐变层的颜色数组属性，设置为由三个颜色构建的数组
        gradientLayer.colors = [fromColor,midColor,toColor]
        //将配置好的渐变层，添加到视图对象的层中
        view.layer.addSublayer(gradientLayer)
        self.view.addSubview(gradientView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


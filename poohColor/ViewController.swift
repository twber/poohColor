//
//  ViewController.swift
//  changeColor
//
//  Created by Bernice TSAI on 2020/8/18.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var gradientView: UIImageView!
    @IBOutlet weak var poohImageView: UIImageView!
    @IBOutlet weak var patternImageView: UIImageView!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var sliderRedDown: UISlider!
    @IBOutlet weak var sliderGreenDown: UISlider!
    @IBOutlet weak var sliderBlueDown: UISlider!
    @IBOutlet weak var sliderAlphaDown: UISlider!
    
    @IBOutlet weak var borderSlider: UISlider!
    
    let gradientLayer = CAGradientLayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorChangeSlider(_ sender: Any) {
        gradientLayer.frame = gradientView.bounds
        //讓所有控制顏色的 Slider 數值填入對應位置
        gradientLayer.colors = [CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)),CGColor(red: CGFloat(sliderRedDown.value), green: CGFloat(sliderGreenDown.value), blue: CGFloat(sliderBlueDown.value), alpha: CGFloat(sliderAlphaDown.value))]
        //gradientMiddleSlider只有調整中間區塊，數值放在中間位置
        gradientLayer.locations = [0.5, NSNumber(value: borderSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
        
        gradientView.bounds = poohImageView.frame
        gradientView.addSubview(poohImageView)
        colorLabel.text = "無庫存"
        
        //poohImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func randomChange(_ sender: Any) {
        //定義亂數
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        //alphaSlider.value = Float.random(in: 0.5...1)
        sliderRedDown.value = Float.random(in: 0...1)
        sliderGreenDown.value = Float.random(in: 0...1)
        sliderBlueDown.value = Float.random(in: 0...1)
        //sliderAlphaDown.value = Float.random(in: 0.5...1)
        borderSlider.value = Float.random(in: 0.5...1)
        
        //以下與colorChangeSlider 同
        gradientLayer.frame = gradientView.bounds
        //讓所有控制顏色的 Slider 數值填入對應位置
        gradientLayer.colors = [CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)),CGColor(red: CGFloat(sliderRedDown.value), green: CGFloat(sliderGreenDown.value), blue: CGFloat(sliderBlueDown.value), alpha: CGFloat(sliderAlphaDown.value))]
        //gradientMiddleSlider只有調整中間區塊，數值放在中間位置
        gradientLayer.locations = [0.5, NSNumber(value: borderSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
        gradientView.bounds = poohImageView.frame
        gradientView.addSubview(poohImageView)
        colorLabel.text = "無庫存"
        
        //poohImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
    @IBAction func redButton(_ sender: UIButton) {
        sliderRedDown.value = 255/255
        sliderGreenDown.value = 192/255
        sliderBlueDown.value = 203/255
        sliderAlphaDown.value = 1
        borderSlider.value = 0
        //以下與colorChangeSlider 同
        gradientLayer.frame = gradientView.bounds
        //讓所有控制顏色的 Slider 數值填入對應位置
        gradientLayer.colors = [CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)),CGColor(red: CGFloat(sliderRedDown.value), green: CGFloat(sliderGreenDown.value), blue: CGFloat(sliderBlueDown.value), alpha: CGFloat(sliderAlphaDown.value))]
        //gradientMiddleSlider只有調整中間區塊，數值放在中間位置
        gradientLayer.locations = [0.5, NSNumber(value: borderSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
        gradientView.bounds = poohImageView.frame
        gradientView.addSubview(poohImageView)
        colorLabel.text = "時中粉"
    }
    
    @IBAction func tealButton(_ sender: UIButton) {
        sliderRedDown.value = 175/255
        sliderGreenDown.value = 238/255
        sliderBlueDown.value = 238/255
        sliderAlphaDown.value = 1
        borderSlider.value = 0
        //以下與colorChangeSlider 同
        gradientLayer.frame = gradientView.bounds
        //讓所有控制顏色的 Slider 數值填入對應位置
        gradientLayer.colors = [CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)),CGColor(red: CGFloat(sliderRedDown.value), green: CGFloat(sliderGreenDown.value), blue: CGFloat(sliderBlueDown.value), alpha: CGFloat(sliderAlphaDown.value))]
        //gradientMiddleSlider只有調整中間區塊，數值放在中間位置
        gradientLayer.locations = [0.5, NSNumber(value: borderSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
        gradientView.bounds = poohImageView.frame
        gradientView.addSubview(poohImageView)
        colorLabel.text = "經典藍"
    }
    @IBAction func chinaButton(_ sender: UIButton) {
        sliderAlphaDown.value = 0
        sliderRedDown.value = 1
        sliderGreenDown.value = 1
        sliderBlueDown.value = 1
        borderSlider.value = 0
        //以下與colorChangeSlider 同
        gradientLayer.frame = gradientView.bounds
        //讓所有控制顏色的 Slider 數值填入對應位置
        gradientLayer.colors = [CGColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value)),CGColor(red: CGFloat(sliderRedDown.value), green: CGFloat(sliderGreenDown.value), blue: CGFloat(sliderBlueDown.value), alpha: CGFloat(sliderAlphaDown.value))]
        //gradientMiddleSlider只有調整中間區塊，數值放在中間位置
        gradientLayer.locations = [0.5, NSNumber(value: borderSlider.value) , 1]
        gradientView.layer.addSublayer(gradientLayer)
        gradientView.bounds = poohImageView.frame
        gradientView.addSubview(poohImageView)
        colorLabel.text = "青花瓷\n限量發售"
    }
}


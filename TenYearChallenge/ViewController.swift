//
//  ViewController.swift
//  TenYearChallenge
//
//  Created by 翁燮羽 on 2020/12/15.
import UIKit
class ViewController: UIViewController {
    //圖片
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    //顏色slider
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    //功能slider
    @IBOutlet weak var alphaSlider: UISlider! //透明度slider
    @IBOutlet weak var radiusSlider: UISlider! //圓角slider
    
    //顯示slider的數值lable
    @IBOutlet weak var redLable: UILabel! //紅lable
    @IBOutlet weak var greenLable: UILabel! //綠lable
    @IBOutlet weak var blueLable: UILabel! //藍lable
    @IBOutlet weak var alphaLable: UILabel! //透明度lable
    @IBOutlet weak var radiusLable: UILabel! //圓角lable
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    //slider控制畫面顏色、透明度
    @IBAction func changeImageView(_ sender: Any) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        //slider顯示數值
        redLable.text = String(format: "紅色%.2f", redSlider.value)
        greenLable.text = String(format: "綠色%.2f", greenSlider.value)
        blueLable.text = String(format: "藍色%.2f", blueSlider.value)
        alphaLable.text = String(format: "透明度%.1f", alphaSlider.value)
        radiusLable.text = String(format: "圓角%.1f", radiusSlider.value)
        
    }
    //控制圓角slider
    @IBAction func changeRadiusSlider(_ sender: Any) {
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = CGFloat(radiusSlider.value)
    }
    
    //隨機調整（需要加入會更改到的圖片、lable值）
    @IBAction func randomButton(_ sender: Any) {
        redSlider.value = Float.random(in: 0...10)
        greenSlider.value = Float.random(in: 0...10)
        blueSlider.value = Float.random(in: 0...10)
        alphaSlider.value = Float.random(in: 0...1)
        radiusSlider.value = Float.random(in: 0...150)
        imageView.layer.cornerRadius = CGFloat(radiusSlider.value)
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLable.text = String(format: "紅色%.2f", redSlider.value)
        greenLable.text = String(format: "綠色%.2f", greenSlider.value)
        blueLable.text = String(format: "藍色%.2f", blueSlider.value)
        alphaLable.text = String(format: "透明度%.1f", alphaSlider.value)
        radiusLable.text = String(format: "圓角%.1f", radiusSlider.value)
    }
    
    
    }
    



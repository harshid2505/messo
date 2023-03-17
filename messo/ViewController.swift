//
//  ViewController.swift
//  messo
//
//  Created by HARSHID PATEL on 25/01/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var stepperLb: UILabel!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var priceLb: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stepperLb.layer.borderWidth = 2
        stepperLb.layer.cornerRadius = 5
        stepperLb.layer.borderColor = UIColor.gray.cgColor
        stepperLb.layer.masksToBounds = true
        stepper.value = 1
        stepper.maximumValue = 10
        stepper.minimumValue = 1
        stepperLb.text = Int(stepper.value).description
        setAddButton()
        setBuyNowButton()
    }

    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0{
            img.image = UIImage(named: "black")
        }
        else if segment.selectedSegmentIndex == 1{
            img.image = UIImage(named: "green")
        }
        else if segment.selectedSegmentIndex == 2{
            img.image = UIImage(named: "yellow")
        }
        else if segment.selectedSegmentIndex == 3{
            img.image = UIImage(named: "orange")
        }
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperLb.text = Int(stepper.value).description
        priceLb.text = ("\(399 * Int(Int(stepper.value).description)!)")
    }
    
    func setAddButton(){
        addToCartButton.layer.borderWidth = 2
        addToCartButton.layer.borderColor = UIColor.black.cgColor
        addToCartButton.layer.cornerRadius = 5
        addToCartButton.layer.backgroundColor = UIColor.white.cgColor
        addToCartButton.layer.masksToBounds = true
    }
    
    func setBuyNowButton(){
        buyNowButton.layer.cornerRadius = 5
        buyNowButton.layer.masksToBounds = true
    }
}


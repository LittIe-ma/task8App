//
//  RedViewController.swift
//  task8App
//
//  Created by yasudamasato on 2021/04/08.
//

import UIKit 

class RedViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    private var appDelegate: AppDelegate {
        UIApplication.shared.delegate as! AppDelegate
    }

    private var value: Float {
        get {
            appDelegate.number
        }
        set {
            appDelegate.number = newValue
        }
    }

    @IBAction func changeSlider(_ sender: Any) {

        value = slider.value

        label.text = "\(value)"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        label.text = "\(value)"

        slider.value = value
    }
}

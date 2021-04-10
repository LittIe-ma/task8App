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

    @IBAction func changeSlider(_ sender: Any) {

        let delegate = UIApplication.shared.delegate as! AppDelegate

        delegate.number = slider.value

        label.text = "\(delegate.number)"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let delegate = UIApplication.shared.delegate as! AppDelegate

        label.text = "\(delegate.number)"

        slider.value = delegate.number
    }
}

//
//  ViewController.swift
//  transiciones
//
//  Created by Maestro on 29/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func doSwipDownContenedor(_ sender: Any) {
        UIView.transition(with: vwContenedorNumero, duration: 0.5, options: [.transitionCurlDown], animations: {
            self.contador -= 1
            self.lblNumero.text = String(self.contador)
        }, completion: nil)
    }
    
    @IBAction func doSwipUpContenedor(_ sender: Any) {
        UIView.transition(with: vwContenedorNumero, duration: 0.5, options: [.transitionCurlUp], animations: {
            self.contador += 1
            self.lblNumero.text = String(self.contador)
        }, completion: nil)
    }
    @IBOutlet weak var vwContenedorNumero: UIView!
    @IBOutlet weak var lblNumero: UILabel!
    var contador = 0
    @IBAction func doTapTransicion(_ sender: Any) {
        
        UIView.transition(with: vwContenedorNumero, duration: 0.5, options: [.transitionCurlUp], animations: {
            self.contador += 1
            self.lblNumero.text = String(self.contador)
        }, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


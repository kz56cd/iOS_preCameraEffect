//
//  ViewController.swift
//  PreCameraEffect
//
//  Created by sano on 2018/01/12.
//  Copyright © 2018年 sano. All rights reserved.
//

import UIKit
import Sharaku

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard let image = UIImage(named: "sample") else {
            return
        }
        let vc = SHViewController(image: image)
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: SHViewControllerDelegate {
    func shViewControllerImageDidFilter(image: UIImage) {
        // stub
    }
    
    func shViewControllerDidCancel() {
        // stub
    }
}




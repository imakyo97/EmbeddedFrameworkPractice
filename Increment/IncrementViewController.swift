//
//  IncrementViewController.swift
//  Increment
//
//  Created by 今村京平 on 2024/04/04.
//

import UIKit

public class IncrementViewController: UIViewController {
    
    private var count = 0

    @IBOutlet private weak var countLabel: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(count)
    }
    
    @IBAction private func didTapPlusButton(_ sender: UIButton) {
        increment()
    }
    
    private func increment() {
        count += 1
        countLabel.text = String(count)
    }
    
}

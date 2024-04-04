//
//  ViewController.swift
//  EmbeddedFrameworkPractice
//
//

import UIKit
import Increment

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Main.stroyboardに上書きする場合
        // let incrementViewController = initialIncrementViewController()
        // self.addChild(incrementViewController)
        // self.view.addSubview(incrementViewController.view)
        // incrementViewController.didMove(toParent: self)
    }
    
    private func initialIncrementViewController() -> IncrementViewController {
        let bundle = Bundle(for: IncrementViewController.self)
        let storyboard = UIStoryboard(name: "Increment", bundle: bundle)
        let viewController = storyboard.instantiateInitialViewController() as! IncrementViewController
        return viewController
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        self.navigationController?.pushViewController(initialIncrementViewController(), animated: true)
    }
    
}

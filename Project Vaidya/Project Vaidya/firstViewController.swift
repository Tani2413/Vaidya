//
//  firstViewController.swift
//  Project Vaidya
//
//  Created by admin82 on 23/02/25.
//

import Foundation
import UIKit

class firstViewController: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Your code here
    }
    func setupUI() {
            // Round the corners of the "Get Started" button
            getStartedButton.layer.cornerRadius = 10 // Adjust the radius as needed
            getStartedButton.clipsToBounds = true

            // Apply gradient to the "Get Started" button
            applyGradient(to: getStartedButton)
        }

    func applyGradient(to view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 55/255.0, green: 0/255.0, blue: 81/255.0, alpha: 1.0).cgColor, // 370051
            UIColor(red: 240/255.0, green: 101/255.0, blue: 101/255.0, alpha: 1.0).cgColor  // F06565
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

        @IBAction func getStartedButtonTapped(_ sender: UIButton) {
            let signInVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SignInViewController") as! SignInViewController
                signInVC.modalPresentationStyle = .popover
                self.present(signInVC, animated: true, completion: nil)
            print("Get Started button tapped!")
        }
}

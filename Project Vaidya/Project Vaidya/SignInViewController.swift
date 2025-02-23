//
//  SignInViewController.swift
//  Project Vaidya
//
//  Created by admin82 on 23/02/25.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        // Round the corners of the "Sign in" button
        signInButton.layer.cornerRadius = 10
        signInButton.clipsToBounds = true

        // Apply gradient to the "Sign in" button
        applyGradient(to: signInButton)
    }

    func applyGradient(to view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 55/255.0, green: 0/255.0, blue: 81/255.0, alpha: 1.0).cgColor,
            UIColor(red: 240/255.0, green: 101/255.0, blue: 101/255.0, alpha: 1.0).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    @IBAction func signInButtonTapped(_ sender: UIButton) {
        // Handle sign-in logic
        print("Sign in button tapped!")
        // You can add your authentication code here
    }

    @IBAction func microsoftSignInTapped(_ sender: UIButton) {
        print("Microsoft Sign in tapped!")
    }

    @IBAction func googleSignInTapped(_ sender: UIButton) {
        print("Google Sign in tapped!")
    }


    @IBAction func forgotPasswordTapped(_ sender: UIButton) {
        print("Forgot password tapped!")
    }

    @IBAction func signUpTapped(_ sender: UIButton) {
        print("Sign up tapped!")
    }
}

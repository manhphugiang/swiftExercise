
import UIKit

class Signup: UIViewController {
    private let recipeRallyLabel: UILabel = {
        let label = UILabel()
        label.text = "RecipeRally"
        label.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let signUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign Up"
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let instructionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Please sign up to your register your account."
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(white: 0.4, alpha: 1)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let firstNameField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "First Name"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemPurple.cgColor
        textField.layer.cornerRadius = 10
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftView = leftPadding
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let lastNameField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Last Name"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemPurple.cgColor
        textField.layer.cornerRadius = 10
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftView = leftPadding
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let emailField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemPurple.cgColor
        textField.layer.cornerRadius = 10
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftView = leftPadding
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let passwordField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemPurple.cgColor
        textField.layer.cornerRadius = 10
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftView = leftPadding
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let eyeButton: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "eye")?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = .systemPurple
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("CREATE ACCOUNT", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemPurple
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let orLabel: UILabel = {
        let label = UILabel()
        label.text = "Or sign in with"
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let googleButton: UIButton = {
        let button = UIButton(type: .system)
        let googleImage = UIImage(named: "google_logo")?.withRenderingMode(.alwaysOriginal)
        button.setImage(googleImage, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.imageView?.contentMode = .scaleAspectFit
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let facebookButton: UIButton = {
        let button = UIButton(type: .system)
        let facebookImage = UIImage(named: "facebook_logo")?.withRenderingMode(.alwaysOriginal)
        button.setImage(facebookImage, for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 20
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.imageView?.contentMode = .scaleAspectFit
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOGIN", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.8)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(recipeRallyLabel)
        view.addSubview(signUpLabel)
        view.addSubview(instructionsLabel)
        view.addSubview(firstNameField)
        view.addSubview(lastNameField)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(eyeButton)
        view.addSubview(createAccountButton)
        view.addSubview(orLabel)
        view.addSubview(googleButton)
        view.addSubview(facebookButton)
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            recipeRallyLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            recipeRallyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpLabel.topAnchor.constraint(equalTo: recipeRallyLabel.bottomAnchor, constant: 40),
            signUpLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            instructionsLabel.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 8),
            instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            instructionsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            firstNameField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 24),
            firstNameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            firstNameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            firstNameField.heightAnchor.constraint(equalToConstant: 48),
            lastNameField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 16),
            lastNameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            lastNameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            lastNameField.heightAnchor.constraint(equalToConstant: 48),
            emailField.topAnchor.constraint(equalTo: lastNameField.bottomAnchor, constant: 16),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailField.heightAnchor.constraint(equalToConstant: 48),
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 16),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            passwordField.heightAnchor.constraint(equalToConstant: 48),
            eyeButton.centerYAnchor.constraint(equalTo: passwordField.centerYAnchor),
            eyeButton.leadingAnchor.constraint(equalTo: passwordField.trailingAnchor, constant: 4),
            eyeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            eyeButton.widthAnchor.constraint(equalToConstant: 32),
            eyeButton.heightAnchor.constraint(equalToConstant: 32),
            createAccountButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 30),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50),
            orLabel.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 24),
            orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            googleButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 16),
            googleButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
            googleButton.widthAnchor.constraint(equalToConstant: 40),
            googleButton.heightAnchor.constraint(equalToConstant: 40),
            facebookButton.topAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 16),
            facebookButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
            facebookButton.widthAnchor.constraint(equalToConstant: 40),
            facebookButton.heightAnchor.constraint(equalToConstant: 40),
            loginButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 40),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        createAccountButton.addTarget(self, action: #selector(createAccountTapped), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
    @objc private func createAccountTapped() {
        let homeVC = HomePage()
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true)
    }
    @objc private func loginTapped() {
        let loginVC = Login()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true)
    }
}

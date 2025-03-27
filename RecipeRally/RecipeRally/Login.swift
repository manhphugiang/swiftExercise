
import UIKit

class Login: UIViewController {
    private let recipeRallyLabel: UILabel = {
        let label = UILabel()
        label.text = "RecipeRally"
        label.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let signInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sign In"
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let instructionsLabel: UILabel = {
        let label = UILabel()
        label.text = "Please sign in to your registered account"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(white: 0.4, alpha: 1)
        label.numberOfLines = 2
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let usernameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "hanrykanwi"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemPurple.cgColor
        textField.layer.cornerRadius = 10
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftView = leftPaddingView
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.textColor = .black
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.systemPurple.cgColor
        textField.layer.cornerRadius = 10
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftView = leftPaddingView
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    private let passwordEyeButton: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "eye")?.withRenderingMode(.alwaysTemplate)
        button.setImage(image, for: .normal)
        button.tintColor = .systemPurple
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOGIN", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemPurple
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Forgot your password? ", attributes: [.foregroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 14)])
        attributedTitle.append(NSAttributedString(string: "Reset here", attributes: [.foregroundColor: UIColor.systemPurple, .font: UIFont.systemFont(ofSize: 14, weight: .medium)]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let orSignInLabel: UILabel = {
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
    private let createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("CREATE ACCOUNT", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.8)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(recipeRallyLabel)
        view.addSubview(signInLabel)
        view.addSubview(instructionsLabel)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(passwordEyeButton)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(orSignInLabel)
        view.addSubview(googleButton)
        view.addSubview(facebookButton)
        view.addSubview(createAccountButton)
        NSLayoutConstraint.activate([
            recipeRallyLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            recipeRallyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signInLabel.topAnchor.constraint(equalTo: recipeRallyLabel.bottomAnchor, constant: 40),
            signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            instructionsLabel.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 8),
            instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            instructionsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 24),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 48),
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48),
            passwordEyeButton.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor),
            passwordEyeButton.leadingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: 4),
            passwordEyeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordEyeButton.widthAnchor.constraint(equalToConstant: 32),
            passwordEyeButton.heightAnchor.constraint(equalToConstant: 32),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 8),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orSignInLabel.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 24),
            orSignInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            googleButton.topAnchor.constraint(equalTo: orSignInLabel.bottomAnchor, constant: 16),
            googleButton.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
            googleButton.widthAnchor.constraint(equalToConstant: 40),
            googleButton.heightAnchor.constraint(equalToConstant: 40),
            facebookButton.topAnchor.constraint(equalTo: orSignInLabel.bottomAnchor, constant: 16),
            facebookButton.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
            facebookButton.widthAnchor.constraint(equalToConstant: 40),
            facebookButton.heightAnchor.constraint(equalToConstant: 40),
            createAccountButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 40),
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        createAccountButton.addTarget(self, action: #selector(createAccountButtonTapped), for: .touchUpInside)
    }
    @objc private func loginButtonTapped() {
        let homeVC = HomePage()
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true)
    }
    @objc private func createAccountButtonTapped() {
        let signupVC = Signup()
        signupVC.modalPresentationStyle = .fullScreen
        present(signupVC, animated: true)
    }
    }


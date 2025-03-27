
import UIKit

class Setting: UIViewController {
    let containerView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let settingImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "group13")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = false
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    let accountButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let privacyButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let termsButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let cookiesButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let contactButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let logoutButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .clear
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let navBarContainer: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    let navBarImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "navBar")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    let navBarStack: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    let homeButton = UIButton(type: .system)
    let featureChefButton = UIButton(type: .system)
    let cuisineButton = UIButton(type: .system)
    let settingsButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        view.addSubview(containerView)
        containerView.addSubview(settingImageView)
        containerView.addSubview(accountButton)
        containerView.addSubview(privacyButton)
        containerView.addSubview(termsButton)
        containerView.addSubview(cookiesButton)
        containerView.addSubview(contactButton)
        containerView.addSubview(logoutButton)
        view.addSubview(navBarContainer)
        navBarContainer.addSubview(navBarImageView)
        navBarContainer.addSubview(navBarStack)
        navBarStack.addArrangedSubview(homeButton)
        navBarStack.addArrangedSubview(featureChefButton)
        navBarStack.addArrangedSubview(cuisineButton)
        navBarStack.addArrangedSubview(settingsButton)
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -10),
            containerView.widthAnchor.constraint(equalToConstant: 350),
            containerView.heightAnchor.constraint(equalToConstant: 550),
            settingImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            settingImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            settingImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            settingImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            accountButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 100),
            accountButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            accountButton.widthAnchor.constraint(equalToConstant: 200),
            accountButton.heightAnchor.constraint(equalToConstant: 40),
            privacyButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 170),
            privacyButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            privacyButton.widthAnchor.constraint(equalToConstant: 200),
            privacyButton.heightAnchor.constraint(equalToConstant: 40),
            termsButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 240),
            termsButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            termsButton.widthAnchor.constraint(equalToConstant: 200),
            termsButton.heightAnchor.constraint(equalToConstant: 40),
            cookiesButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 320),
            cookiesButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            cookiesButton.widthAnchor.constraint(equalToConstant: 200),
            cookiesButton.heightAnchor.constraint(equalToConstant: 40),
            contactButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 390),
            contactButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            contactButton.widthAnchor.constraint(equalToConstant: 200),
            contactButton.heightAnchor.constraint(equalToConstant: 40),
            logoutButton.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 460),
            logoutButton.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            logoutButton.widthAnchor.constraint(equalToConstant: 200),
            logoutButton.heightAnchor.constraint(equalToConstant: 40),
            navBarContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBarContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBarContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            navBarContainer.heightAnchor.constraint(equalToConstant: 80),
            navBarImageView.topAnchor.constraint(equalTo: navBarContainer.topAnchor),
            navBarImageView.bottomAnchor.constraint(equalTo: navBarContainer.bottomAnchor),
            navBarImageView.leadingAnchor.constraint(equalTo: navBarContainer.leadingAnchor),
            navBarImageView.trailingAnchor.constraint(equalTo: navBarContainer.trailingAnchor),
            navBarStack.topAnchor.constraint(equalTo: navBarContainer.topAnchor),
            navBarStack.bottomAnchor.constraint(equalTo: navBarContainer.bottomAnchor),
            navBarStack.leadingAnchor.constraint(equalTo: navBarContainer.leadingAnchor),
            navBarStack.trailingAnchor.constraint(equalTo: navBarContainer.trailingAnchor)
        ])
        
        containerView.bringSubviewToFront(accountButton)
        containerView.bringSubviewToFront(privacyButton)
        containerView.bringSubviewToFront(termsButton)
        containerView.bringSubviewToFront(cookiesButton)
        containerView.bringSubviewToFront(contactButton)
        containerView.bringSubviewToFront(logoutButton)
        
        accountButton.addTarget(self, action: #selector(accountTapped), for: .touchUpInside)
        privacyButton.addTarget(self, action: #selector(privacyTapped), for: .touchUpInside)
        termsButton.addTarget(self, action: #selector(termsTapped), for: .touchUpInside)
        cookiesButton.addTarget(self, action: #selector(cookiesTapped), for: .touchUpInside)
        contactButton.addTarget(self, action: #selector(contactTapped), for: .touchUpInside)
        logoutButton.addTarget(self, action: #selector(logoutTapped), for: .touchUpInside)
        
        homeButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        featureChefButton.addTarget(self, action: #selector(featureChefTapped), for: .touchUpInside)
        cuisineButton.addTarget(self, action: #selector(cuisineTapped), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(settingsTapped), for: .touchUpInside)
    }
    
    @objc func homeTapped() {
        let homeVC = HomePage()
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true)
    }
    @objc func featureChefTapped() {
        let chefsVC = Chefs()
        chefsVC.modalPresentationStyle = .fullScreen
        present(chefsVC, animated: true)
    }
    @objc func cuisineTapped() {
        let cuisineVC = Cuisine()
        cuisineVC.modalPresentationStyle = .fullScreen
        present(cuisineVC, animated: true)
    }
    @objc func settingsTapped() {
        let settingVC = Setting()
        settingVC.modalPresentationStyle = .fullScreen
        present(settingVC, animated: true)
    }
    @objc func accountTapped() {
        let accountVC = Account()
        accountVC.modalPresentationStyle = .fullScreen
        present(accountVC, animated: true)
    }
    @objc func privacyTapped() {
        let privacyVC = Privacy()
        privacyVC.modalPresentationStyle = .fullScreen
        present(privacyVC, animated: true)
    }
    @objc func termsTapped() {
        let termsVC = Terms()
        termsVC.modalPresentationStyle = .fullScreen
        present(termsVC, animated: true)
    }
    @objc func cookiesTapped() {
        let cookiesVC = Cookies()
        cookiesVC.modalPresentationStyle = .fullScreen
        present(cookiesVC, animated: true)
    }
    @objc func contactTapped() {
        let contactVC = Contact()
        contactVC.modalPresentationStyle = .fullScreen
        present(contactVC, animated: true)
    }
    @objc func logoutTapped() {
        let loginVC = Login()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true)
    }
}

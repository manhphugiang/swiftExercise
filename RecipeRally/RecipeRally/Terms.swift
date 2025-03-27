
import UIKit

class Terms: UIViewController {
    private let termsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "group9")
        imageView.contentMode = .top
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let questionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Questions? Contact Us.", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = .clear
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private let navBarContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let navBarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "navBar")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let navBarStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 0
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    private let homeButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    private let featureChefButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    private let cuisineButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    private let settingsButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(termsImageView)
        view.addSubview(questionButton)
        view.addSubview(navBarContainer)
        navBarContainer.addSubview(navBarImageView)
        navBarContainer.addSubview(navBarStack)
        navBarStack.addArrangedSubview(homeButton)
        navBarStack.addArrangedSubview(featureChefButton)
        navBarStack.addArrangedSubview(cuisineButton)
        navBarStack.addArrangedSubview(settingsButton)
        NSLayoutConstraint.activate([
            termsImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            termsImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            termsImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            termsImageView.bottomAnchor.constraint(equalTo: questionButton.topAnchor, constant: -10),
            questionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionButton.bottomAnchor.constraint(equalTo: navBarContainer.topAnchor, constant: -10),
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
        homeButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        featureChefButton.addTarget(self, action: #selector(featureChefTapped), for: .touchUpInside)
        cuisineButton.addTarget(self, action: #selector(cuisineTapped), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(settingsTapped), for: .touchUpInside)
        questionButton.addTarget(self, action: #selector(questionTapped), for: .touchUpInside)
    }
    @objc private func homeTapped() {
        let homeVC = HomePage()
        homeVC.modalPresentationStyle = .fullScreen
        present(homeVC, animated: true)
    }
    @objc private func featureChefTapped() {
        let chefsVC = Chefs()
        chefsVC.modalPresentationStyle = .fullScreen
        present(chefsVC, animated: true)
    }
    @objc private func cuisineTapped() {
        let cuisineVC = Cuisine()
        cuisineVC.modalPresentationStyle = .fullScreen
        present(cuisineVC, animated: true)
    }
    @objc private func settingsTapped() {
        let settingVC = Setting()
        settingVC.modalPresentationStyle = .fullScreen
        present(settingVC, animated: true)
    }
    @objc private func questionTapped() {
        let contactVC = Contact()
        contactVC.modalPresentationStyle = .fullScreen
        present(contactVC, animated: true)
    }
}

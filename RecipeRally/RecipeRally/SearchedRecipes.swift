
import UIKit

class SearchedRecipes: UIViewController {
    private let searchedImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "group5")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private let firstDishButton: UIButton = {
        let button = UIButton(type: .system)
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
        button.backgroundColor = .clear
        return button
    }()
    private let featureChefButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        return button
    }()
    private let cuisineButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        return button
    }()
    private let settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(searchedImageView)
        view.addSubview(firstDishButton)
        view.addSubview(navBarContainer)
        navBarContainer.addSubview(navBarImageView)
        navBarContainer.addSubview(navBarStack)
        navBarStack.addArrangedSubview(homeButton)
        navBarStack.addArrangedSubview(featureChefButton)
        navBarStack.addArrangedSubview(cuisineButton)
        navBarStack.addArrangedSubview(settingsButton)
        NSLayoutConstraint.activate([
            searchedImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchedImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchedImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchedImageView.bottomAnchor.constraint(equalTo: navBarContainer.topAnchor),
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
            navBarStack.trailingAnchor.constraint(equalTo: navBarContainer.trailingAnchor),
            firstDishButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 230),
            firstDishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            firstDishButton.widthAnchor.constraint(equalToConstant: 160),
            firstDishButton.heightAnchor.constraint(equalToConstant: 160)
        ])
        homeButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        featureChefButton.addTarget(self, action: #selector(featureChefTapped), for: .touchUpInside)
        cuisineButton.addTarget(self, action: #selector(cuisineTapped), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(settingsTapped), for: .touchUpInside)
        firstDishButton.addTarget(self, action: #selector(dishTapped), for: .touchUpInside)
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
    @objc private func dishTapped() {
        let recipeVC = Recipe()
        recipeVC.modalPresentationStyle = .fullScreen
        present(recipeVC, animated: true)
    }
}

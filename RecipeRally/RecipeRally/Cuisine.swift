
import UIKit

class Cuisine: UIViewController {
    let cuisineImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "group14")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    let medButton: UIButton = {
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
        view.addSubview(cuisineImageView)
        view.addSubview(medButton)
        view.addSubview(navBarContainer)
        navBarContainer.addSubview(navBarImageView)
        navBarContainer.addSubview(navBarStack)
        navBarStack.addArrangedSubview(homeButton)
        navBarStack.addArrangedSubview(featureChefButton)
        navBarStack.addArrangedSubview(cuisineButton)
        navBarStack.addArrangedSubview(settingsButton)
        
        NSLayoutConstraint.activate([
            cuisineImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            cuisineImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cuisineImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBarContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBarContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            navBarContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            navBarContainer.heightAnchor.constraint(equalToConstant: 80),
            cuisineImageView.bottomAnchor.constraint(equalTo: navBarContainer.topAnchor),
            navBarImageView.topAnchor.constraint(equalTo: navBarContainer.topAnchor),
            navBarImageView.bottomAnchor.constraint(equalTo: navBarContainer.bottomAnchor),
            navBarImageView.leadingAnchor.constraint(equalTo: navBarContainer.leadingAnchor),
            navBarImageView.trailingAnchor.constraint(equalTo: navBarContainer.trailingAnchor),
            navBarStack.topAnchor.constraint(equalTo: navBarContainer.topAnchor),
            navBarStack.bottomAnchor.constraint(equalTo: navBarContainer.bottomAnchor),
            navBarStack.leadingAnchor.constraint(equalTo: navBarContainer.leadingAnchor),
            navBarStack.trailingAnchor.constraint(equalTo: navBarContainer.trailingAnchor),
            medButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            medButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            medButton.widthAnchor.constraint(equalToConstant: 150),
            medButton.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        homeButton.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        featureChefButton.addTarget(self, action: #selector(featureChefTapped), for: .touchUpInside)
        cuisineButton.addTarget(self, action: #selector(cuisineTapped), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(settingsTapped), for: .touchUpInside)
        medButton.addTarget(self, action: #selector(meditTapped), for: .touchUpInside)
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
    @objc func meditTapped() {
        let meditVC = Medit()
        meditVC.modalPresentationStyle = .fullScreen
        present(meditVC, animated: true)
    }
}

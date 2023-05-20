//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Tami on 20.05.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setUpTabs()
    }
    
    private func setUpTabs(){
        let locationVC = LocationViewController()
        let characterVC = CharacterViewController()
        let episodeVC = EpisodeViewController()
        let settingsVC = SettingsViewController()
        
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navigation1 = UINavigationController(rootViewController: characterVC)
        let navigation2 = UINavigationController(rootViewController: locationVC)
        let navigation3 = UINavigationController(rootViewController: episodeVC)
        let navigation4 = UINavigationController(rootViewController: settingsVC)
        
        for nav in [navigation4,navigation3,navigation2,navigation1]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        navigation1.tabBarItem = UITabBarItem(title: "Characters",
                                              image: UIImage(systemName: "figure.stand"),
                                              tag: 1)
        navigation2.tabBarItem = UITabBarItem(title: "Locations",
                                              image: UIImage(systemName: "location.viewfinder"),
                                              tag: 2)
        navigation3.tabBarItem = UITabBarItem(title: "Episodes",
                                              image: UIImage(systemName: "display"),
                                              tag: 3)
        navigation4.tabBarItem = UITabBarItem(title: "Settings",
                                              image: UIImage(systemName: "gearshape.fill"),
                                              tag: 4)
                                            
        
        
        setViewControllers([navigation1,navigation2, navigation3, navigation4], animated: true)
    }
   
}


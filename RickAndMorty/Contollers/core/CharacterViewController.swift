//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Tami on 20.05.2023.
//

import UIKit

///controller to show and search for character

final class CharacterViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        Service.shared.execute(request: .listCharactersRequests, expecting: GetAllListOfCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total:" + String(model.info.count))
            case .failure(let failure):
                print(String(describing: failure))
            }
        }
        
    }
}

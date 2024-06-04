//
//  RMCharacterViewController.swift
//  RickAndMorthy
//
//  Created by MacBook Air MII  on 28/05/24.
//

import UIKit

class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self, completion: { result in
            
            switch result {
            case .success(let model):
                print(String(describing: model))
                break
            case .failure(let error):
                print(String(describing: error))
            }
        })
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

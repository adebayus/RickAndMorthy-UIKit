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
        
        let request = RMRequest(
            endpoint: .character,
            queryParamaters: [
                URLQueryItem(name: "name", value: "rick")
            ]
        )
        // Do any additional setup after loading the view.
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

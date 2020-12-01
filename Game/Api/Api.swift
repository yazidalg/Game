//
//  Api.swift
//  Game
//
//  Created by Yazid Al Ghazali on 27/11/20.
//

import Foundation
import Alamofire


class Model: ObservableObject {
    @Published var games = [Game]()
    
    func getData() {
        AF.request("https://api.rawg.io/api/games")
            .responseDecodable(of: Games.self){(data) in
                guard let dGame = data.value else {return}
                self.games = dGame.results
                print(self.games)
            }
    }
    
}

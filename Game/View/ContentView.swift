//
//  ContentView.swift
//  Game
//
//  Created by Yazid Al Ghazali on 27/11/20.
//

import SwiftUI
import SwiftWebImage

struct ContentView: View {
    @ObservedObject var modelData = Model()
    var body: some View {
        NavigationView{
            VStack{
//                SwiftImage(){ image in image
//                    .resizable()
//                    .aspectRatio(1, contentMode: .fit)
//                }
                HStack{
                    List(modelData.games){ data in
                        Text(data.name)
                        Text(String(data.rating))
                        
                    }
                }
            }
            .onAppear{
                self.modelData.getData()
            }
        }.navigationBarTitle("Game")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

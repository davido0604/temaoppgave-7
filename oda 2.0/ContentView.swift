//
//  ContentView.swift
//  oda 2.0
//
//  Created by David Dichas on 24/10/2022.
//

import SwiftUI
import Foundation

class ViewModel: ObservableObject {
    func fetch() {
        guard let url = URL(string: "https://api.npoint.io/d4e0a014b1cfc5254bcb")
        else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {data, _,
            error in
            guard let data = data, error == nil
            else {
                return
            }
            
            do {
                let products = try JSONDecoder().decode([Products].self,
                                                        from: data)
            }
            catch {
                
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
            }
            .navigationTitle("Shopping Cart")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

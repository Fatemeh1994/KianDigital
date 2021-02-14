//
// Created by Fatemeh Najafi on 2/14/21.
// Copyright © 2021 risoapps. All rights reserved.
 

import SwiftUI
import FNMNetwork

struct ContentView: View {
    
    @ObservedObject var listManager = ListManager()
    
    var body: some View {
        NavigationView {
            List(listManager.listModel) { item in
                NavigationLink(
                    destination: DetailView(listModel: item)) {
                    ListRow(listModel: item)
                }
            }
            .navigationBarTitle("List")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

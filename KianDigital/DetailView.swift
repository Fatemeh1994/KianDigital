//
// Created by Fatemeh Najafi on 2/14/21.
// Copyright © 2021 risoapps. All rights reserved.

import SwiftUI
import FNMNetwork
import Kingfisher

struct DetailView: View {
    
    var listModel: ListModel
    
    var body: some View {
        ScrollView {
            
            KFImage(listModel.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
            
            VStack(alignment: .leading) {

                Text(listModel.title)
                    .bold()
                
                Text(listModel.releaseDate)
                    .fontWeight(.thin)
                    .frame(maxWidth: .infinity ,alignment: .trailing)
                
                
                
            }
            .padding()
            
            Text(listModel.description)
                .fontWeight(.light)
                .padding()
                
            .navigationBarTitle("Detail")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(listModel: ListRow_Previews.testItem)
    }
}

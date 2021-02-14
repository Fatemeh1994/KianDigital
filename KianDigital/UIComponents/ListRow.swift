//
// Created by Fatemeh Najafi on 2/14/21.
// Copyright © 2021 risoapps. All rights reserved.

import SwiftUI
import FNMNetwork
import Kingfisher

struct ListRow: View {
    
    var listModel: ListModel
    
    var body: some View {
        HStack {
            KFImage(listModel.image)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(30)
            VStack(alignment: .leading) {
                Text(listModel.title)
                    .bold()
                    .lineLimit(1)
                Text(listModel.description)
                    .fontWeight(.light)
                    .lineLimit(2)
            }
            Spacer()
        }
        
    }
}

struct ListRow_Previews: PreviewProvider {
    
    static let testItem = ListModel(id: 1, title: "Title", description: "Description", author: "Author", releaseDate: "6/25/2018", image: nil)
    static var previews: some View {
        
        ListRow(listModel: ListRow_Previews.testItem)
            .previewLayout(.fixed(width: 400, height: 80))
    }
}

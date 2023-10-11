//
//  TypealiasBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 11/10/23.
//

import SwiftUI

struct MovieModel{
    
    let title: String
    let director: String
    let count: Int
    
}

typealias TVModel = MovieModel

struct TypealiasBootcamp: View {
    
   // @State var item : MovieModel = MovieModel(title: "Title", director: "Joe", count: 5)
    
    @State var item : TVModel = TVModel(title: "Title", director: "Joe", count: 5)
    
    var body: some View {
        VStack{
            Text(item.title)
            Text(item.director)
            Text("\(item.count)")
        }
    }
}

#Preview {
    TypealiasBootcamp()
}

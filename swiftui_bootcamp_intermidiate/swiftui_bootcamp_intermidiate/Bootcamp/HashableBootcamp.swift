//
//  HashableBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 06/10/23.
//

import SwiftUI

struct MyCustomeModel:Hashable{
    
    let title:String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
    
    
}


struct HashableBootcamp: View {
    
    let data : [MyCustomeModel] = [
        MyCustomeModel(title: "Hi"),
        MyCustomeModel(title: "Hello"),
        MyCustomeModel(title: "How"),
        MyCustomeModel(title: "Are"),
        MyCustomeModel(title: "You")
    ]
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 40, content: {
                ForEach(data, id: \.self){ item in
                    Text(item.title)
                        .font(.headline)
                }
            })
        }
    }
}

#Preview {
    HashableBootcamp()
}

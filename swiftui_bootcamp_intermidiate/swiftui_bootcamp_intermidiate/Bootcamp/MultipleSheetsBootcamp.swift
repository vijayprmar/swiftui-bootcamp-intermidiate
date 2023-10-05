//
//  MultipleSheetsBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 05/10/23.
//

import SwiftUI

struct RandomModel:Identifiable{
    
    let id = UUID().uuidString
    let title : String
    
}

struct MultipleSheetsBootcamp: View {
    
    @State var selectedModel: RandomModel? = nil
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 20, content: {
                ForEach(0..<50){ index in
                    Button("Button \(index)"){
                        selectedModel = RandomModel(title: "\(index)")
                    }
                    .frame(height: 80)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                }
            })
            .sheet(item: $selectedModel) { model in
                NextScreen(selectedModel: model)
            }
        }
        
    }
}

struct NextScreen:View {
    
    let selectedModel : RandomModel
    
    var body: some View {
        Text("Selected Index : \(selectedModel.title)")
    }
}


#Preview {
    MultipleSheetsBootcamp()
}

//
//  BackgroundThreadBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 11/10/23.
//

import SwiftUI

class BackgroundThreadViewModel:ObservableObject{
    
    @Published var dataArray:[String] = []
    
    func fetchData(){
        DispatchQueue.global(qos: .background).async {
            let newData = self.downloadData()
            DispatchQueue.main.async {
                self.dataArray = newData
            }
        }
    }
    
    private func downloadData()->[String]{
        var data:[String] = []
        
        for x in 0..<100{
            data.append("\(x)")
            print(data)
        }
        return data
        
    }
    
    
}


struct BackgroundThreadBootcamp: View {
    
    @StateObject var vm = BackgroundThreadViewModel()
    
    
    var body: some View {
        
        ScrollView{
            LazyVStack(spacing: 10, content: {
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()
                    }
                ForEach(vm.dataArray,id:\.self){ item in
                    Text(item)
                        .font(.headline)
                        .foregroundColor(.red)
                }
            })
        }
    }
}

#Preview {
    BackgroundThreadBootcamp()
}

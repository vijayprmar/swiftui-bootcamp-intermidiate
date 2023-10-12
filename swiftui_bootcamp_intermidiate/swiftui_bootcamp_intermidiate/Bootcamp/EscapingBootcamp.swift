//
//  EscapingBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 12/10/23.
//

import SwiftUI

class EscapingViewModel:ObservableObject{
    
    @Published var text:String  = "Hello"
    
    func getData(){
        
        downloadData { [weak self] data in
            self?.text = data
        }
    }
    
    func downloadData(completion:@escaping (_ data:String)->()){
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2, execute: {
            completion("New Data!")
        })
        
    }
    
}

struct EscapingBootcamp: View {
    
    @StateObject var vm = EscapingViewModel()
    
    var body: some View {
        Text(vm.text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.blue)
            .onTapGesture {
                vm.getData()
            }
    }
}

#Preview {
    EscapingBootcamp()
}

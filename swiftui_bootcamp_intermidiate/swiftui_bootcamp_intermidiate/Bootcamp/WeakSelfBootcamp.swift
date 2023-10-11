//
//  WeakSelfBootcamp.swift
//  swiftui_bootcamp_intermidiate
//
//  Created by Vijay Parmar on 11/10/23.
//

import SwiftUI

struct WeakSelfBootcamp: View {
    var body: some View {
        NavigationView{
            
           NavigationLink("Navigate",destination: WeakSelfSecondScreen())
                .navigationTitle("Screen 1")
        }
       
    
    }
}


struct WeakSelfSecondScreen:View {
    
    @StateObject var vm = WeakSelfSecondScreenViewmodel()
    
    var body: some View {
        VStack {
            Text("SecondScreen")
                .font(.largeTitle)
            .foregroundColor(.red)
            
            if let data = vm.data{
                Text(data)
            }
            
        }
    }
}


class WeakSelfSecondScreenViewmodel:ObservableObject{
    
    
    @Published var data:String? = nil
    
    init() {
        print("Initialize now")
        getData()
    }
    
    deinit{
        print("deinitilize now")
    }
    
    func getData(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 500) {[weak self] in
            self?.data = "New Data"
        }
    }
    
}


#Preview {
    WeakSelfBootcamp()
}

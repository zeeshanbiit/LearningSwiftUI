//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Muhammad Zeshan on 13/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAlertShow = false
    var body: some View {
        
           
            NavigationStack{
                
                VStack {
                    
                    Button{
                        isAlertShow = true
                    }label: {
                        Text("Tap for Alert!")
                    }
                    
                }
                .padding()
            }.alert(isPresented: $isAlertShow, content: {
                Alert(title: Text("Alert"), message: Text("This is an Alert"), primaryButton: .cancel(), secondaryButton: .default(Text("OK")))
            })
            
           
        
    }
}

#Preview {
    ContentView()
}

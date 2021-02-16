//
//  ContentView.swift
//  App01-MisDatos
//
//  Created by Enrique Diaz de Leon Hicks on 2/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                ZStack {
                    Color("Up")
                    Text("Hola Mundo")
                        .padding()
                }
            }
            VStack {
                ZStack {
                    Color("Down")
                    Text("Hola Mundo")
                        .padding()
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

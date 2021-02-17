//
//  ContentView.swift
//  App01-MisDatos
//
//  Created by Enrique Diaz de Leon Hicks on 2/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                VStack {
                    ZStack {
                        Color("Up")
                        Text("Hola Mundo")
                            .font(.RobotoMono(size: 32))
                            .padding()
                    }
                }
                VStack {
                    ZStack {
                        Color("Down")
                        VStack {
                            DataView(texto: "Enrique Diaz de Leon Hicks")                            .padding(.top, 20)
                            DataView(texto: "B.S. Business Informatics", imagen: "network")
                            DataView(texto: "enriquedlh97@hotmail.com", imagen: "envelope")
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Plane")
                    .resizable()
                    .scaledToFit()
                    .frame(width:200)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//
//  ContentView.swift
//  App01-MisDatos
//
//  Created by Enrique Diaz de Leon Hicks on 2/14/21.
//

import SwiftUI

struct ContentView: View {
    
    //@State refhreses screen every time this variable changes
    @State var showImage: Bool = false
    
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
                Button(action: {
                    showImage.toggle()
                    print("Hola")
                }){
                    Image("Plane")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200)
                }
                
            }
        }
        .sheet(isPresented: $showImage) {
            ImageView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



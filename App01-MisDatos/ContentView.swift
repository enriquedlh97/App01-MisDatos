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
                        HStack {
                            Image(systemName: "person.fill")
                            Text("Hola Mundo")
                                .font(.RobotoRegular(size: 32))
                                .padding()
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            VStack {
                let processor = IconMaker()
                let FinalIamge = Image("WorldPlane")
                let abc = processor.makeIcon(with: UIColor, size: CGSize, icon: FinalIamge)
                Image("WorldPlane")
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

import UIKit

struct IconMaker {

    func makeIcon(with color: UIColor, size: CGSize, icon: UIImage = UIImage(named: "iconEmpty.png")!) -> UIImage {

        // Make solid color background
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        color.setFill()
        UIRectFill(rect)
        let backgroundImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        // Add other image (which has transparency)
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        backgroundImage.draw(in: rect, blendMode: .normal, alpha: 1)

        icon.draw(in: rect, blendMode: .normal, alpha: 1)

        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()

        // Circular mask
        let cornerRadius = newImage.size.height/2
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        let bounds = CGRect(origin: CGPoint.zero, size: size)
        UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius).addClip()
        newImage.draw(in: bounds)
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return finalImage!
    }
}

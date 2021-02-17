//
//  ImageView.swift
//  App01-MisDatos
//
//  Created by user189351 on 2/17/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("BigPlane")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

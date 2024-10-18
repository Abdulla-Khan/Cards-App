//
//  Button.swift
//  Card App via Code
//
//  Created by Ayaz on 18/10/2024.
//

import SwiftUI

struct AFButton: View {
    var text: String;
    var backGroundColor: Color;
    var width: CGFloat = 260;
    var body: some View {
            Text(text)
                .frame(width: width, height: 50)
                .font(.title2)
                .fontWeight(.semibold)
                .background(backGroundColor)
                .foregroundColor(.white)
                .cornerRadius(10)
    }
}

struct CloseButton: View {
    var body: some View {
        Image(systemName:"xmark")
        
            .foregroundColor(Color(.label))
            .imageScale(.large)
            .frame(width: 44,height: 44)
    }
}

//
//  RulesView.swift
//  Card App via Code
//
//  Created by Ayaz on 18/10/2024.
//

import SwiftUI

struct RulesView : View {
    @Binding var isShowingRules : Bool
    var body: some View {
        VStack(alignment: .center){
            HStack{
                            Spacer()
                            Button{
                                isShowingRules = false
                            }label:{
                                CloseButton()
                            }
                        }
            Spacer()
            Text("Rules")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text("The value of each card represents number of exercises you do.\nJ = 11, Q = 12, K = 13, A = 14")
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Text("""
                 
                 ♠️ = Push Up
                 
                 ❤️ = Sit-up

                 ♦️ = Burpees

                 ♣️ = Jumping Jacks
                 """)
                .font(.body)
                .fontWeight(.bold)
            Spacer()
        }.padding()
    }
}

#Preview { RulesView(
    isShowingRules: .constant(false)
) }


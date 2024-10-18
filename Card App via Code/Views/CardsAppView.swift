//
//  ContentView.swift
//  Card App via Code
//
//  Created by Ayaz on 18/10/2024.
//

import SwiftUI

struct CardsAppView: View {
    @StateObject private var timerViewModel = TimerViewModel()
    var body: some View {
        
        VStack {
            Spacer()
            Image(timerViewModel.cardImage)
                .resizable()
                .frame(
                    width: 250,
                    height: 350
                )
            Spacer()
            Button{
                timerViewModel.stopTimer()
            } label: {
                AFButton(text: "Stop!",backGroundColor: .red)
            }
            HStack {
                Button{
                    timerViewModel.resetTimer()
                } label: {
                    AFButton(text: "Restart",backGroundColor: .green, width: 125)
                }
                
                Button{
                    timerViewModel.isShowingRules = true
                } label: {
                    AFButton(text: "Rules",backGroundColor: .blue, width: 125)
                }.sheet(isPresented: $timerViewModel.isShowingRules){
                    RulesView(isShowingRules:$timerViewModel.isShowingRules )
                }
            }.padding()
            Spacer()
        }.padding()
        .onAppear() {
                timerViewModel.startTimer()
            }
    }
}

#Preview {
    CardsAppView()
}


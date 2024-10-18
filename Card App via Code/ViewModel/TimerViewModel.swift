import SwiftUI

class TimerViewModel: ObservableObject {
    @Published var timer: Timer?
    @Published var cardImage : String = "AS"
    @Published var isShowingRules : Bool = false
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
            self.changeCardImage()
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    func changeCardImage() {
        cardImage =  Card.allValues.randomElement() ?? "AS"
    }
    
    func resetTimer() {
        stopTimer()
        startTimer()
    }
}

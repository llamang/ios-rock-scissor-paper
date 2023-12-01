import Foundation

struct GameManager {
    public private(set) var isGameActive: Bool = true
    private let user: Player = User()
    private let computer: Player = Computer()
    private var referee = Referee()
    
    public mutating func playGame() {
        showOptions()
        referee.determineGameOutcome(user.chooseOption(), computer.chooseOption())
        
        if referee.isGameOver {
            endGame()
        }
    }
    
    private func showOptions() {
        referee.isRPS
        ? PrintingHandler.showRPSOptions()
        : PrintingHandler.showMJPOptions(for: referee.previousTurn)
    }
    
    private mutating func endGame() {
        isGameActive = false
    }
    
}


import UIKit

protocol Game {
    func restart() -> Void
}

class RetroFreeFallViewController: UIViewController {

    var score:Int!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWrongPhrase: UILabel!
    @IBOutlet weak var lbSolution: UILabel!
    var wrongPhrase:String!
    var solution:String!
    var source:Int!
    var game: Game!
    
    @IBAction func playAgain(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        game.restart()
    }
    
    @IBAction func goToHome(_ sender: UIButton) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var lbTimeOver: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbScore.text = "\(score!)"
        if wrongPhrase != nil {
            lbWrongPhrase.text = wrongPhrase
            lbSolution.text = solution
            lbTimeOver.alpha = 0
        }
        else {
            lbTimeOver.alpha = 1
            lbWrongPhrase.text = "Time Over!!"
            lbSolution.text = ""
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    override var shouldAutorotate: Bool {
        return false
    }
    
}

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!

    @IBOutlet weak var startButton: UIButton!

    private var counter = 0

    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.height / 2
        yellowView.layer.cornerRadius = yellowView.frame.height / 2
        greenView.layer.cornerRadius = greenView.frame.height / 2
        startButton.layer.cornerRadius = 10
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    // Насколько логика ниже не читаема по шкале от 1 до 5?))
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)

        let trafficLightsViews = [redView, yellowView, greenView]

        counter != 0 ? (trafficLightsViews[counter - 1]?.alpha = 0.3) : nil

        if counter < trafficLightsViews.endIndex {
            trafficLightsViews[counter]?.alpha = 1
            counter += 1
        } else {
            counter = 0
            trafficLightsViews[counter]?.alpha = 1
            counter += 1
        }
    }
}

import UIKit
import SceneKit

class CharacterViewController: UIViewController {
    
    @IBOutlet weak var sceneView: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1: Load .obj file
        let scene = SCNScene(named: "person.obj")
        
        // 2: Add camera node
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        // 3: Place camera
        cameraNode.position = SCNVector3(x: 0, y: 10, z: 35)
        // 4: Set camera on scene
        scene?.rootNode.addChildNode(cameraNode)
        
        // 5: Adding light to scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 35)
        scene?.rootNode.addChildNode(lightNode)
        
        // 6: Creating and adding ambien light to scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = .ambient
        ambientLightNode.light?.color = UIColor.darkGray
        scene?.rootNode.addChildNode(ambientLightNode)
        
        // If you don't want to fix manually the lights
//        sceneView.autoenablesDefaultLighting = true
        
        // Allow user to manipulate camera
        sceneView.allowsCameraControl = true
        
        // Show FPS logs and timming
        // sceneView.showsStatistics = true
        
        // Set background color
        sceneView.backgroundColor = UIColor.white
        
        // Allow user translate image
        sceneView.cameraControlConfiguration.allowsTranslation = false
        
        // Set scene settings
        sceneView.scene = scene
        
    }
    
    
}

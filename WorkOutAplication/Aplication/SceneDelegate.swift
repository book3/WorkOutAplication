
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let tabBarController = TabBarController()
        
        guard let windowSene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowSene.coordinateSpace.bounds)
        window?.windowScene = windowSene
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    }

}

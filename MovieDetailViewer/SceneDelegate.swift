//
//  SceneDelegate.swift
//  MovieDetailViewer
//
//  Created by Carki on 2022/07/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
//        UserDefaults.standard.set(false, forKey: "First") >> 다른 화면에 배치해야 함
        //true이면 ViewController, fallse이면 SearchMovieTableViewController
        
        //window = > 디바이스의 첫 화면(로그아웃같은 화면을 구상할때)
//        guard let scene = (scene as? UIWindowScene) else { return }
//        window = UIWindow(windowScene: scene)
//        
//        if UserDefaults.standard.bool(forKey: "First") {
//            
//            
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let vc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//            
//            window?.rootViewController = vc
//            
////            window?.makeKeyAndVisible()//윈도우가 화면에 보여지게 하는 것
//            
//        } else {
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let vc = sb.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
//            
//            window?.rootViewController = vc
//            
//            
//        }
//        window?.makeKeyAndVisible()//윈도우가 화면에 보여지게 하는 것
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


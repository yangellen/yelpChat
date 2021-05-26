//
//  SceneDelegate.swift
//  Yelpy
//
//  Created by Memo on 5/21/20.
//  Copyright © 2020 memo. All rights reserved.
//

import UIKit
import Parse

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    
    // ––––– Lab 5 TODO: Create event listeners for user login + logout
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

      // Add event listener for when user login
      NotificationCenter.default.addObserver(forName: NSNotification.Name("login"), object: nil, queue: OperationQueue.main) { (Notification) in
         print("Login notification received")
         //Load and show login view controller
         self.login()
      }
    
        // Add event listener for when user logs out
      NotificationCenter.default.addObserver(forName: NSNotification.Name("logout"), object: nil, queue: OperationQueue.main) { (Notification) in
         print("Logout notification received")
         //Load and show login view controller
         self.logout()
      }
        // Add User persistance across app restarts


        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    
    //LOGIN USER
   func login(){
      let storyboard = UIStoryboard(name: "Main", bundle:nil)
      //view controller currently being set in storyboard as default will be overridden
      window?.rootViewController = storyboard.instantiateViewController(identifier: "TabBar")
   }

    
    //LOGOUT USER
   func logout(){
      let storyboard = UIStoryboard(name: "Main", bundle:nil)
      //view controller currently being set in storyboard as default will be overridden
      window?.rootViewController = storyboard.instantiateViewController(identifier: "Login")
   }
    
    

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
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


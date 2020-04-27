//
//  ViewController.swift
//  PushNotificationsApp
//
//  Created by Veldanov, Anton on 4/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    
    if let url = URL(string: "https://fcm.googleapis.com/fcm/send"){
      var request = URLRequest(url: url)
      request.allHTTPHeaderFields = ["Content-Type":"application/json","Authorization":"key=AAAAaoKXpIg:APA91bGDNYtxhrlA2r0stBOC-u3ylnDvz7cISF5aUzUnOIaO7074LV3Vvs23rNJtHouf4J3RnTiOyhlP5jCJ220oiXFiBtoRrHknNEKsUQSqo05rmc0vq-1lr8i5F-bKz_4ITF7BdbJm"]
      
      request.httpMethod = "POST"
      
      request.httpBody = "{\"to\":\"fm5Tm5Gzd03HkQOCzbDSm2:APA91bHfvR4lVinp3xtSYGpF7vAzo9E4KSNZ2iVWiaN_8SgGn9XeVQpe9gvgDMGeZh2tvtMCk2-7LGGP_IzLPt9eGrZztVzxaMftP2EgiXrVehVKHvqy9fPNdbFveRWCgXab3ebgiX8f\",\"notification\":{\"title\":\"THIS IS A TITLE FROM HTTP\"}}".data(using: .utf8)
      

      URLSession.shared.dataTask(with: request) { (data, response, error) in
           if error != nil{
               print(error!)
        }
        
      }.resume()
      
      
    }
  }


}


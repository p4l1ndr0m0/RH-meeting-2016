//
//  ViewController.swift
//  RH meeting 2016
//
//  Created by Billy Jack Bates Garcia on 7/23/16.
//  Copyright © 2016 Palindromo. All rights reserved.
//

import UIKit
import AWSMobileHubHelper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pushManager: AWSPushManager = AWSPushManager.defaultPushManager()
        pushManager.delegate = self
        pushManager.registerForPushNotifications()
        if let topicARNs = pushManager.topicARNs {
            pushManager.registerTopicARNs(topicARNs)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
extension ViewController: AWSPushManagerDelegate {
    func pushManagerDidRegister(pushManager: AWSPushManager) {
        print("Successfully enabled Push Notifications.")
        // Subscribe the first topic among the configured topics (all-device topic)
        if let defaultSubscribeTopic = pushManager.topicARNs?.first {
            let topic = pushManager.topicForTopicARN(defaultSubscribeTopic)
            topic.subscribe()
        }
    }
    
    func pushManager(pushManager: AWSPushManager, didFailToRegisterWithError error: NSError) {
        
    }
    
    func pushManager(pushManager: AWSPushManager, didReceivePushNotification userInfo: [NSObject : AnyObject]) {
        
        
    }
    
    func pushManagerDidDisable(pushManager: AWSPushManager) {
        
    }
    
    func pushManager(pushManager: AWSPushManager, didFailToDisableWithError error: NSError) {
        
    }
    
}

extension ViewController: AWSPushTopicDelegate {
    
    func topicDidSubscribe(topic: AWSPushTopic) {
        print("Successfully subscribed to a topic: \(topic.topicName)")
        
    }
    
    func topic(topic: AWSPushTopic, didFailToSubscribeWithError error: NSError) {
        
    }
    
    func topicDidUnsubscribe(topic: AWSPushTopic) {
        
    }
    
    func topic(topic: AWSPushTopic, didFailToUnsubscribeWithError error: NSError) {
        
}
}


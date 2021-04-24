//
//  ExampleCarPlaySceneDelegate.swift
//  CarPlayExample
//
//  Created by Kevin Conner on 4/23/21.
//

import Foundation
import CarPlay

@objc class ExampleCarPlaySceneDelegate: NSObject, CPTemplateApplicationSceneDelegate {
    
    private var interfaceController: CPInterfaceController?
    
    // https://developer.apple.com/documentation/carplay/displaying_content_in_carplay
    // CarPlay calls this function to initialize the scene.
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController) {
        // Save the interface controller
        self.interfaceController = interfaceController
        
        // Create the root template (screen) and install it at the root of the navigation hierarchy.
        interfaceController.setRootTemplate(tabBarTemplate(), animated: true, completion: nil)
    }
    
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didDisconnectInterfaceController interfaceController: CPInterfaceController) {
        self.interfaceController = nil
    }
    
    private func listTemplate() -> CPListTemplate {
        let item = CPListItem(text: "text", detailText: "detail")
        item.handler = { [weak self] (item, completion) in
            guard let self = self else {
                completion()
                return
            }
            
            self.interfaceController?.pushTemplate(self.listTemplate(), animated: true) { (didPresent, error) in
                completion()
            }
        }
        
        let sections = [
            CPListSection(items: [
                item
            ])
        ]
        
        let template = CPListTemplate(title: "List Title", sections: sections)
        template.tabSystemItem = .search
        
        return template
    }
    
    private func tabBarTemplate() -> CPTabBarTemplate {
        return CPTabBarTemplate(templates: [
            listTemplate()
        ])
    }
    
}

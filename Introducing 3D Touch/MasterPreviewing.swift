//
//  MasterPreviewing.swift
//  Introducing 3D Touch
//
//  Created by Davis Allie on 24/10/2015.
//  Copyright © 2015 tutsplus. All rights reserved.
//

import Foundation
import UIKit

extension MasterViewController: UIViewControllerPreviewingDelegate {
    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        guard let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("forceViewController") as? ForceViewController else { return nil }
        
        viewController.preferredContentSize = CGSize(width: 0, height: 0)
        
        return viewController
    }
    
    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
        showViewController(viewControllerToCommit, sender: self)
    }
}

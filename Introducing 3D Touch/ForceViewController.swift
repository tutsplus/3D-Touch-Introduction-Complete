//
//  ForceViewController.swift
//  Introducing 3D Touch
//
//  Created by Davis Allie on 24/10/2015.
//  Copyright © 2015 tutsplus. All rights reserved.
//

import UIKit

class ForceViewController: UIViewController {
    
    @IBOutlet weak var forceOutput: UILabel!
    
    override func previewActionItems() -> [UIPreviewActionItem] {
        let regularAction = UIPreviewAction(title: "Regular", style: .Default) { (action: UIPreviewAction, vc: UIViewController) -> Void in
            
        }
        
        let destructiveAction = UIPreviewAction(title: "Destructive", style: .Destructive) { (action: UIPreviewAction, vc: UIViewController) -> Void in
            
        }
        
        let actionGroup = UIPreviewActionGroup(title: "Group...", style: .Default, actions: [regularAction, destructiveAction])
        
        return [regularAction, destructiveAction, actionGroup]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.forceOutput.numberOfLines = 0
        self.forceOutput.text = "Force\nOutput"
        self.forceOutput.textAlignment = .Center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first where traitCollection.forceTouchCapability == .Available {
            self.forceOutput.text = "\(touch.force)\n(touch.maximumPossibleForce)"
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

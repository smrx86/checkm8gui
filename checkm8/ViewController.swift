//
//  ViewController.swift
//  checkm8
//
//  Created by Tyler on 9/27/19.
//  Copyright © 2019 tie1r. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func install(_ sender: NSButton) {
        let path = "/bin/sh"
        let arguments = ["/Applications/checkm8.app/Contents/Resources/run.sh"]
        sender.isEnabled = false
        let task = Process.launchedProcess(launchPath: path, arguments: arguments)
        task.waitUntilExit()
        sender.isEnabled = true
        let alert = NSAlert.init()
        alert.messageText = "Notice"
        alert.informativeText = "Device should be in pwndfu mode. Might have to run a few times..."
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
    
    @IBAction func dump(_ sender: NSButton) {
        let path = "/bin/sh"
        let arguments = ["/Applications/checkm8.app/Contents/Resources/dump.sh"]
        sender.isEnabled = false
        let task = Process.launchedProcess(launchPath: path, arguments: arguments)
        task.waitUntilExit()
        sender.isEnabled = true
        let alert = NSAlert.init()
        alert.messageText = "Notice"
        alert.informativeText = "Dumps should be in /Applications/checkm8.app/Contents/Resources/ipwndfu"
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
    
    @IBAction func jtag(_ sender: NSButton) {
        let path = "/bin/sh"
        let arguments = ["/Applications/checkm8.app/Contents/Resources/jtag.sh"]
        sender.isEnabled = false
        let task = Process.launchedProcess(launchPath: path, arguments: arguments)
        task.waitUntilExit()
        sender.isEnabled = true
        let alert = NSAlert.init()
        alert.messageText = "Notice"
        alert.informativeText = "Demoted."
        alert.addButton(withTitle: "OK")
        alert.runModal()
    }
    
    @IBAction func more(_ sender: NSButton) {
        let alert = NSAlert.init()
        alert.messageText = "Notice"
        alert.informativeText = "Coming Soon!"
        alert.addButton(withTitle: "OK")
        alert.runModal()
           
        }
    }



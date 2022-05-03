//
//  ViewController.swift
//  GoonsDesignInterface
//
//  Created by Jhen Mu on 2022/5/3.
//

import UIKit

class ViewController: UIViewController {
    
    let firstPageView = View()
    
    override func loadView() {
        super.loadView()
        view = firstPageView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        setButton()
        // Do any additional setup after loading the view.
    }
    
    private func setNavigationBar(){
        
    }
    
    private func setButton(){
        firstPageView.button.addTarget(self, action: #selector(pushNextPage), for: .allEvents)
    }
    
    @objc func pushNextPage(){
        
    }


}


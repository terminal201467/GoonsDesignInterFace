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
    }
    
    private func setNavigationBar(){
        title = "第一頁"
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icons8-back-24")
    }
    
    private func setButton(){
        firstPageView.button.addTarget(self, action: #selector(pushNextPage), for: .touchDown)
    }
    
    @objc func pushNextPage(){
        navigationController?.pushViewController(GoonsDesignViewController(), animated: true)
    }


}


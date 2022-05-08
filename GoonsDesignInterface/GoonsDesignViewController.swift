//
//  GoonsDesignViewController.swift
//  GoonsDesignInterface
//
//  Created by Jhen Mu on 2022/5/3.
//

import Foundation
import UIKit

class GoonsDesignViewController:UIViewController{
    
    let goonDesignView = GoonDesignView()
    
    override func loadView() {
        super.loadView()
        view = goonDesignView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
        setScrollView()
    }
    
    private func setNavigationBar(){
        title = "果思設計"
        let backButton = UIBarButtonItem(image: UIImage(named: "icons8-back-24"), style: .plain, target: self, action: #selector(back))
        backButton.tintColor = .black
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.white.withAlphaComponent(20)
        navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func back(){
            self.navigationController?.popViewController(animated: true)
    }
    
    private func setScrollView(){
        goonDesignView.scrollView.delegate = self
    }
    
    private func setAlphaValue(_ position:CGFloat){
        switch position{
        case -140 ... -125: navigationController?.navigationBar.alpha = 0.1
        case -125 ... -110: navigationController?.navigationBar.alpha = 0.2
        case -110 ... -95:  navigationController?.navigationBar.alpha = 0.3
        case -95 ... -80:   navigationController?.navigationBar.alpha = 0.4
        case -80 ... -65:   navigationController?.navigationBar.alpha = 0.5
        case -65 ... -50:   navigationController?.navigationBar.alpha = 0.6
        case -50 ... -35:   navigationController?.navigationBar.alpha = 0.7
        case -35 ... -20:   navigationController?.navigationBar.alpha = 0.8
        case -20 ... -5:    navigationController?.navigationBar.alpha = 0.8
        default:            navigationController?.navigationBar.alpha = 1
        }
    }
}

extension GoonsDesignViewController:UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yPosition = scrollView.contentOffset.y
        setAlphaValue(yPosition)
    }
}

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
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor.white.withAlphaComponent(20)
    }
    
    private func setScrollView(){
        goonDesignView.scrollView.delegate = self
    }
}

extension GoonsDesignViewController:UIScrollViewDelegate{
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("開始滑動")
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yPosition = scrollView.contentOffset.y
        print("position:",yPosition)
        switch yPosition{
        case -140 ... -120: navigationController?.navigationBar.alpha = 0.25
        case -120 ... -100:  navigationController?.navigationBar.alpha = 0.35
        case -100 ... -90:   navigationController?.navigationBar.alpha = 0.45
        case -90 ... -70:   navigationController?.navigationBar.alpha = 0.55
        case -70 ... -50:   navigationController?.navigationBar.alpha = 0.65
        case -50 ... -30:   navigationController?.navigationBar.alpha = 0.75
        case -30 ... -10:   navigationController?.navigationBar.alpha = 0.85
        default:            navigationController?.navigationBar.alpha = 1
        }

        //一開始的狀態，alpha值為
        
        //滑動中的狀態，alpha值跟著scrollView.contentOffset變化
        
        //滑動到一定的程度，就讓navigationBar消失
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("結束滑動")
        
    }
}

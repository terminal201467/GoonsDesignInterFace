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
        navigationController?.navigationItem.largeTitleDisplayMode = .automatic
    }
    
    private func setScrollView(){
        goonDesignView.scrollView.delegate = self
    }
}

extension GoonsDesignViewController:UIScrollViewDelegate{
    
    
}

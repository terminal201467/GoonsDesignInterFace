//
//  View.swift
//  GoonsDesignInterface
//
//  Created by Jhen Mu on 2022/5/3.
//

import UIKit
import SnapKit

class View: UIView {
    
    let button:UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("下一頁", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(button)
        autoLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func autoLayout(){
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }

}

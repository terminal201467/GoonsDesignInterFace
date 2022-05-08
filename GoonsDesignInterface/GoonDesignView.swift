//
//  GoonDesignView.swift
//  GoonsDesignInterface
//
//  Created by Jhen Mu on 2022/5/3.
//

import UIKit

class GoonDesignView: UIView {
    
    private let dogPicture:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dog")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let goonsTitle:UILabel = {
       let label = UILabel()
        label.text = "果思設計"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    private let iOSAPPTitle:UILabel = {
        let label = UILabel()
        label.text = "iOSAPP"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    let redView:UIView = {
       let view = UIView()
        view.backgroundColor = .red
//        view.layer.backgroundColor = .init(red: 1, green: 0, blue: 0, alpha: 0)
        view.layer.maskedCorners = [.layerMaxXMinYCorner]
//        view.roundCorners(corners: .topRight, radius: 15)
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        return view
    }()
    
    let scrollView:UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.isScrollEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        return scrollView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(scrollView)
        scrollView.addSubview(dogPicture)
        scrollView.addSubview(iOSAPPTitle)
        scrollView.addSubview(redView)
        autoLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func autoLayout(){
        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        dogPicture.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-170)
            make.centerX.equalToSuperview()
            make.height.equalTo(300)
            make.width.equalToSuperview()
        }
        
        iOSAPPTitle.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(5)
        }
        
        redView.snp.makeConstraints { make in
            make.top.equalTo(scrollView.snp.top).offset(80)
            make.right.left.equalToSuperview()
            make.height.equalTo(900)
            make.width.equalToSuperview()
            make.bottom.equalTo(scrollView.snp.bottom)
        }
    }
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

//
//  GoonDesignView.swift
//  GoonsDesignInterface
//
//  Created by Jhen Mu on 2022/5/3.
//

import UIKit

class GoonDesignView: UIView {
    
    let dogPicture:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dog")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let goonsTitle:UILabel = {
       let label = UILabel()
        label.text = "果思設計"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        return label
    }()
    
    let iOSAPPTitle:UILabel = {
        let label = UILabel()
        label.text = "iOSAPP"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    let redView:UIView = {
       let view = UIView()
        view.backgroundColor = .red
        view.roundCorners(corners:.topRight, radius: 15)
        return view
    }()
    
    let scrollView:UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.backgroundColor = .red
        scrollView.isScrollEnabled = true
        scrollView.showsHorizontalScrollIndicator = true
        return scrollView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubview(scrollView)
        scrollView.addSubview(dogPicture)
        scrollView.addSubview(redView)
        scrollView.addSubview(goonsTitle)
        scrollView.addSubview(iOSAPPTitle)
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
            make.top.equalToSuperview().offset(-120)
            make.centerX.equalToSuperview()
            make.height.equalTo(300)
            make.width.equalToSuperview()
        }
        
        goonsTitle.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(5)
        }
        
        iOSAPPTitle.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(goonsTitle.snp.bottom).offset(5)
        }
        
        redView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.right.left.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(900)
        }
    }
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

//
//  PageCell.swift
//  Kindle
//
//  Created by GetHired on 8/6/18.
//  Copyright © 2018 GetHired. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text  = " SOME TEXT FROM OUR LABEL, SOME TEXT FROM OUR LABEL,SOME TEXT FROM OUR LABEL,SOME TEXT FROM OUR LABELSOME TEXT FROM OUR LABEL, SOME TEXT FROM OUR LABEL,SOME TEXT FROM OUR LABEL,SOME TEXT FROM OUR LABEL,SOME TEXT FROM OUR LABEL,SOME TEXT FROM OUR LABEL"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(textLabel)
        //textLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        textLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        textLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        textLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //above two is need for initiaze
    
    
}

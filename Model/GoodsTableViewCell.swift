//
//  GoodsTableViewCell.swift
//  ThirdClassFouthMonth
//
//  Created by zhibekzhaan on 9/6/23.
//

import Foundation
import UIKit


class GoodsTableViewCell: UITableViewCell{
    
    private var bgView = UIView()
    
    private var goodsImage : UIImageView = {
        let image  = UIImageView()
        image.layer.cornerRadius = 11
        return image
    }()
    
    private var goodsName : UILabel = {
        let label  = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "name"
        return label
    }()
    private var goodsCount: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 15)
        label.text = "count"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initCellUI()

    }
    
    private func initCellUI(){
        
        setBGViewConstraint()
        setImageConstraint()
        setGoodsNameConstraint()
        setGoodsCountConstraint()
    }
    
    private func setBGViewConstraint(){
        contentView.addSubview(bgView)
        bgView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        bgView.backgroundColor = .white
        
        bgView.translatesAutoresizingMaskIntoConstraints = false
        
        bgView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bgView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bgView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
    }
    private func setImageConstraint(){
        bgView.addSubview(goodsImage)
        
        goodsImage.translatesAutoresizingMaskIntoConstraints = false
        goodsImage.backgroundColor = .cyan
        goodsImage.heightAnchor.constraint(equalToConstant: 166).isActive = true
        goodsImage.topAnchor.constraint(equalTo: bgView.topAnchor).isActive = true
        goodsImage.leadingAnchor.constraint(equalTo: bgView.leadingAnchor).isActive = true
        goodsImage.trailingAnchor.constraint(equalTo: bgView.trailingAnchor).isActive = true
    }
    
    private func setGoodsNameConstraint(){
        bgView.addSubview(goodsName)
        
        goodsName.translatesAutoresizingMaskIntoConstraints = false
        goodsName.topAnchor.constraint(equalTo: goodsImage.bottomAnchor, constant: 8).isActive = true
        goodsName.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor).isActive = true
        goodsName.trailingAnchor.constraint(equalTo: goodsImage.trailingAnchor).isActive = true
        
    }
    private func setGoodsCountConstraint(){
        bgView.addSubview(goodsCount)
        
        goodsCount.translatesAutoresizingMaskIntoConstraints = false
        goodsCount.topAnchor.constraint(equalTo: goodsName.bottomAnchor, constant: 2).isActive = true
        goodsCount.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor).isActive = true
        goodsCount.trailingAnchor.constraint(equalTo: goodsImage.trailingAnchor).isActive = true
    }
    
    func setData (image: String, name: String, count: Int){
        goodsImage.image = UIImage(named: image)
        goodsName.text = name
        goodsCount.text = "\(count) + items"
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

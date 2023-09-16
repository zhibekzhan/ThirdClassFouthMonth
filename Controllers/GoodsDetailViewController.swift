//
//  GoodsDetailViewController.swift
//  ThirdClassFouthMonth
//
//  Created by zhibekzhaan on 9/6/23.
//

import UIKit

class GoodsDetailViewController: UIViewController {
    
    private lazy var mainImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var detailLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = .systemFont(ofSize: 22, weight: .medium)
        view.numberOfLines = 2
        return view
    }()
    private lazy var starImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "star")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var priceLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .blue
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    

    var goodsDetail : Goods?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initUI()
        
    }
    private func initUI(){
        initSubview()
        setupConstraints()
        initData()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            mainImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainImage.heightAnchor.constraint(equalToConstant: 375),
            
            detailLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 16),
            detailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            detailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),

            starImage.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 6),
            starImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            starImage.widthAnchor.constraint(equalToConstant: 18),
            starImage.heightAnchor.constraint(equalToConstant: 18),
            
            priceLabel.topAnchor.constraint(equalTo: starImage.bottomAnchor, constant: 27),
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
           // priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
        ])
    }
    
    private func initSubview(){
        view.addSubview(mainImage)
        view.addSubview(detailLabel)
        view.addSubview(starImage)
        view.addSubview(priceLabel)

    }
    
    private func initData(){
        guard let data = goodsDetail else { return }
        mainImage.image = UIImage(named: data.smallImage)
        detailLabel.text = data.detail.titleLabel
        starImage.image = UIImage(systemName: "star")
        priceLabel.text = "$" + "\(data.price)"
        
        
        
        

    }
}

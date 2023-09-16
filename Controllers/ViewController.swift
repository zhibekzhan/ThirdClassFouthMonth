//
//  ViewController.swift
//  ThirdClassFouthMonth
//
//  Created by zhibekzhaan on 9/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let goodsTableView = UITableView()
    
    private var goodsList: [Goods] = []
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.blue
        initUI()
        initData()
        
    }
    private func initUI(){
        view.backgroundColor = .white
        view.addSubview(goodsTableView)
        
        goodsTableView.dataSource = self
        goodsTableView.delegate = self

        goodsTableView.register(GoodsTableViewCell.self, forCellReuseIdentifier: "cell")
        goodsTableView.translatesAutoresizingMaskIntoConstraints = false
        
        
        goodsTableView.topAnchor.constraint(equalTo: view.topAnchor,constant: 60).isActive = true
        goodsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        goodsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20).isActive = true
        goodsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -20).isActive = true
        
    }

private func initData(){
    
    goodsList = [
        Goods(smallImage: "furnitureSmall",
              largeImage: "furnitureLarge",
              name: "Furniture",
              count: 12,
              price: 12.11,
              starCount: 21,
              detail: GoodsDetail(roomType: "Office",
                                  color: .black,
                                  material: "Material",
                                  dimensions: "StringMaterial",
                                  weight: "StringMaterial",
                                  titleLabel: "AbocoFur Modern Velvet Fabric Lazy Chair")
             ),
        Goods(smallImage: "kitchenWareSmall",
              largeImage: "kitchenWareLarge",
              name: "Kitchen Ware",
              count: 12, price: 12.2,
              starCount: 12,
              detail: GoodsDetail(roomType: "Material",
                                  color: .black, material: "fgd",
                                  dimensions: "csnkc",
                                  weight: "cergve",
                                  titleLabel: "AbocoFur Modern Velvet Fabric Lazy Chair")
             ),
        Goods(smallImage: "readingTableSmall",
              largeImage: "readingTableLarge",
              name: "Reading Table",
              count: 12,
              price: 12.2,
              starCount: 12,
              detail: GoodsDetail(roomType: "Material",
                                  color: .black, material: "fgd",
                                  dimensions: "csnkc",
                                  weight: "cergve",
                                  titleLabel: "AbocoFur Modern Velvet Fabric Lazy Chair")
              ),
        Goods(smallImage: "readingTableSmall",
              largeImage: "readingTableLarge",
              name: "Reading Table",
              count: 12, price: 12.2,
              starCount: 12,
              detail: GoodsDetail(roomType: "Material",
                                  color: .black, material: "fgd",
                                  dimensions: "csnkc",
                                  weight: "cergve",
                                  titleLabel: "AbocoFur Modern Velvet Fabric Lazy Chair")
             )
    
        ]
    
    }

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      goodsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! GoodsTableViewCell
        cell.setData(image: goodsList[indexPath.row].largeImage,
                     name:  goodsList[indexPath.row].name,
                     count: goodsList[indexPath.row].count)
        
        return cell
    }
}
    
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        let vc = GoodsDetailViewController()
        vc.goodsDetail = goodsList[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
    

//
//  DemoListController.swift
//  KTCycleScrollViewDemo
//
//  Created by KT on 2017/4/19.
//  Copyright © 2017年 KT. All rights reserved.
//
//  Github地址：https://github.com/KeenTeam1990/KTCycleScrollView.git

import UIKit

 var dataArr = NSArray()

class DemoListController: UIViewController
{
    lazy var tableView:UITableView = UITableView(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: self.view.bounds.height), style: .plain)
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        title = "KTCycleScrollView"
        view.addSubview(tableView)
        setDataSource()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

func setDataSource(){

   dataArr = ["本地图片","网络URL","支持StoryBoard创建","不无限轮播","不显示pageControl", "知乎日报效果"]
  
}


// MARK: - tableView delegate / dataSource
extension DemoListController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "CELL")
        cell.textLabel?.text =  String(describing: dataArr[indexPath.row])
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0000001
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            navigationController?.pushViewController(LocalImgController(), animated: true)
        case 1:
            navigationController?.pushViewController(ServerImgController(), animated: true)
        case 2:
            
            let SBVC:SBController = UIStoryboard.init(name: "StoryBoardController", bundle: nil).instantiateInitialViewController() as! SBController
            navigationController?.pushViewController(SBVC, animated: true)
        case 3:
            navigationController?.pushViewController(NoEndlessController(), animated: true)
        case 4:
            navigationController?.pushViewController(NoPageControlController(), animated: true)
        case 5:
            navigationController?.pushViewController(ZhiHuController(), animated: true)
        default:
           break
        }
    }
}





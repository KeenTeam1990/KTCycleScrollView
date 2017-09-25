//
//  ServerImgController.swift
//  KTCycleScrollViewDemo
//
//  Created by KT on 2017/5/12.
//  Copyright © 2017年 KT. All rights reserved.
//
//  Github地址：https://github.com/KeenTeam1990/KTCycleScrollView.git

import UIKit

class NoEndlessController: UIViewController
{
    var cycleScrollView:KTCycleScrollView?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "不无限轮播"
        
        let height = 520 * kScreenWidth / 1080.0
        let frame = CGRect(x: 0, y: 64, width: kScreenWidth, height: height)
        let serverImages = ["http://p.lrlz.com/data/upload/mobile/special/s252/s252_05471521705899113.png",
                            "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007678060723.png",
                            "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007587372591.png",
                            "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007388249407.png",
                            "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007470310935.png"]
        cycleScrollView = KTCycleScrollView(frame: frame, type: .SERVER, imgs: serverImages)
        view.addSubview(cycleScrollView!)
        cycleScrollView?.delegate = self
        cycleScrollView?.isEndlessScroll = false
    }
}

extension NoEndlessController: KTCycleScrollViewDelegate
{
    /// 点击图片回调
    func cycleScrollViewDidSelect(at index:Int, cycleScrollView:KTCycleScrollView)
    {
        print("点击了第\(index+1)个图片")
    }
    /// 图片滚动回调
    func cycleScrollViewDidScroll(to index:Int, cycleScrollView:KTCycleScrollView)
    {
        print("滚动到了第\(index+1)个图片")
    }
}


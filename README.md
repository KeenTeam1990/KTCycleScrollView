![image](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/appicon.png)

#####[ 超简单！！！ 一行代码设置状态栏、导航栏按钮、标题、颜色、透明度，移动等]
------------------------------------------------------------

## Requirements
- iOS 8+
- Xcode 8+


## Demo 

---
知乎日报

![知乎日报](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/知乎日报.gif)

---
本地图片轮播

![本地图片轮播](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/本地图片轮播.gif)

---
网络图片轮播

![网络图片轮播](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/网络图片轮播.gif)

---
StoryBoard创建

![StoryBoard创建](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/StoryBoard创建.gif)

---
不无限轮播

![不无限轮播](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/不无限轮播.gif)

---
不显示pageControl

![不显示pageControl](https://github.com/KeenTeam1990/KTCycleScrollView/blob/master/screenshots/不显示pageControl.gif)


## Installation 

> **手动拖入**
> 将 KTCycleScroll 文件夹拽入项目中即可使用

## How To Use

<pre><code>
var cycleScrollView:KTCycleScrollView?
let height = 520 * kScreenWidth / 1080.0
let frame = CGRect(x: 0, y: 150, width: kScreenWidth, height: height)
// 可加载网络图片或者本地图片
let serverImages = ["http://p.lrlz.com/data/upload/mobile/special/s252/s252_05471521705899113.png",              "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007678060723.png",                  "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007587372591.png",                    "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007388249407.png",                    "http://p.lrlz.com/data/upload/mobile/special/s303/s303_05442007470310935.png"]
// 构造方法
cycleScrollView = KTCycleScrollView(frame: frame, type: .SERVER, imgs: serverImages)
view.addSubview(cycleScrollView!)
// 添加代理
cycleScrollView?.delegate = self
</code></pre>

代理方法
<pre><code>
extension ServerImgController: KTCycleScrollViewDelegate
{
    /// 点击图片事件
    func cycleScrollViewDidSelect(at index:Int, cycleScrollView:WRCycleScrollView)
    {
        print("点击了第\(index+1)个图片")
    }
    
    /// 图片滚动事件
    func cycleScrollViewDidScroll(to index:Int, cycleScrollView:WRCycleScrollView)
    {
        print("滚动到了第\(index+1)个图片")
    }
}
</code></pre>


# Contact me
- 简书: [简书](http://www.jianshu.com/u/77e9dc523648)
- GitHub: [GitHub](https://github.com/KeenTeam1990)
- Email:  KeenTeam@163.com
- QQ：812144991

# License

KTCycleScrollView is available under the MIT license. See the LICENSE file for more info.


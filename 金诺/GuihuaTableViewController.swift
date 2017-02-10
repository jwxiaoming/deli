//
//  GuihuaTableViewController.swift
//  Dexi
//
//  Created by jack on 17/2/9.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class GuihuaTableViewController: UITableViewController {
    
    var guihuashuzu = [
        shuzu(name: "咖啡胡同", tupian: "cafedeadend.jpg", miaoshu: "香港", leixing: "咖啡 & 茶店", src: "http://www.baidu.com"),
        shuzu(name: "霍米", tupian: "homei.jpg", miaoshu: "香港", leixing: "咖啡", src: "http://www.baidu.com"),
        shuzu(name: "茶.家", tupian: "teakha.jpg", miaoshu: "香港", leixing: "茶屋", src: "http://www.baidu.com"),
        shuzu(name: "洛伊斯咖啡", tupian: "cafeloisl.jpg", miaoshu: "香港", leixing: "奥地利式 & 休闲饮料", src: "http://www.baidu.com"),
        shuzu(name: "贝蒂生蚝", tupian: "petiteoyster.jpg", miaoshu: "香港", leixing: "法式", src: "http://www.baidu.com"),
        shuzu(name: "福奇餐馆", tupian: "forkeerestaurant.jpg", miaoshu: "香港", leixing: "面包房", src: "http://www.baidu.com"),
        shuzu(name: "阿波画室", tupian: "posatelier.jpg", miaoshu: "香港", leixing: "面包房", src: "http://www.baidu.com"),
        shuzu(name: "伯克街面包坊", tupian: "bourkestreetbakery.jpg", miaoshu: "悉尼", leixing: "巧克力", src: "http://www.baidu.com"),
        shuzu(name: "黑氏巧克力", tupian: "haighschocolate.jpg", miaoshu: "悉尼", leixing: "咖啡", src: "http://www.baidu.com"),
        shuzu(name: "惠灵顿雪梨", tupian: "palominoespresso.jpg", miaoshu: "悉尼", leixing: "美式 & 海鲜", src: "http://www.baidu.com"),
        shuzu(name: "北州", tupian: "upstate.jpg", miaoshu: "纽约", leixing: "美式", src: "http://www.baidu.com"),
        shuzu(name: "布鲁克林塔菲", tupian: "traif.jpg", miaoshu: "纽约", leixing: "美式", src: "http://www.baidu.com"),
        shuzu(name: "格雷厄姆大街肉", tupian: "grahamavenuemeats.jpg", miaoshu: "纽约", leixing: "早餐 & 早午餐", src: "http://www.baidu.com"),
        shuzu(name: "华夫饼 & 沃夫", tupian: "wafflewolf.jpg", miaoshu: "纽约", leixing: "法式 & 茶", src: "http://www.baidu.com"),
        shuzu(name: "五叶", tupian: "fiveleaves.jpg", miaoshu: "纽约", leixing: "咖啡 & 茶", src: "http://www.baidu.com"),
        shuzu(name: "眼光咖啡", tupian: "cafelore.jpg", miaoshu: "纽约", leixing: "拉丁美式", src: "http://www.baidu.com"),
        shuzu(name: "忏悔", tupian: "confessional.jpg", miaoshu: "纽约", leixing: "西班牙式", src: "http://www.baidu.com"),
        shuzu(name: "巴拉菲娜", tupian: "barrafina.jpg", miaoshu: "伦敦", leixing: "西班牙式", src: "http://www.baidu.com"),
        shuzu(name: "多尼西亚", tupian: "donostia.jpg", miaoshu: "伦敦", leixing: "西班牙式", src: "http://www.baidu.com"),
        shuzu(name: "皇家橡树", tupian: "royaloak.jpg", miaoshu: "伦敦", leixing: "英式", src: "http://www.baidu.com"),
        shuzu(name: "泰咖啡", tupian: "thaicafe.jpg", miaoshu: "伦敦", leixing: "泰式", src: "http://www.baidu.com")
    ]


    @IBOutlet weak var banner: UIImageView!
    @IBOutlet weak var thumimage: UIImageView!
    @IBOutlet weak var biaoti: UILabel!
    @IBOutlet weak var leixing: UILabel!
    @IBOutlet weak var miaoshu: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return guihuashuzu.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("guihuacell", forIndexPath: indexPath) as! GuihuaTableViewCell
        

        // Configure the cell...
        cell.thumimage.image = UIImage(named: guihuashuzu[indexPath.row].tupian)
        cell.timu.text = guihuashuzu[indexPath.row].name
        cell.leixing.text = guihuashuzu[indexPath.row].leixing
        cell.miaoshu.text = guihuashuzu[indexPath.row].miaoshu

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "guihuazhuang" {
            let dest = segue.destinationViewController as! UIWebViewController
            dest.lianjiezhi = guihuashuzu[tableView.indexPathForSelectedRow!.row]
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}

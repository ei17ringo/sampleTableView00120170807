//
//  ViewController.swift
//  sampleTableView001
//
//  Created by Eriko Ichinohe on 2017/09/06.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

//　1.プロトコルの設定（DetaSource,Delegate）
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //4.TableViewに指示を出すのがViewControllerだと設定する
        //Delegate ,Datasource
        //myTableView.dataSource = self
        //Storyboadで設定する方法
        
        //5.tableViewにCellオブジェクトを追加し、identifierに「Cell」という名前をつける
    }
    
    // 2. 行数の決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // 3.リストに表示する文字列を決定し、表示
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //文字を表示するセルの取得（セルの再利用）
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示したい文字の設定 indexPath.rowが行番号を表す
        cell.textLabel?.text = "\(indexPath.row)行目"
        
        //文字を設定したセルを返す
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


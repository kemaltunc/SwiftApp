//
//  PostVC.swift
//  SwiftMVMM
//
//  Created by Kemal TUNÇ on 30.07.2020.
//  Copyright © 2020 Kemal TUNÇ. All rights reserved.
//

import UIKit

class PostVC: BaseVC<PostVM> {
    
    
    var posts = [PostEntity]()
    
    private let table: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.separatorStyle = .none
        table.showsVerticalScrollIndicator = false
        //table.allowsSelection = false
        
        table.register(UINib(nibName: PostCell.identifier, bundle: nil), forCellReuseIdentifier: PostCell.identifier)
        
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getPost()
        
        viewModel.post.observe { data in
            self.posts = data
            self.table.reloadData()
        }
        
    }
    
    override func initUI() {
        super.initUI()
        
        view.addSubview(table)
        table.delegate = self
        table.dataSource  = self
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        table.frame = view.bounds
    }
}

extension PostVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.identifier,for:indexPath) as! PostCell
        
        let item = posts[indexPath.row]
        
        cell.title.text = item.title
        
        if(item.completed){
            cell.completed.text = "Yes"
        }else{
            cell.completed.text = "No"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected \(posts[indexPath.row].title)")
    }
}

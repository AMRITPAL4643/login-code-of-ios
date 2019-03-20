//
//  StudentDisplayViewController.swift
//  simple login
//
//  Created by Amrit on 2019-03-19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class StudentDisplayViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var setStudentData = Array<storeStudentData>()
    @IBOutlet weak var displaytable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setstudentdataArray()
        self.displaytable.delegate = self
        self.displaytable.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func setstudentdataArray(){
        setStudentData.append(storeStudentData(studentFirstName: "Amritpal",studentLastName: "Singh"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.setStudentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell") as! studentdataTableViewCell
        let y = setStudentData[indexPath.row]
        cell.firstname.text = y.studentFirstName
        cell.lastname.text = y.studentLastName
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

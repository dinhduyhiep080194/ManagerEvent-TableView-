//
//  ManagementEventsTableViewController.swift
//  ManagerEvent(TableView)
//
//  Created by cntt17 on 5/13/17.
//  Copyright © 2017 cntt17. All rights reserved.
//

import UIKit

class ManagementEventsTableViewController: UITableViewController {
    
    // Biến lấy dữ liệu từ model qua
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Management Events"     // Đặt tên cho tiêu đề của View
        self.navigationItem.leftBarButtonItem = self.editButtonItem     // Đặt nút Edit lên View
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Số section hiển thị
    override func numberOfSections(in tableView: UITableView) -> Int {
        return eventLines.count
    }
    
    // Số hàng trong một section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let eventLine = eventLines[section]
        return eventLine.events.count
    }
    
    // Sửa nội dung cho từng ô
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)
        
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]               
        
        // Đưa tên và chi tiết sự kiện để hiển thị ra các ô
        cell.textLabel?.text = event.title
        cell.detailTextLabel?.text = event.description
        
        return cell
    }
    
    // Set tiêu đề cho từng section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let eventLine = eventLines[section]
        return eventLine.day
    }
    
    // Hàm xử lý lí delete sự kiện
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {
        let eventLine1 = eventLines[fromIndexPath.section]
        let eventLine2 = eventLines[toIndexPath.section]
        let event = eventLine1.events[fromIndexPath.row]
        eventLine1.events.remove(at: fromIndexPath.row)
        eventLine2.events.insert(event, at: toIndexPath.row)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case "EventDetail":
                let eventDetailVC = segue.destination as! EventDetailTableViewController
                if let indexPath = self.tableView.indexPathForSelectedRow {
                    eventDetailVC.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                    eventDetailVC.dayDetail = dayAtIndexPath(indexPath: indexPath as NSIndexPath)
                }
                break
                
            default:
                break
            }
        }
    }
    
    // MARK: - Helper Method
    
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event
    {
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
    func dayAtIndexPath(indexPath: NSIndexPath) -> String
    {
        let eventLine = eventLines[indexPath.section]
        return eventLine.day
    }
    
}

//
//  Event.swift
//  ManagerEvent(TableView)
//
//  Created by cntt17 on 5/13/17.
//  Copyright © 2017 cntt17. All rights reserved.
//

import UIKit

class Event
{
    var title: String     // Khai bao lop Event gom 2 thông tin này
    var description: String
    
    
    init(titled: String, description: String)
    {
        self.title = titled
        self.description = description
    }
}

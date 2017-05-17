//
//  EventLine.swift
//  ManagerEvent(TableView)
//
//  Created by cntt17 on 5/13/17.
//  Copyright © 2017 cntt17. All rights reserved.
//

import Foundation
import UIKit

class EventLine
{
    var day: String         // Khai báo biến lưu thông tin các ngày trong tuần
    var events: [Event]     // Khai báo mảng sự kiện theo ngày
    
    init(daysOfWeek: String, includeEvents: [Event])
    {
        day = daysOfWeek
        events = includeEvents
    }
    
    // Hàm trả về các sự kiện trong tuần
    class func eventLines() -> [EventLine] {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thusday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    private class func Monday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Monday
        
        // Các sự kiện trong ngày Monday
        events.append(Event(titled: "Thể dục", description: "Hít đất 30 cái, gập bụng 2 lần 60 cái !"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Sáng học phân tích thiết kế hệ thống thông tin !"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Chiều học hệ thống nhúng !"))
        events.append(Event(titled: "Học ở Planet", description: " Tối học anh văn, chú ý giao tiếp, ngữ pháp !"))
        events.append(Event(titled: "Làm bài tập Enghlish", description: "Chú ý ngữ pháp, đọc, ghi nhớ từ mới !"))
        
        return EventLine(daysOfWeek: "Monday", includeEvents: events)
        
    }
    
    private class func Tuesday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Tuesday
        
        // Các sự kiện trong ngày Tuesday
        events.append(Event(titled: "Thể dục", description: "Hít đất 32 cái !"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Sáng học cơ sở dữ liệu phân tán !"))
        events.append(Event(titled: "Học tại phòng 14h-17h", description: "Ôn bài vừa học về CSDLPT, Làm bài tập IOS !"))
        
        return EventLine(daysOfWeek: "Tuesday", includeEvents: events)
    }
    
    private class func Wednesday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Wednesday
        
        // Các sự kiện trong ngày Wednesday
        events.append(Event(titled: "Thể dục", description: "Hít đất 34 cái, gập bụng 2 lần 62 cái !"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Sáng học truy tìm thông tin !"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Chiều học IOS !"))
        events.append(Event(titled: "Học tại phòng", description: "Tối ôn bài vừa học môn TTTT, IOS, Làm bài tập IOS !"))
        events.append(Event(titled: "Học môn CSDL", description: "Ôn kĩ các dạng bài tập !"))
        events.append(Event(titled: "Học ở Planet", description: " Tối học anh văn, chú ý giao tiếp, ngữ pháp !"))
        events.append(Event(titled: "Làm bài tập Enghlish", description: "Chú ý ngữ pháp, đọc, ghi nhớ từ mới !"))
        
        return EventLine(daysOfWeek: "Wednesday", includeEvents: events)
    }
    
    private class func Thusday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Thusday
        
        // Các sự kiện trong ngày Thusday
        events.append(Event(titled: "Thể dục", description: "Hít đất 36 cái !"))
        events.append(Event(titled: "Học tại phòng", description: "Sáng giải các đề thi cuối kì môn CSDL"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Chiều học cơ sở dữ liệu !"))
        events.append(Event(titled: "Làm bài tập Enghlish", description: "Chú ý ngữ pháp, đọc, ghi nhớ từ mới !"))
        events.append(Event(titled: "Học IOS", description: "Xem hiểu code, đặt câu hỏi !"))
        return EventLine(daysOfWeek: "Thusday", includeEvents: events)
    }
    
    
    private class func Friday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Friday
        
        // Các sự kiện trong ngày Friday
        events.append(Event(titled: "Thể dục", description: "Hít đất 38 cái, gập bụng 2 lần 64 cái !"))
        events.append(Event(titled: "Ôn thi", description: "Giải thật nhanh các bài tập môn Hệ Điều Hành!"))
        events.append(Event(titled: "Học ở Planet", description: " Tối học anh văn, chú ý giao tiếp, ngữ pháp !"))
        events.append(Event(titled: "Làm bài tập Enghlish", description: "Chú ý ngữ pháp, đọc, ghi nhớ từ mới !"))
        return EventLine(daysOfWeek: "Friday", includeEvents: events)
    }
    
    private class func Saturday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Saturday
        
        // Các sự kiện trong ngày Saturday
        events.append(Event(titled: "Thể dục", description: "Hít đất 40 cái !"))
        events.append(Event(titled: "Đi học ở SPKT", description: "Học IOS chăm vào dùm cái !"))
        events.append(Event(titled: "Học", description: "Học môn điện toán đám mây !"))
        events.append(Event(titled: "Học lại bài IOS", description: "Tối ưu code và đặt câu hỏi !"))
        events.append(Event(titled: "Ôn tất cả từ mới", description: "Ôn lại những từ mới đã học trong ngày!"))
        return EventLine(daysOfWeek: "Saturday", includeEvents: events)
    }
    
    private class func Sunday() -> EventLine
    {
        var events = [Event]()      // Mảng lưu các sự kiện trong ngày Sunday
        
        // Các sự kiện trong ngày Sunday
        events.append(Event(titled: "Thể dục", description: "Hít đất 42 cái, gập bụng 2 lần 66 cái !"))
        events.append(Event(titled: "Ôn thi", description: "Ôn kĩ môn truy tìm thông tin !"))
        events.append(Event(titled: "Làm project", description: " Tra mạng, nghiên cứu và làm !"))
        events.append(Event(titled: "Học IOS", description: " Làm bài tập tuần nộp !"))
        return EventLine(daysOfWeek: "Sunday", includeEvents: events)
    }
}

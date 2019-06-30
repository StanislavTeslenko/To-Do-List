//
//  ToDo.swift
//  To Do List
//
//  Created by Stanislav Teslenko on 6/26/19.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import UIKit

class ToDo {
    
    var title: String
    var isComplete: Bool
    var dueData: Date
    var notes: String?
    var image: UIImage?
    
    init (
        title: String = "",
        isComplete: Bool = false,
        dueData: Date = Date(),
        notes: String? = nil,
        image: UIImage? = nil
    ){
        self.title = title
        self.isComplete = isComplete
        self.dueData = dueData
        self.notes = notes
        self.image = image
    }
    
    var capitalizedKeys: [String] {
        return keys.map { $0.capitalizedWithSpaces }
    }
    
    var keys: [String] {
        return Mirror(reflecting: self).children.compactMap { $0.label }
    }
    
    var values: [Any?] {
        return Mirror(reflecting: self).children.map { $0.value }
    }
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        
        return formatter.string(from: dueData)
    }
}

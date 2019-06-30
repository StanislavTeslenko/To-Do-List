//
//  DateCell.swift
//  To Do List
//
//  Created by Stanislav Teslenko on 6/30/19.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

import UIKit

class DateCell: UITableViewCell {

    @IBOutlet var label : UILabel!
    
    func setDate(_ date: Date) {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        label.text = formatter.string(from: date)
    }
}

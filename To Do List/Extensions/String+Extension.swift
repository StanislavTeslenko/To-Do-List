//
//  String+Extension.swift
//  To Do List
//
//  Created by Stanislav Teslenko on 6/26/19.
//  Copyright © 2019 Stanislav Teslenko. All rights reserved.
//

extension String {
    
    var capitalizedWithSpaces: String {
        let withSpaces = reduce("") { result, character in
            character.isUppercase ? "\(result) \(character)" : "\(result)\(character)"
        }
        
        return withSpaces.capitalized
    }
    
    
}

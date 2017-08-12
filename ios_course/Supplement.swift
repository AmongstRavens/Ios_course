//
//  Supplement.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import Foundation


class Supplement{
    var content : String?
    var title : String?
    
    init(title : String?, content : String?){
        self.content = content
        self.title = title
    }
    
    func printYourself(){
        print("\(title) : \n \(content)")
    }
}

struct SupplementsCache{
    static var supplements = [Supplement]()
}

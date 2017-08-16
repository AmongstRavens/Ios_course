//
//  Supplement.swift
//  ios_course
//
//  Created by Sergey on 8/12/17.
//  Copyright © 2017 Sergey. All rights reserved.
//

import Foundation
import UIKit

struct Cache{
    static var supplements = [Supplement]()
    static var lectures = [Lecture]()
    static var homeworks = [Homework]()
    static var lessons = [Lesson]()
}

class Supplement{
    var title : String
    var content : String
    init(title : String, content: String) {
        self.title = title
        self.content = content
    }
    
}

class Lecture{
    var image : UIImage
    var description : String
    init(image : UIImage, description: String){
        self.image = image
        self.description = description
    }
    
}

class Homework{
    var date : Date?
    var image : UIImage
    init(image : UIImage, date : Date?){
        self.date = date
        self.image = image
    }
}

class Lesson{
    var image : UIImage
    init(image : UIImage){
        self.image = image
    }
}

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

class StudyingEntities{
    var title : String
    var description : String
    var images = [UIImage]()
    var timeStamp : Date?

    
    init(title : String, description : String, timeStamp : Date?){
        self.timeStamp = timeStamp
        self.description = description
        self.title = title
    }

}


class Supplement : StudyingEntities{
    var lecture : Lecture?
    init(title : String, description: String, lecture : Lecture?, timeStamp : Date?) {
        self.lecture = lecture
        super.init(title : title, description : description, timeStamp : timeStamp)
    }
    
}

class Lecture : StudyingEntities{
    var teacher : String
    init(title : String, description: String, teacher : String, timeStamp : Date?) {
        self.teacher = teacher
        super.init(title : title, description : description, timeStamp : timeStamp)
    }
    
}

class Homework : StudyingEntities{
    var owner : String
    init(title : String, description: String, owner : String, timeStamp : Date?) {
        self.owner = owner
        super.init(title : title, description : description, timeStamp : timeStamp)
    }
    
}

class Lesson : StudyingEntities{
    var teacher : String
    init(title : String, description: String, teacher : String, timeStamp : Date?) {
        self.teacher = teacher
        super.init(title : title, description : description, timeStamp : timeStamp)
    }
}

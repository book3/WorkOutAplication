//
//  Resources.swift
//  WorkOutAplication
//
//  Created by Yntymak on 12/11/22.
//

import Foundation
import UIKit

enum R {
    enum Colors {
        static var active = UIColor(hexString: "#447BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondary = UIColor(hexString: "#F0F3FF")
        
        static var titleGray = UIColor(hexString: "#545C77")
        static var background = UIColor(hexString: "#F8F9F9")
        
    }
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return  "Progress"
                case .settings: return  "Settings"
                }
            }
        }
        
        enum NavBar{
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview{
            static var allWorkoutsButton = "All Workouts"
        }
        
        enum Sessions{
            static let navBarStart = "Start   "
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
        }
        enum Progress{
            static let navbarLeft = "Export"
            static let navbarRight = "Details"
        }
    }
    enum Images {
        enum TabBar{
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab{
                case .overview: return resizeImage(image: UIImage(named: "overview_tab")!)
                case .session:  return resizeImage(image: UIImage(named: "session_tab")!)
                case .progress: return resizeImage(image: UIImage(named: "progress_tab")!)
                case .settings: return resizeImage(image: UIImage(named: "settings_tab")!)
                }
            }
        }
        enum Common{
            static var downArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont{
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}

func resizeImage(image: UIImage) -> UIImage? {
    let size = image.size
    
    let widthRatio  = 0.5
    let heightRatio = 0.5
    
    // Figure out what our orientation is, and use that to form the rectangle
    var newSize: CGSize
    if(widthRatio > heightRatio) {
        newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
    } else {
        newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
    }
    
    // This is the rect that we've calculated out and this is what is actually used below
    let rect = CGRect(origin: .zero, size: newSize)
    
    // Actually do the resizing to the rect using the ImageContext stuff
    UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
    image.draw(in: rect)
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return newImage
}

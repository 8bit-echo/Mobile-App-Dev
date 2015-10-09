 import UIKit
 import Foundation
 
//let date = NSDate()
//let calendar = NSCalendar.currentCalendar()
//let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitMonth | .CalendarUnitYear | .CalendarUnitDay, fromDate: date)
//var hour = components.hour
//let minutes = components.minute
//var meridiem = "am"
//var in24HourTime = true
//let minutesUnder10 = ("0",minutes)
//let (zero, min) = minutesUnder10
 

 
 
//12 HOUR TIME
 
//in24HourTime = false
 
 
 // FIX MIDNIGHT
// if !in24HourTime && hour == 0 {
//    hour = 12
//    meridiem = "am"
// }
// 
// // IT'S AFTER NOON
// if !in24HourTime && hour > 13{
//    meridiem = "pm"
// }
// 
//// FIX 0 MINUTE TIME
// if !in24HourTime && minutes < 10 {
//    println("The current time is \(hour):\(zero)\(min)\(meridiem)")
// }else if !in24HourTime{
//    println("The current time is \(hour):\(min)\(meridiem)")
// }
// 
//
// 
// // 24 HOUR TIME
// 
// 
// if hour == 0 {
//    let midnight = "00"
//    println("The current time is \(midnight):\(zero)\(min)")
// }
// 
// if in24HourTime && minutes < 10 && hour < 10{
//    
// println("The current time is \(zero)\(hour):\(zero)\(min)")
//    
// }else if in24HourTime && hour < 10{
//    
//    println("The current time is \(zero)\(hour):\(min)")
//    
// }else if in24HourTime{
//    println("The current time is \(hour):\(min)")
// }
// 

 func getDate() -> (hours: Int, minutes: Int, seconds: Int){
 let date2 = NSDate()
 let calendar2 = NSCalendar.currentCalendar()
 let formatter = NSDateFormatterStyle.MediumStyle
 
 let components = calendar2.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond, fromDate: date2)
 var hour = components.hour
 let minute = components.minute
 let second = components.second

return (hours: hour, minutes: minute, seconds: second)
 }
 
 let timeTuple = getDate()
 
var returnedHour = timeTuple.hours
var returnedMin = timeTuple.minutes
timeTuple.seconds
 
 
 
 if returnedHour > 12 {
    returnedHour = returnedHour % 12
 }else if returnedHour == 0 {
    returnedHour = 12
 }
 
 let hourHandRotation = returnedHour * 30
 let minuteHandRotation = returnedMin * 12
 
 

 

 
 
 
 
 
 
 
 
 


 
 
 
 
 
 

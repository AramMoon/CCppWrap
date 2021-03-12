//
//  ViewController.swift
//  CCppWrap
//
//  Created by 28850809 on 03/04/2021.
//  Copyright (c) 2021 28850809. All rights reserved.
//

import UIKit
import WrapSwift
import WrapObjC

class ViewController: UIViewController {

    @IBAction func libAction(_ sender: Any) {
        // Swift Library Test
        let swiftItem = SwiftWrap()
        swiftItem.call()
        
        // Objectiv C Library Test
        let item = CppWrapper()
        let limit = 10
        var foundCount = 0 as Int64
        var arrayData = Array(repeating: 1 as Int64, count: limit)
        
        item.setIntArray(Int64(limit), inArray: &arrayData, outCount: &foundCount)
        
        let r = item.getIntArray()
        print(foundCount)
        for i in 0..<Int(foundCount){
            print(r?[i] ?? "nil")
        }
        
        // Struct and Nested Struct Test
        var strokes: [StrokeObj] = []
        for i in 0..<10{
            var dots: [DotObj] = []
            for j in 0..<i+1{
                let d = DotObj(x: Int32(j), y: Int32(j))
                dots.append(d)
            }
            let s = StrokeObj(name: Int32(i), uuid: Int32(i), dot: &dots)
            strokes.append(s)
        }
    
        item.setStroke(Int64(strokes.count), inArray: &strokes, outCount: &foundCount)
        let st = item.getStroke()
        print(foundCount, st?[0] ?? "nil" , st?[strokes.count-1] as Any)
    }
    
    @IBAction func cAction(_ sender: Any) {
        // C Direct Call
        let inputRoomCount = 3
        var rooms: [Room] = []
        var users: [[User]] = Array(repeating: [], count: inputRoomCount)
        print(MemoryLayout<Room>.size, MemoryLayout<User>.size)
        
        for i in 0..<inputRoomCount {
//            var ptr = UnsafeMutablePointer<User>.allocate(capacity: i)
            for j in 0...i {
                let user = User(userNo: j)
                users[i].append(user)
//                ptr[j].userNo = j
                print("Room", i, "User", j)
            }
 
            let pointer: UnsafeMutablePointer<User> = UnsafeMutablePointer(mutating: users[i])
            let room = Room(roomNo: i, users: pointer, userCount: users.count)
            print("Room", room)
            rooms.append(room)

        }
        print("================")
        print("================")
        var roomCount = 0
        let roomPointer = moveRoom(rooms.count, &rooms, &roomCount)
        let roomBufferPointer = UnsafeMutableBufferPointer(start: roomPointer, count: roomCount)
        for rr in roomBufferPointer {
            print("Room", rr)
            let userBufferPointer = UnsafeMutableBufferPointer(start: rr.users, count: rr.userCount)
            for ru in userBufferPointer {
                print("User", ru)
            }
        }
    }
    
    @IBAction func cReadAction(_ sender: Any) {
        
    }
    
    @IBAction func cClearAction(_ sender: Any) {
        
    }
    
    func memoryTest() {
        var u1 = User(userNo: 1)
        var u2 = u1
        u2.userNo = 2
        print(u1, u2)
        
        var a1 = [1,2]
        var a2 = a1
        a2[1] = 3
        print(a1, a2)
        printPointer(a1)
        printPointer(a2)

    }
    
    func printPointer(_ v: Any){
        withUnsafePointer(to: v) { p in
            print(p)
        }
    }
}


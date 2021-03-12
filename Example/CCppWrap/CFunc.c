//
//  CFunc.c
//  CCppWrap_Example
//
//  Created by Aram Moon on 2021/03/04.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

#include "CFunc.h"

long factorial(int n) {
    if (n == 0 || n == 1) return 1;
    return n * factorial(n-1);
}

Room* moveRoom(long loomCount, Room* rooms, long* rCount){
    rCount[0] = loomCount;
    for (int i = 0; i < loomCount; i++){
        for (int j = 0; j < rooms[i].userCount; j++) {
            printf("[C] %ld, %ld\n", rooms[i].roomNo, rooms[i].users[j].userNo);
        }
    }
    return rooms;
}


//
//  CFunc.h
//  CCppWrap_Example
//
//  Created by Aram Moon on 2021/03/04.
//  Copyright © 2021 CocoaPods. All rights reserved.
//
typedef struct _User
{
    long userNo;
} User;

typedef struct _Room
{
    long roomNo;
    User* users;
    long userCount;
} Room;

#ifndef CFunc_h
#define CFunc_h

#include <stdio.h>
long factorial(int n);
Room* moveRoom(long loomCount, Room* rooms, long* rCount);
#endif /* CFunc_h */

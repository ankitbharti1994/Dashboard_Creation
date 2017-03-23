//
//  MainItem.m
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "PrefixHeader.pch"

@implementation MainItem

-(instancetype)initWithTitle:(NSString *)title image:(NSString *)imageName {
    self.title=title;
    self.imageName=imageName;
    return self;
}

@end

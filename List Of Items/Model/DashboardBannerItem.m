//
//  DashboardBannerItem.m
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "PrefixHeader.pch"

@implementation DashboardBannerItem

-(instancetype)initWithTitle:(NSString *)title image:(NSString *)imageName pageIndex:(NSInteger)pageIndex {
    self.title=title;
    self.imageName=imageName;
    self.currentPageIndex=pageIndex;
    return self;
}

@end

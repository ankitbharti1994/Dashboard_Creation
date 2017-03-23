//
//  DashboardBannerCell.m
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "PrefixHeader.pch"

@implementation DashboardBannerCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)configureCell:(DashboardBannerItem *)bannerItem {
    self.imageView.image=[UIImage imageNamed:bannerItem.imageName];
    self.itemLabel.text=[bannerItem title];
    self.currentPage.currentPage=bannerItem.currentPageIndex;
}

@end

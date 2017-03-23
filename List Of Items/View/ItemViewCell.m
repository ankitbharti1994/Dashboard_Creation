//
//  ItemViewCell.m
//  List Of Items
//
//  Created by ankit bharti on 23/03/17.
//  Copyright © 2017 KaHa. All rights reserved.
//

#import "PrefixHeader.pch"
#define CELL_IDENTIFIER @"InsiderItemCell"

@interface ItemViewCell ()
{
    NSMutableArray *movieArr;
}
@end

@implementation ItemViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCell:(NSArray *)itemArray {
    movieArr=[itemArray mutableCopy];
    [self.insiderCollectionView reloadData];
}

#pragma mark <UICollectionViewDataSource> method

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return movieArr.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    InsiderItemViewCell *cell=(InsiderItemViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:CELL_IDENTIFIER forIndexPath:indexPath];
    [cell configureCell:[movieArr objectAtIndex:indexPath.row]];
    [cell layoutIfNeeded];
    return cell;
}

#pragma mark <UICollectionViewDelegate> method

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(160,180);
}

@end

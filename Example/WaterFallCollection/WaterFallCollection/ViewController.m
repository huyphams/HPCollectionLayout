//
//  ViewController.m
//  WaterFallCollection
//
//  Created by Huy Pham on 6/28/14.
//  Copyright (c) 2014 Huy Pham. All rights reserved.
//

#import "ViewController.h"
#import "HPCollectionLayout.h"

@interface ViewController ()
    <HPCollectionLayoutDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) HPCollectionLayout *collectionViewLayout;

@end

@implementation ViewController

- (HPCollectionLayout *)collectionViewLayout {
    if (!_collectionViewLayout) {
        _collectionViewLayout = [[HPCollectionLayout alloc] init];
        _collectionViewLayout.sectionInset = UIEdgeInsetsMake( 0, 10, 10, 10);
    }
    return _collectionViewLayout;
}

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds
                                             collectionViewLayout:self.collectionViewLayout];
        [_collectionView setContentInset:UIEdgeInsetsMake(20, 0, 10, 0)];
        [_collectionView registerClass:[UICollectionViewCell class]
            forCellWithReuseIdentifier:@"Block"];
        [_collectionView setDataSource:self];
        [_collectionView setDelegate:self];
        [_collectionView registerClass:[UICollectionReusableView class]
            forSupplementaryViewOfKind:KindSectionHeader
                   withReuseIdentifier:@"header"];
        [_collectionView setBackgroundColor:[UIColor whiteColor]];
    }
    return _collectionView;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
 heightForHeaderInSection:(NSInteger)section {
    return 90;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath {
    UICollectionReusableView *reusableView = nil;
    if ([kind isEqualToString:KindSectionHeader]) {
        reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:KindSectionHeader
                                                          withReuseIdentifier:@"header"
                                                                 forIndexPath:indexPath];
        [reusableView setBackgroundColor:[UIColor purpleColor]];
    }
    return reusableView;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Block"
                                                                           forIndexPath:indexPath];
    [cell setBackgroundColor:[self randomColor]];
    return cell;
}


- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    int w = arc4random() % 100+100;
    int h = arc4random() % 100+100;
    CGSize size = CGSizeMake(w, h);
    return size;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
                     layout:(UICollectionViewLayout *)collectionViewLayout
   numberOfColumnForSection:(NSInteger)section {
    
    return 2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.collectionView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIColor*) randomColor{
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}

@end

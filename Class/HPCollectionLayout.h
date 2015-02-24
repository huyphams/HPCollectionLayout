//
//  HPCollectionLayout.h
//
//
//  Created by Huy Pham on 6/27/14.
//
//

#import <UIKit/UIKit.h>

extern NSString *const KindSectionHeader;
extern NSString *const KindSectionFooter;

@class HPCollectionLayout;

@protocol HPCollectionLayoutDelegate <UICollectionViewDelegate>

@optional

/**
 
 - Config header height
 
 */
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
 heightForHeaderInSection:(NSInteger)section;

/**
 
 - Config footer height
 
 */
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
 heightForFooterInSection:(NSInteger)section;

/**
 
 - Config inset for Section At index path
 
 */
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section;

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForHeaderAtIndex:(NSInteger)section;

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
         insetForFooterAtIndex:(NSInteger)section;
/**
 
 - Config inset for minimum items spacing
 
 */
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex:(NSInteger)section;

@required

/**
 
 - Config Size for item at index path
 
 */
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

/**
 
 - Config number of column in section
 
 */
- (NSInteger)collectionView:(UICollectionView *)collectionView
                     layout:(UICollectionViewLayout *)collectionViewLayout
   numberOfColumnForSection:(NSInteger)section;

@end

@interface HPCollectionLayout : UICollectionViewLayout

// Colum spacing
// Default is 10
@property (nonatomic, assign) CGFloat minimumColumnSpacing;

// Item spacing
// Default is 10
@property (nonatomic, assign) CGFloat minimumInteritemSpacing;

// Section Inset
@property (nonatomic, assign) UIEdgeInsets sectionInset;
@property (nonatomic, assign) UIEdgeInsets headerInset;
@property (nonatomic, assign) UIEdgeInsets footerInset;

// Header height
// Default is 0
@property (nonatomic, assign) CGFloat headerHeight;

// Footer height
// Default is 0
@property (nonatomic, assign) CGFloat footerHeight;

@end

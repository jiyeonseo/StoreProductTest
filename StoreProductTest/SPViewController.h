//
//  SPViewController.h
//  StoreProductTest
//
//  Created by Jiyeon Seo on 12. 10. 8..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

@interface SPViewController : UIViewController<SKStoreProductViewControllerDelegate, SKProductsRequestDelegate>

@property (strong, nonatomic) IBOutlet UIButton *testButton;
- (IBAction)goToStore:(id)sender;

@end

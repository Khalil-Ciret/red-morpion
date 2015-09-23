//
//  ViewController.h
//  Morpion
//
//  Created by Khalil Ciret on 01/09/2015.
//  Copyright (c) 2015 ApertureScience. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModeleMorpion.h"


@interface ViewController : UIViewController
@property (strong,nonatomic) ModeleMorpion *mod ;
@property (weak, nonatomic) IBOutlet UILabel *gagnant;
@property (weak, nonatomic) IBOutlet UIButton *recommencer;
@property(nonatomic) char dernierGagnant;




- (IBAction)action:(id)sender;
-(void) afficherGagnant;
-(void) afficherEgalité;
- (IBAction)recommencer:(id)sender;




@end

//
//  ModeleMorpion.h
//  Morpion
//
//  Created by Khalil Ciret on 01/09/2015.
//  Copyright (c) 2015 ApertureScience. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaseMorpion.h"


@interface ModeleMorpion : NSObject
@property (strong, nonatomic) NSMutableArray *cases;
@property(nonatomic) char tour;



- (void)placerCase: (int)index;
-(id) initWithPremierJoueur:(char) premierJoueur;
-(char)dernierCoupGagnant;
-(void) afficherGrille;
-(void) changerJoueur;









@end

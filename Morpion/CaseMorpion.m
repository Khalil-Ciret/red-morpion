//
//  CaseMorpion.m
//  Morpion
//
//  Created by Khalil Ciret on 01/09/2015.
//  Copyright (c) 2015 ApertureScience. All rights reserved.
//

#import "CaseMorpion.h"

@implementation CaseMorpion
@synthesize proprio = _proprio;

- (void) setproprio:(char)proprio {
    if (proprio== 'O' ||proprio=='X' || proprio =='-')
        _proprio=proprio;
    
}


-(id) init{
    [self setproprio:'-'];
    return self;

    
}




@end

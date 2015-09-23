//
//  modeleMorpion.m
//  Morpion
//
//  Created by Khalil Ciret on 01/09/2015.
//  Copyright (c) 2015 ApertureScience. All rights reserved.
//

#import "modeleMorpion.h"



@implementation ModeleMorpion

-(id)initWithPremierJoueur:(char)premierJoueur {
    self = [super init];
    self.cases = [[NSMutableArray alloc]init];
   if (premierJoueur=='X'|| premierJoueur=='0')
        self.tour=premierJoueur;
    else self.tour= 'O'; //Valeur par défaut
    
    
    for (int i=0; i<9; i++) {
        [self.cases addObject: [[CaseMorpion alloc] init]];
    }
    return self;
}

-(void)placerCase: (int)index{
    [[self.cases objectAtIndex:index] setProprio:self.tour];
}

-(void) afficherGrille{
    
    for(CaseMorpion* casejeu in self.cases)
    {
        NSLog(@"%c",casejeu.proprio);
    }
}

-(void) changerJoueur{
    if(self.tour=='O')
        self.tour='X';
    else self.tour='O';
}

//retourne le joueur gagnant si il y'en a un, le caractère - en cas d'égalité et f si la partie n'est pas encore finie
-(char) dernierCoupGagnant {
    

    
       if (((( [self.cases[0] proprio]==[self.cases[1] proprio]) && ([self.cases[1] proprio]== [self.cases[2] proprio]))&&([self.cases[0] proprio] !='-'))||
        ((( [self.cases[0] proprio]==[self.cases[3] proprio]) && ([self.cases[3] proprio ] == [self.cases[6] proprio]))&&([self.cases[0] proprio] !='-'))||
        (([self.cases[0] proprio]== [self.cases[4]  proprio] && [self.cases[4] proprio]  == [self.cases[8] proprio])&&([self.cases[0] proprio] !='-'))||
        (([self.cases[1] proprio]== [self.cases[4] proprio] && [self.cases[4] proprio] == [self.cases[7] proprio])&&([self.cases[1] proprio] !='-'))||
        (([self.cases[2] proprio]==[self.cases[5] proprio]&& [self.cases[5] proprio]== [self.cases[8] proprio])&&([self.cases[2] proprio] !='-'))||
        (([self.cases[2] proprio] ==[self.cases[4] proprio] && [self.cases[4] proprio ]== [self.cases[6] proprio])&&([self.cases[2] proprio] !='-'))||
        (([self.cases[3] proprio] ==[self.cases[4] proprio] && [self.cases[4] proprio ] == [self.cases[5] proprio]) && ([self.cases[5] proprio] != '-')) ||
        ((([self.cases[6] proprio]==[self.cases[7] proprio]&& [self.cases[7] proprio ]== [self.cases[8] proprio]))&&([self.cases[6] proprio] !='-')))
        
        return self.tour;
    
       else {
           for(CaseMorpion *casem in self.cases)
           {
               if (casem.proprio=='-') return 'f';
           }
       }
    return '-';
}

@end

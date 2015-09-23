//
//  ViewController.m
//  Morpion
//
//  Created by Khalil Ciret on 01/09/2015.
//  Copyright (c) 2015 ApertureScience. All rights reserved.
//

#import "ViewController.h"
#import "modeleMorpion.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.dernierGagnant='-'; // Une valeur par défaut sera choisie par le domaine
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(ModeleMorpion*) mod{
    if (!_mod) _mod =[[ModeleMorpion alloc] initWithPremierJoueur:self.dernierGagnant];
    return _mod;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    

    
    
    [self.mod placerCase:(int)[sender tag]];
    [sender setTitle :[NSString stringWithFormat:@"%c", [self.mod tour]] forState:UIControlStateNormal];
    
    
    if ([self.mod dernierCoupGagnant]==[self.mod tour])
        [self afficherGagnant];
    if ([self.mod dernierCoupGagnant]=='-')
        [self afficherEgalité];
        
    [self.mod changerJoueur];
    [sender setEnabled: NO];
    

}

- (void) afficherGagnant{
    self.gagnant.text= [ NSString stringWithFormat:@"%@%c%@",@"Félicitations! Les ",[self.mod tour],@" ont gagné!"];
    for (int i=0; i<9; i++){
        [(UIButton*)[self.view viewWithTag:i] setEnabled:false];
    }
    self.dernierGagnant=[self.mod tour];
    
    
}

-(void) afficherEgalité{
    self.gagnant.text= @"C'est une égalité. Dommage.";
}







- (IBAction)recommencer:(id)sender {
    for (int i=0; i<9; i++){
        [(UIButton*)[self.view viewWithTag:i] setEnabled:true];
        [(UIButton*)[self.view viewWithTag:i] setTitle:@"-" forState:UIControlStateNormal];
    }
    self.gagnant.text=@"";
    self.mod=nil;
    
    
}
@end

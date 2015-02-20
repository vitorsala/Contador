//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "SecondViewController.h"
@interface SecondViewController () {
      Contador *contador;
}

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador instance];
    contador.delegate = self;
    [self click:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getGirls] + [contador getBoys] ];
}

- (void)passGirls:(int)g Boys:(int)b AndTotal:(int) t{
    NSLog(@"g:%d\nb:%d\nt:%d\n",g,b,t);
    _totalBoys.text = [NSString stringWithFormat: @"%d", b];
    _totalGirls.text = [NSString stringWithFormat: @"%d", g];
    _total.text = [NSString stringWithFormat:@"%d", t];
}

@end

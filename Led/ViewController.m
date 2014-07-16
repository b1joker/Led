//
//  ViewController.m
//  Led
//
//  Created by Gin on 7/15/14.
//  Copyright (c) 2014 Nguyễn Huỳnh Lâm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
{
    __weak IBOutlet UITextField *textF;
    int count,x,y,t,len,positionLen;
    NSTimer *timer;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    count = 1,t = 0;
    
    [self makeArray];
    self->textF.delegate = self;
}


-(void) makeArray
{
    x = 25,y = 70;
    int i,j;
    for(i=1;i<=7;i++)
    {
        for(j=1;j<=15;j++)
        {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom]; // cai nay moi hien, # vs system
            
            button.frame = CGRectMake(x, y, 30, 30);  //gán toạ độ và kích thước
            
            button.tag = count;
            
            [button setImage:[UIImage imageNamed:@"grey.png"] forState:UIControlStateNormal];
            
            [self.view addSubview:button];
            
            x+=35;
            count++;
        }
        x = 25;
        y+=35;
    }
}


-(void)makeTimer
{
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                             target:self
                                           selector:@selector(starTimer)
                                           userInfo:nil
                                            repeats:YES];
    [timer fire];
}


- (IBAction)okTap:(id)sender {
    //textF.text = @"01234567890 qwertyuiopasdfghjklzxcvbnm";
    
    len = textF.text.length;
    positionLen = 0;
    [self makeTimer];
}

-(void) solve: (char) characters // xu li chuoi
{
    if(characters == ' ')
    {
        t = 0; // cho cach them khoang trong
        positionLen++;
    }
    
    if(characters == '0' || characters == 'o' || characters == 'O')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:30];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

            }

            else // t > 5
            {
                t = 0;
                positionLen++;
            }
    }
    if(characters == '1')
    {
        if(t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        else if (t==2)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:45];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:75];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:90];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        else if(t==3)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:90];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else
        {
            t = 0;
            positionLen++;
        }
    }
    if(characters == '2')
    {
        if(t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else
        {
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:45];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

            }
            else// t > 5
            {
                t = 0;
                positionLen++;
            }
        }
    }
    if(characters == '3')
    {
        if(t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else
        {
            if(t==5)
            {
                UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button3 = (UIButton *)[self.view viewWithTag:60];
                [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
                [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button = (UIButton *)[self.view viewWithTag:45];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                
            }
            else// t > 5
            {
                t = 0;
                positionLen++;
            }
        }

    }
    if(characters == '4')
    {
        if(t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:45];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else
        {
            if(t==5)
            {
                UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button3 = (UIButton *)[self.view viewWithTag:60];
                [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
                [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button = (UIButton *)[self.view viewWithTag:45];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                
            }
            else// t > 5
            {
                t = 0;
                positionLen++;
            }
        }

    }
    if(characters == '5')
    {
        if(t==1)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:60];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else
        {
            if(t==5)
            {
                UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
                [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                
            }
            else// t > 5
            {
                t = 0;
                positionLen++;
            }
        }

    }
    if(characters == '6')
    {
        if(t==1)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:60];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else
        {
            if(t==5)
            {
                UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
                [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            else// t > 5
            {
                t = 0;
                positionLen++;
            }
        }

    }
    if(characters == '7')
    {
        if(t==1)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==2)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:90];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==3)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:75];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==4)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:60];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==5)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if( t > 5)
        {
                t = 0;
                positionLen++;
        }

    }
    if(characters == '8')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        
        else // t > 5
        {
            t = 0;
            positionLen++;
        }

    }
    if(characters == '9')
    {
        if(t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:45];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            else{
                t = 0;
                positionLen++;
            }
        }

    }
    
    if(characters == 'a')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'b')
    {
        if(t==1)
        {
            UIButton *button2 = (UIButton *)[self.view viewWithTag:30];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:45];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            else{
                t = 0;
                positionLen++;
            }
        }

    }
    if(characters == 'c')
    {
        if(t==1)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:30];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<=5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {

            t = 0;
            positionLen++;
        }
        

    }
    if(characters == 'd')
    {
        if(t==1)
        {
            UIButton *button2 = (UIButton *)[self.view viewWithTag:30];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:45];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            else{
                t = 0;
                positionLen++;
            }
        }

    }
    if(characters == 'e')
    {
        if(t==1)
        {
            UIButton *button2 = (UIButton *)[self.view viewWithTag:30];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:30];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            else{
                t = 0;
                positionLen++;
            }
        }
    }
    if(characters == 'f')
    {
        if(t==1)
        {
            UIButton *button2 = (UIButton *)[self.view viewWithTag:30];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else // t > 5
        {
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:30];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            else{
                t = 0;
                positionLen++;
            }
        }
    }
    if(characters == 'g')
    {
        if(t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        if(t==3 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:90];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
            if(t==5)
            {
                UIButton *button = (UIButton *)[self.view viewWithTag:30];
                [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
                [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button3 = (UIButton *)[self.view viewWithTag:60];
                [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
                UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
                [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            }
            
            if(t>5){
                t = 0;
                positionLen++;
            }
    }
    if(characters == 'h')
    {
        if(t==1 || t==5)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:30];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:60];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else
        {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'i')
    {
        if(t==2)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:30];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t==1 || t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else
        {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'j')
    {
        if(t==1)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2 || t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        if(t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'k')
    {
        if(t==1)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2 || t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:60];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==4)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==5)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        if(t>5){
            t = 0;
            positionLen++;
        }
    }
    if(characters == 'l')
    {
        if(t==1)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if(t<=5)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        else{
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'm')
    {
        if(t==1 || t == 5)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==3)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:60];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'n')
    {
        if(t==1 || t == 5)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==3)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:60];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==4)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:75];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
            if(t>5){
                t = 0;
                positionLen++;
            }

    }
    if(characters == 'p')
    {
        if(t==1)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2 || t==4 || t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:60];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        if(t==5)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'q')
    {
        if(t==1)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        if(t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==4)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'r')
    {
        if(t==1)
        {
            UIButton *button4 = (UIButton *)[self.view viewWithTag:30];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:45];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:60];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2 || t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        if(t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:60];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t==5)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:45];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:90];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 's')
    {
        if(t==1)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:45];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==2 || t==3 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        if(t==5)
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:30];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:75];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 't')
    {
        if(t==3)
        {
            UIButton *button3 = (UIButton *)[self.view viewWithTag:90];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<=5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        else if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'u')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:75];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t<5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:90];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        
        else if(t>5){
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'v')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t==2 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:75];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:90];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        else {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'w')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button4 = (UIButton *)[self.view viewWithTag:45];
            [button4 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:75];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        else if (t==2 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:75];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:60];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'x')
    {
        if(t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t==2 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:75];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:45];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        else if (t==3)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:60];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'y')
    {
        if(t==3)
        {

            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:75];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else if (t==2 || t==4)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:45];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        else if (t==5 || t==1)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        else {
            t = 0;
            positionLen++;
        }

    }
    if(characters == 'z')
    {
        if(t==3)
        {
            
            UIButton *button1 = (UIButton *)[self.view viewWithTag:60];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:30];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            
        }
        if (t==1 || t==5)
        {
            UIButton *button = (UIButton *)[self.view viewWithTag:30];
            [button setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button1 = (UIButton *)[self.view viewWithTag:90];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];

        }
        if (t==2 )
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:75];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:30];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }
        if (t==4 )
        {
            UIButton *button1 = (UIButton *)[self.view viewWithTag:45];
            [button1 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button2 = (UIButton *)[self.view viewWithTag:90];
            [button2 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
            UIButton *button3 = (UIButton *)[self.view viewWithTag:30];
            [button3 setImage:[UIImage imageNamed:@"red.png"] forState:UIControlStateNormal];
        }

        if (t>5){
            t = 0;
            positionLen++;
        }

    }

}

-(void) starTimer
{
    int i;

    for(i=16;i<=90;i++)
    {
        UIButton *button = (UIButton *)[self.view viewWithTag:i];
        UIButton *button2 = (UIButton *)[self.view viewWithTag:i+1];

        if(i%15 == 0)
            [button setImage: [UIImage imageNamed:@"grey.png"] forState:UIControlStateNormal];
        else
            [button setImage: button2.imageView.image forState:UIControlStateNormal];
        
    }
    
    t++;

    [self solve :[textF.text characterAtIndex: positionLen] ];
    
    if(positionLen == len)
    {
        [timer invalidate];
        return;
    }
    

}

- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    if([textField isFirstResponder])
        [textField resignFirstResponder];
    
    return YES;
    
}

@end

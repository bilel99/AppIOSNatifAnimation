//
//  ViewController.m
//  Ipsen
//
//  Created by Freelance on 24/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@end

@implementation ViewController

@synthesize scrollView;
@synthesize imageView;
@synthesize imageArray;
@synthesize pageControl;

@synthesize varBtnIpsen;
@synthesize varBtnOnco;
@synthesize varBtn3I;

@synthesize varS11;
@synthesize varS12;
@synthesize varS13;
@synthesize varS14;

@synthesize varS21;
@synthesize varS22;
@synthesize varS23;

@synthesize varS31;
@synthesize varS32;
@synthesize varS33;
@synthesize varS34;

@synthesize containerView;

@synthesize texteFixe11;
@synthesize texteFixe12;
@synthesize texteFixe13;
@synthesize texteFixe14;
@synthesize texteFixe15;
@synthesize texteFixe16;
@synthesize timer1;

@synthesize btn1;
@synthesize btn2;
@synthesize btn3;

@synthesize img1;
@synthesize img2;
@synthesize img3;
@synthesize img4;

@synthesize timer2;
@synthesize timer3;
@synthesize timer4;

@synthesize img5;
@synthesize img6;
@synthesize img8;
@synthesize img9;
@synthesize img10;
@synthesize img11;


@synthesize timer5;
@synthesize timer7;
@synthesize timer8;
@synthesize timer9;
@synthesize timer10;
@synthesize timer11;
@synthesize timer11A2;

@synthesize img13;
@synthesize img14;
@synthesize img15;
@synthesize img16;
@synthesize img17;
@synthesize img9992;

@synthesize timer12;
@synthesize timer13;
@synthesize timer14;
@synthesize timer15;
@synthesize timer16;

@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;
@synthesize t6;
@synthesize icoo1;
@synthesize icoo2;
@synthesize icoo3;
@synthesize icoo4;
@synthesize icoo5;
@synthesize icoo6;

@synthesize img1003;
@synthesize img1004;
@synthesize img1005;
@synthesize btnPage121;
@synthesize btnPage122;
@synthesize btnPage123;

@synthesize texte1Page11;
@synthesize texte2Page11;
@synthesize texte3Page11;
@synthesize texte4Page11;
@synthesize texte5Page11;
@synthesize timerTexte1;
@synthesize timerTexte2;
@synthesize timerTexte3;
@synthesize timerTexte4;

@synthesize addRef;

@synthesize timerImage1;
@synthesize timerImage2;
@synthesize timerImage3;

@synthesize imageAnimate1;
@synthesize imageAnimate2;
@synthesize imageAnimate3;
@synthesize imageAnimate4;

@synthesize view1;
@synthesize view2;
@synthesize view3;
@synthesize view4;

@synthesize imageAnimate5;
@synthesize view5;

@synthesize view6;
@synthesize imageAnimate6;

@synthesize view7;
@synthesize imageAnimate7;

@synthesize timerImg1;
@synthesize timerImg2;
@synthesize timerImg3;
@synthesize barreFixed1;
@synthesize barreFixed2;
@synthesize barreFixed3;

@synthesize imgCahier1;
@synthesize timerCahier1;

@synthesize acteurPO;
@synthesize timerActeurPO;
@synthesize textePage5;

@synthesize animateInteraction1;
@synthesize animateInteraction2;
@synthesize animateInteraction3;
@synthesize animateInteraction4;
@synthesize animateInteraction5;
@synthesize animateInteraction6;
@synthesize animateInteraction7;
@synthesize animateInteraction8;
@synthesize animateInteraction9;

@synthesize animateInteraction10;
@synthesize animateInteraction11;
@synthesize animateInteraction12;
@synthesize animateInteraction13;
@synthesize animateInteraction14;
@synthesize animateInteraction15;
@synthesize animateInteraction16;
@synthesize animateInteraction17;

@synthesize imgAnimateI1;
@synthesize imgAnimateI2;
@synthesize imgAnimateI3;
@synthesize imgAnimateI4;
@synthesize imgAnimateI5;
@synthesize imgAnimateI6;
@synthesize imgAnimateI7;
@synthesize imgAnimateI8;
@synthesize imgAnimateI9;

@synthesize btnInterractive1;

@synthesize point1;
@synthesize point2;
@synthesize point3;
@synthesize point4;
@synthesize timerPoint1;
@synthesize timerPoint2;
@synthesize timerPoint3;
@synthesize timerPoint4;

@synthesize point10;
@synthesize point11;
@synthesize point12;
@synthesize point13;
@synthesize point14;
@synthesize point15;
@synthesize point16;
@synthesize point17;

@synthesize timerGlobe1;
@synthesize timerGlobe2;
@synthesize timerGlobe3;
@synthesize timerGlobe4;
@synthesize timerGlobe5;
@synthesize timerGlobe6;
@synthesize timerGlobe7;
@synthesize timerGlobe8;

@synthesize france1;
@synthesize france2;
@synthesize france3;
@synthesize france4;
@synthesize france5;
@synthesize france6;
@synthesize france7;
@synthesize france8;
@synthesize france9;

@synthesize btnFrance1;
@synthesize btnFrance2;
@synthesize btnFrance3;
@synthesize btnFrance4;
@synthesize btnFrance5;
@synthesize btnFrance6;
@synthesize btnFrance7;
@synthesize btnFrance8;
@synthesize btnFrance9;
@synthesize btnAll;

@synthesize btnMenu1;
@synthesize btnMenu2;
@synthesize btnMenu3;
@synthesize cliquezICI;

@synthesize imgReff1;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Création du ScrollView //
    //Put the names of our image files in our array.
    imageArray = [[NSArray alloc]
                  initWithObjects:@"page.png", @"page2.png", @"page3.png", @"page4.png", @"page5.png",@"page6.png", @"page8.png", @"page9.png", @"page10.png", @"page11.png", @"page12.png", @"page13.png", @"page14.png", @"page16.png",  nil];
    
    
    
    //Set the content size of our scrollview according to the total width of our imageView objects.
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);
    
    
    
    self.scrollView.pagingEnabled = YES;
    
    
    for (int i = 0; i < [imageArray count]; i++)
    {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [self.scrollView addSubview:imageView];
        
    }
    
    
    
    
    // CREATION DES ANIMATIONS
    
    
    texteFixe12 =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe12.png"]];
    texteFixe12.frame = CGRectMake(1024, 445, 400, 140);
    [self.scrollView addSubview:texteFixe12];
    
    // Move the image
    [self moveImage:texteFixe12 duration:1.0
              curve:UIViewAnimationCurveLinear x:-555.0 y:0.0];
    
    
    
    texteFixe13 =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe13.png"]];
    texteFixe13.frame = CGRectMake(200, 0, 400, 140);
    [self.scrollView addSubview:texteFixe13];
    
    // Move the image
    [self moveImage:texteFixe13 duration:1.0
              curve:UIViewAnimationCurveLinear x:0.0 y:400.0];
    
    
    
    
    texteFixe14 =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe14.png"]];
    texteFixe14.frame = CGRectMake(180, 700, 400, 140);
    [self.scrollView addSubview:texteFixe14];
    
    // Move the image
    [self moveImage:texteFixe14 duration:1.0
              curve:UIViewAnimationCurveLinear x:0.0 y:-200.0];
    
    
    
    
    
    
    timer1 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationTime1) userInfo:nil repeats:NO];
    
    
    // Button Add Ref
    
    CGRect btnV3 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat buttonWidth309 = 150.0;
    CGFloat buttonHeight309 = 100.0;
    
    CGRect btnFrameV3 = CGRectMake(btnV3.origin.x + 100 - buttonWidth309 / 2, btnV3.origin.y + 730 - buttonHeight309 / 2, buttonWidth309, buttonHeight309);
    
    addRef = [ [ UIButton alloc] initWithFrame : btnFrameV3 ] ;
    //button.frame = CGRectMake(240, 610, 150, 40);
    [addRef setTitle:@"" forState:UIControlStateNormal];
    [addRef addTarget:self action:@selector(sendRef:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview : addRef ];
    
    
    
    
    
    
    
}


-(IBAction)sendRef:(id)sender
{
    
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    

    
    
    [self scrollToImageIndex:1];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
    
    
    
}








-(IBAction)sendMenu:(id)sender
{
    
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    
    
    
    [self scrollToImageIndex:1];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
    
    
    
}















-(IBAction)btnMenu1:(id)sender
{
    
    [self scrollToImageIndex:2];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
    
    
    
}




-(IBAction)btnMenu2:(id)sender
{
    
    [self scrollToImageIndex:6];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
    
    
    
}




-(IBAction)btnMenu3:(id)sender
{
    
    [self scrollToImageIndex:9];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
    
    
    
}















- (void) animationTime1
{
    texteFixe15 =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe15.png"]];
    texteFixe15.frame = CGRectMake(1024, 392, 220, 70);
    [self.scrollView addSubview:texteFixe15];
    
    // Move the image
    [self moveImage:texteFixe15 duration:0.5
              curve:UIViewAnimationCurveLinear x:-475.0 y:0.0];
    
    
    
    
    
    
    texteFixe16 =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe16.png"]];
    texteFixe16.frame = CGRectMake(0, 394, 35, 250);
    [self.scrollView addSubview:texteFixe16];
    
    // Move the image
    [self moveImage:texteFixe16 duration:0.5
              curve:UIViewAnimationCurveLinear x:500.0 y:0.0];
    
    
    
    texteFixe11 =
    [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe11.png"]];
    texteFixe11.frame = CGRectMake(240, 653, 555, 40);
    [self.scrollView addSubview:texteFixe11];
    
    
}





- (void) animationTime2
{
    
    
    CGRect refTarget5 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth5 = 482.5;
    CGFloat imageRefHeight5 = 39.0;
    
    CGRect imgRef5 = CGRectMake(refTarget5.origin.x + 335 - ImageRefWidth5 / 2, refTarget5.origin.y + 400 - imageRefHeight5 / 2, ImageRefWidth5, imageRefHeight5);
    
    img2 = [[UIImageView alloc] initWithFrame:imgRef5];
    img2.image=[UIImage imageNamed:@"texte2.png"];
    [self.scrollView addSubview:img2];
    
    
}





- (void) animationTime3
{
    
    
    CGRect refTarget6 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth6 = 748.5;
    CGFloat imageRefHeight6 = 67.5;
    
    CGRect imgRef6 = CGRectMake(refTarget6.origin.x + 467 - ImageRefWidth6 / 2, refTarget6.origin.y + 462 - imageRefHeight6 / 2, ImageRefWidth6, imageRefHeight6);
    
    img3 = [[UIImageView alloc] initWithFrame:imgRef6];
    img3.image=[UIImage imageNamed:@"texte3.png"];
    [self.scrollView addSubview:img3];

    
}





- (void) animationTime4
{
    CGRect refTarget7 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth7 = 748.5;
    CGFloat imageRefHeight7 = 67.5;
    
    CGRect imgRef7 = CGRectMake(refTarget7.origin.x + 467 - ImageRefWidth7 / 2, refTarget7.origin.y + 536 - imageRefHeight7 / 2, ImageRefWidth7, imageRefHeight7);
    
    img4 = [[UIImageView alloc] initWithFrame:imgRef7];
    img4.image=[UIImage imageNamed:@"texte4.png"];
    [self.scrollView addSubview:img4];
}






- (void) animationTime5
{
    
    CGRect refTarget5 = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth5 = 212.5;
    CGFloat imageRefHeight5 = 109.5;
    
    CGRect imgRef5 = CGRectMake(refTarget5.origin.x + 0 - ImageRefWidth5 / 2, refTarget5.origin.y + 270 - imageRefHeight5 / 2, ImageRefWidth5, imageRefHeight5);
    
    img6 = [[UIImageView alloc] initWithFrame:imgRef5];
    img6.image=[UIImage imageNamed:@"per1.png"];
    [self.scrollView addSubview:img6];
    
    // Move the image
    [self moveImage:img6 duration:0.5
              curve:UIViewAnimationCurveLinear x:265.0 y:0.0];
    
}











- (void) animationTime7
{
    
    CGRect refTarget5 = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth5 = 371.0;
    CGFloat imageRefHeight5 = 40.0;
    
    CGRect imgRef5 = CGRectMake(refTarget5.origin.x + 330 - ImageRefWidth5 / 2, refTarget5.origin.y + 420 - imageRefHeight5 / 2, ImageRefWidth5, imageRefHeight5);
    
    img8 = [[UIImageView alloc] initWithFrame:imgRef5];
    img8.image=[UIImage imageNamed:@"texteB1.png"];
    [self.scrollView addSubview:img8];
    
    
    
    
    timer9 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime9) userInfo:nil repeats:NO];
    
    
}





- (void) animationTime8
{
    
    [img10 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 70.0;
    CGFloat imageRefHeight4 = 77.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 1024 - ImageRefWidth4 / 2, refTarget4.origin.y + 525 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    img11 = [[UIImageView alloc] initWithFrame:imgRef4];
    img11.image=[UIImage imageNamed:@"per2.png"];
    [self.scrollView addSubview:img11];
    
    // Move the image
    [self moveImage:img11 duration:0.5
              curve:UIViewAnimationCurveLinear x:-360.0 y:0.0];
    
}




- (void) animationTime9
{
    
    [img8 removeFromSuperview];
    
    timer10 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime10) userInfo:nil repeats:NO];
    
    
}



- (void) animationTime10
{
    
    CGRect refTarget6 = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth6 = 361.0;
    CGFloat imageRefHeight6 = 40.0;
    
    CGRect imgRef6 = CGRectMake(refTarget6.origin.x + 325 - ImageRefWidth6 / 2, refTarget6.origin.y + 460 - imageRefHeight6 / 2, ImageRefWidth6, imageRefHeight6);
    
    img9 = [[UIImageView alloc] initWithFrame:imgRef6];
    img9.image=[UIImage imageNamed:@"texteB2.png"];
    [self.scrollView addSubview:img9];
    
    
    
    timer11A2 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime11A2) userInfo:nil repeats:NO];
    
    
}



- (void) animationTime11A2
{
    
    [img9 removeFromSuperview];
    
    
    timer11 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime11) userInfo:nil repeats:NO];


}




- (void) animationTime11
{
    
    CGRect refTarget7 = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth7 = 361.0;
    CGFloat imageRefHeight7 = 40.0;
    
    CGRect imgRef7 = CGRectMake(refTarget7.origin.x + 325 - ImageRefWidth7 / 2, refTarget7.origin.y + 505 - imageRefHeight7 / 2, ImageRefWidth7, imageRefHeight7);
    
    img10 = [[UIImageView alloc] initWithFrame:imgRef7];
    img10.image=[UIImage imageNamed:@"texteB3.png"];
    [self.scrollView addSubview:img10];
    
    
    
    timer8 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime8) userInfo:nil repeats:NO];
    
    
}




- (void) animationTime12
{
    
    
    
    CGRect refTarget7 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth7 = 727.0;
    CGFloat imageRefHeight7 = 43.5;
    
    CGRect imgRef7 = CGRectMake(refTarget7.origin.x + 500 - ImageRefWidth7 / 2, refTarget7.origin.y + 420 - imageRefHeight7 / 2, ImageRefWidth7, imageRefHeight7);
    
    img14 = [[UIImageView alloc] initWithFrame:imgRef7];
    img14.image=[UIImage imageNamed:@"texte23.png"];
    [self.scrollView addSubview:img14];
    
    
    
    timer13 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime13) userInfo:nil repeats:NO];
    
    
}





- (void) animationTime13
{
    
    
    
    CGRect refTarget7 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth7 = 727.0;
    CGFloat imageRefHeight7 = 43.5;
    
    CGRect imgRef7 = CGRectMake(refTarget7.origin.x + 500 - ImageRefWidth7 / 2, refTarget7.origin.y + 470 - imageRefHeight7 / 2, ImageRefWidth7, imageRefHeight7);
    
    img9992 = [[UIImageView alloc] initWithFrame:imgRef7];
    img9992.image=[UIImage imageNamed:@"texte24.png"];
    [self.scrollView addSubview:img9992];
    
    
    
    timer14 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime14) userInfo:nil repeats:NO];
    
    
}





- (void) animationTime14
{
    
    
    
    CGRect refTarget7 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth7 = 735.0;
    CGFloat imageRefHeight7 = 43.5;
    
    CGRect imgRef7 = CGRectMake(refTarget7.origin.x + 505 - ImageRefWidth7 / 2, refTarget7.origin.y + 520 - imageRefHeight7 / 2, ImageRefWidth7, imageRefHeight7);
    
    img15 = [[UIImageView alloc] initWithFrame:imgRef7];
    img15.image=[UIImage imageNamed:@"texte25.png"];
    [self.scrollView addSubview:img15];
    
    
    
    timer15 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime15) userInfo:nil repeats:NO];
    
    
}





- (void) animationTime15
{
    
    
    
    CGRect refTarget7 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth7 = 727.0;
    CGFloat imageRefHeight7 = 43.5;
    
    CGRect imgRef7 = CGRectMake(refTarget7.origin.x + 501 - ImageRefWidth7 / 2, refTarget7.origin.y + 570 - imageRefHeight7 / 2, ImageRefWidth7, imageRefHeight7);
    
    img16 = [[UIImageView alloc] initWithFrame:imgRef7];
    img16.image=[UIImage imageNamed:@"texte26.png"];
    [self.scrollView addSubview:img16];
    
    
    
    timer16 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTime16) userInfo:nil repeats:NO];
    
    
}




- (void) animationTime16
{
    
    [img10 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 113.0;
    CGFloat imageRefHeight4 = 309.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 1024 - ImageRefWidth4 / 2, refTarget4.origin.y + 280 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    img17 = [[UIImageView alloc] initWithFrame:imgRef4];
    img17.image=[UIImage imageNamed:@"per3.png"];
    [self.scrollView addSubview:img17];
    
    // Move the image
    [self moveImage:img17 duration:0.5
              curve:UIViewAnimationCurveLinear x:-150.0 y:0.0];
    
}


- (void) animationT1
{
    CGRect rT1 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW1 = 104.5;
    CGFloat IRH1 = 103.5;
    
    CGRect IR1 = CGRectMake(rT1.origin.x + 840 - IRW1 / 2, rT1.origin.y + 100 - IRH1 / 2, IRW1, IRH1);
    
    icoo1 = [[UIImageView alloc] initWithFrame:IR1];
    icoo1.image=[UIImage imageNamed:@"ico1P11.png"];
    [self.scrollView addSubview:icoo1];
    
    // Move the image
    [self moveImage:icoo1 duration:1.0
              curve:UIViewAnimationCurveLinear x:0.0 y:320.0];
}

- (void) animationT2
{
    CGRect rT2 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW2 = 400.5;
    CGFloat IRH2 = 89.5;
    
    CGRect IR2 = CGRectMake(rT2.origin.x + 840 - IRW2 / 2, rT2.origin.y + 420 - IRH2 / 2, IRW2, IRH2);
    
    icoo2 = [[UIImageView alloc] initWithFrame:IR2];
    icoo2.image=[UIImage imageNamed:@"texteP111.png"];
    [self.scrollView addSubview:icoo2];
    
    // Move the image
    [self moveImage:icoo2 duration:0.5
              curve:UIViewAnimationCurveLinear x:-250.0 y:0.0];
}

- (void) animationT3
{
    CGRect rT3 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW3 = 104.5;
    CGFloat IRH3 = 103.5;
    
    CGRect IR3 = CGRectMake(rT3.origin.x + 840 - IRW3 / 2, rT3.origin.y + 100 - IRH3 / 2, IRW3, IRH3);
    
    icoo3 = [[UIImageView alloc] initWithFrame:IR3];
    icoo3.image=[UIImage imageNamed:@"ico2P11.png"];
    [self.scrollView addSubview:icoo3];
    
    // Move the image
    [self moveImage:icoo3 duration:1.0
              curve:UIViewAnimationCurveLinear x:0.0 y:430.0];
}

- (void) animationT4
{
    CGRect rT4 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW4 = 400.5;
    CGFloat IRH4 = 89.5;
    
    CGRect IR4 = CGRectMake(rT4.origin.x + 840 - IRW4 / 2, rT4.origin.y + 530 - IRH4 / 2, IRW4, IRH4);
    
    icoo4 = [[UIImageView alloc] initWithFrame:IR4];
    icoo4.image=[UIImage imageNamed:@"texteP112.png"];
    [self.scrollView addSubview:icoo4];
    
    // Move the image
    [self moveImage:icoo4 duration:0.5
              curve:UIViewAnimationCurveLinear x:-250.0 y:0.0];
}

- (void) animationT5
{
    CGRect rT5 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW5 = 104.5;
    CGFloat IRH5 = 103.5;
    
    CGRect IR5 = CGRectMake(rT5.origin.x + 840 - IRW5 / 2, rT5.origin.y + 100 - IRH5 / 2, IRW5, IRH5);
    
    icoo5 = [[UIImageView alloc] initWithFrame:IR5];
    icoo5.image=[UIImage imageNamed:@"ico3P11.png"];
    [self.scrollView addSubview:icoo5];
    
    // Move the image
    [self moveImage:icoo5 duration:1.0
              curve:UIViewAnimationCurveLinear x:0.0 y:540.0];
}

- (void) animationT6
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 400.5;
    CGFloat IRH6 = 89.5;
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 840 - IRW6 / 2, rT6.origin.y + 640 - IRH6 / 2, IRW6, IRH6);
    
    icoo6 = [[UIImageView alloc] initWithFrame:IR6];
    icoo6.image=[UIImage imageNamed:@"texteP113.png"];
    [self.scrollView addSubview:icoo6];
    
    // Move the image
    [self moveImage:icoo6 duration:0.5
              curve:UIViewAnimationCurveLinear x:-250.0 y:0.0];
}



                                                                                         


- (void)moveImage:(UIImageView *)image duration:(NSTimeInterval)duration
            curve:(int)curve x:(CGFloat)x y:(CGFloat)y
{
    
    // Setup the animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationCurve:curve];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    // The transform matrix
    CGAffineTransform transform = CGAffineTransformMakeTranslation(x, y);
    image.transform = transform;
    
    // Commit the changes
    [UIView commitAnimations];
    
}








static int tapCount1 = 0;
-(IBAction)showBtnIpsen:(id)sender
{
    
    [varS11 removeFromSuperview];
    [varS12 removeFromSuperview];
    [varS13 removeFromSuperview];
    [varS14 removeFromSuperview];
    
    
    [varS21 removeFromSuperview];
    [varS22 removeFromSuperview];
    [varS23 removeFromSuperview];
    
    [varS31 removeFromSuperview];
    [varS32 removeFromSuperview];
    [varS33 removeFromSuperview];
    [varS34 removeFromSuperview];
    
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    tapCount1 ++;
    
    if(tapCount1 == 1)
    {
        
        
        /* Les 3 boutons de sous menu */
        varS11 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS11.frame = CGRectMake(0, 43, 342, 45);
        [varS11 setImage:[UIImage imageNamed:@"btns11.png"] forState:UIControlStateNormal];
        [varS11 addTarget:self action:@selector(showLF:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS11];
        
        
        varS12 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS12.frame = CGRectMake(0, 89, 342, 45);
        [varS12 setImage:[UIImage imageNamed:@"btns12.png"] forState:UIControlStateNormal];
        [varS12 addTarget:self action:@selector(showDDS:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS12];
        
        
        
        varS13 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS13.frame = CGRectMake(0, 134, 342, 45);
        [varS13 setImage:[UIImage imageNamed:@"btns13.png"] forState:UIControlStateNormal];
        [varS13 addTarget:self action:@selector(showAR:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS13];
        
        
        
        varS14 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS14.frame = CGRectMake(0, 180, 342, 45);
        [varS14 setImage:[UIImage imageNamed:@"btns14.png"] forState:UIControlStateNormal];
        [varS14 addTarget:self action:@selector(showAP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS14];
        
        
        
    }
    else if(tapCount1 == 2)
    {

        [varS11 removeFromSuperview];
        [varS12 removeFromSuperview];
        [varS13 removeFromSuperview];
        [varS14 removeFromSuperview];
        
    }
    else if(tapCount1 == 3)
    {
        
        /* Les 3 boutons de sous menu */
        varS11 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS11.frame = CGRectMake(0, 43, 342, 45);
        [varS11 setImage:[UIImage imageNamed:@"btns11.png"] forState:UIControlStateNormal];
        [varS11 addTarget:self action:@selector(showLF:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS11];
        
        
        varS12 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS12.frame = CGRectMake(0, 89, 342, 45);
        [varS12 setImage:[UIImage imageNamed:@"btns12.png"] forState:UIControlStateNormal];
        [varS12 addTarget:self action:@selector(showDDS:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS12];
        
        
        
        varS13 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS13.frame = CGRectMake(0, 134, 342, 45);
        [varS13 setImage:[UIImage imageNamed:@"btns13.png"] forState:UIControlStateNormal];
        [varS13 addTarget:self action:@selector(showAR:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS13];
        
        
        
        varS14 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS14.frame = CGRectMake(0, 180, 342, 45);
        [varS14 setImage:[UIImage imageNamed:@"btns14.png"] forState:UIControlStateNormal];
        [varS14 addTarget:self action:@selector(showAP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS14];
        
        tapCount1 = 1;
        
        
    }
}




static int tapCount2 = 0;
-(IBAction)showBtnOnco:(id)sender
{
    
    [varS21 removeFromSuperview];
    [varS22 removeFromSuperview];
    [varS23 removeFromSuperview];
    
   
    [varS11 removeFromSuperview];
    [varS12 removeFromSuperview];
    [varS13 removeFromSuperview];
    [varS14 removeFromSuperview];
    
    [varS31 removeFromSuperview];
    [varS32 removeFromSuperview];
    [varS33 removeFromSuperview];
    [varS34 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount3 = 0;

    tapCount2 ++;
    
    if(tapCount2 == 1)
    {
        
        
        
        /* Les 3 boutons de sous menu */
        varS21 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS21.frame = CGRectMake(341, 43, 342, 45);
        [varS21 setImage:[UIImage imageNamed:@"btns21.png"] forState:UIControlStateNormal];
        [varS21 addTarget:self action:@selector(showEP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS21];
        
        
        varS22 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS22.frame = CGRectMake(341, 89, 342, 45);
        [varS22 setImage:[UIImage imageNamed:@"btns22.png"] forState:UIControlStateNormal];
        [varS22 addTarget:self action:@selector(showP3I:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS22];
        
        
        
        varS23 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS23.frame = CGRectMake(341, 134, 342, 45);
        [varS23 setImage:[UIImage imageNamed:@"btns23.png"] forState:UIControlStateNormal];
        [varS23 addTarget:self action:@selector(showP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS23];
        
        
        
        
    }
    else if(tapCount2 == 2)
    {

        [varS21 removeFromSuperview];
        [varS22 removeFromSuperview];
        [varS23 removeFromSuperview];
        
    }
    else if(tapCount2 == 3)
    {
        
        /* Les 3 boutons de sous menu */
        varS21 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS21.frame = CGRectMake(341, 43, 342, 45);
        [varS21 setImage:[UIImage imageNamed:@"btns21.png"] forState:UIControlStateNormal];
        [varS21 addTarget:self action:@selector(showEP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS21];
        
        
        varS22 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS22.frame = CGRectMake(341, 89, 342, 45);
        [varS22 setImage:[UIImage imageNamed:@"btns22.png"] forState:UIControlStateNormal];
        [varS22 addTarget:self action:@selector(showP3I:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS22];
        
        
        
        varS23 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS23.frame = CGRectMake(341, 134, 342, 45);
        [varS23 setImage:[UIImage imageNamed:@"btns23.png"] forState:UIControlStateNormal];
        [varS23 addTarget:self action:@selector(showP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS23];
        
        
        tapCount2 = 1;

        
        
        
    }
}




static int tapCount3 = 0;
-(IBAction)showBtn3I:(id)sender
{
    
    [varS31 removeFromSuperview];
    [varS32 removeFromSuperview];
    [varS33 removeFromSuperview];
    [varS34 removeFromSuperview];
    
    [varS11 removeFromSuperview];
    [varS12 removeFromSuperview];
    [varS13 removeFromSuperview];
    [varS14 removeFromSuperview];
    
    [varS21 removeFromSuperview];
    [varS22 removeFromSuperview];
    [varS23 removeFromSuperview];

    tapCount1 = 0;
    tapCount2 = 0;
    
    tapCount3 ++;
    
    if(tapCount3 == 1)
    {
        
        
        /* Les 3 boutons de sous menu */
        varS31 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS31.frame = CGRectMake(684, 43, 342, 45);
        [varS31 setImage:[UIImage imageNamed:@"btns31.png"] forState:UIControlStateNormal];
        [varS31 addTarget:self action:@selector(showFPP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS31];
        
        
        varS32 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS32.frame = CGRectMake(684, 89, 342, 45);
        [varS32 setImage:[UIImage imageNamed:@"btns32.png"] forState:UIControlStateNormal];
        [varS32 addTarget:self action:@selector(showSDF:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS32];
        
        
        
        varS33 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS33.frame = CGRectMake(684, 134, 342, 45);
        [varS33 setImage:[UIImage imageNamed:@"btns33.png"] forState:UIControlStateNormal];
        [varS33 addTarget:self action:@selector(showDEP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS33];
        
        
        
        varS34 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS34.frame = CGRectMake(684, 180, 342, 45);
        [varS34 setImage:[UIImage imageNamed:@"btns34.png"] forState:UIControlStateNormal];
        [varS34 addTarget:self action:@selector(showODE:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS34];
        
    }
    else if(tapCount3 == 2)
    {
        [varS31 removeFromSuperview];
        [varS32 removeFromSuperview];
        [varS33 removeFromSuperview];
        [varS34 removeFromSuperview];
        
        
    }
    else if(tapCount3 == 3)
    {
        
        
        /* Les 3 boutons de sous menu */
        varS31 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS31.frame = CGRectMake(684, 43, 342, 45);
        [varS31 setImage:[UIImage imageNamed:@"btns31.png"] forState:UIControlStateNormal];
        [varS31 addTarget:self action:@selector(showFPP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS31];
        
        
        varS32 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS32.frame = CGRectMake(684, 89, 342, 45);
        [varS32 setImage:[UIImage imageNamed:@"btns32.png"] forState:UIControlStateNormal];
        [varS32 addTarget:self action:@selector(showSDF:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS32];
        
        
        
        varS33 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS33.frame = CGRectMake(684, 134, 342, 45);
        [varS33 setImage:[UIImage imageNamed:@"btns33.png"] forState:UIControlStateNormal];
        [varS33 addTarget:self action:@selector(showDEP:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS33];
        
        
        
        varS34 = [UIButton buttonWithType:UIButtonTypeCustom];
        varS34.frame = CGRectMake(684, 180, 342, 45);
        [varS34 setImage:[UIImage imageNamed:@"btns34.png"] forState:UIControlStateNormal];
        [varS34 addTarget:self action:@selector(showODE:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:varS34];
        
        
        tapCount3 = 1;
        
        
        
    }
}




-(IBAction)showLF:(id)sender
{
    
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];

    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:2];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}



-(IBAction)showDDS:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    
    [self scrollToImageIndex:3];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}




-(IBAction)showAR:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:4];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}





-(IBAction)showAP:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:5];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}








-(IBAction)showEP:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:6];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}





-(IBAction)showP3I:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:7];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}




-(IBAction)showP:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:8];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}














-(IBAction)showFPP:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:9];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}





-(IBAction)showSDF:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:10];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}





-(IBAction)showDEP:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:11];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}





-(IBAction)showODE:(id)sender
{
    [pageControl removeFromSuperview];
    //[varBtnIpsen removeFromSuperview];
    //[varBtnOnco removeFromSuperview];
    //[varBtn3I removeFromSuperview];
    [texteFixe11 removeFromSuperview];
    [texteFixe12 removeFromSuperview];
    [texteFixe13 removeFromSuperview];
    [texteFixe14 removeFromSuperview];
    [texteFixe15 removeFromSuperview];
    [texteFixe16 removeFromSuperview];
    [timer1 invalidate];
    
    [btn1 removeFromSuperview];
    [btn2 removeFromSuperview];
    [btn3 removeFromSuperview];
    
    [img1 removeFromSuperview];
    [img2 removeFromSuperview];
    [img3 removeFromSuperview];
    [img4 removeFromSuperview];
    [timer2 invalidate];
    [timer3 invalidate];
    [timer4 invalidate];
    
    [img5 removeFromSuperview];
    [img6 removeFromSuperview];
    [img8 removeFromSuperview];
    [img9 removeFromSuperview];
    [img10 removeFromSuperview];
    [img11 removeFromSuperview];
    [timer5 invalidate];
    [timer7 invalidate];
    [timer8 invalidate];
    [timer9 invalidate];
    [timer10 invalidate];
    [timer11 invalidate];
    [timer11A2 invalidate];
    
    
    [img13 removeFromSuperview];
    [img14 removeFromSuperview];
    [img15 removeFromSuperview];
    [img16 removeFromSuperview];
    [img17 removeFromSuperview];
    [timer12 invalidate];
    [timer13 invalidate];
    [timer14 invalidate];
    [timer15 invalidate];
    [timer16 invalidate];
    
    [icoo1 removeFromSuperview];
    [icoo2 removeFromSuperview];
    [icoo3 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo5 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t1 invalidate];
    [t2 invalidate];
    [t3 invalidate];
    [t4 invalidate];
    [t5 invalidate];
    [t6 invalidate];
    
    [img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    
    [texte1Page11 removeFromSuperview];
    [texte2Page11 removeFromSuperview];
    [texte3Page11 removeFromSuperview];
    [texte4Page11 removeFromSuperview];
    [texte5Page11 removeFromSuperview];
    [timerTexte1 invalidate];
    [timerTexte2 invalidate];
    [timerTexte3 invalidate];
    [timerTexte4 invalidate];
    [img9992 removeFromSuperview];
    
    [view1 removeFromSuperview];
    [view2 removeFromSuperview];
    [view3 removeFromSuperview];
    [imageAnimate1 removeFromSuperview];
    [imageAnimate2 removeFromSuperview];
    [imageAnimate3 removeFromSuperview];
    [timerImage1 invalidate];
    [timerImage2 invalidate];
    [timerImage3 invalidate];
    
    [view5 removeFromSuperview];
    [imageAnimate5 removeFromSuperview];
    
    [view6 removeFromSuperview];
    [imageAnimate6 removeFromSuperview];
    
    [view7 removeFromSuperview];
    [imageAnimate7 removeFromSuperview];
    
    [timerImg1 invalidate];
    [timerImg2 invalidate];
    [timerImg3 invalidate];
    [barreFixed1 removeFromSuperview];
    [barreFixed2 removeFromSuperview];
    [barreFixed3 removeFromSuperview];
    
    [timerCahier1 invalidate];
    [imgCahier1 removeFromSuperview];
    
    [timerActeurPO invalidate];
    [acteurPO removeFromSuperview];
    [textePage5 removeFromSuperview];
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI1 removeFromSuperview];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    [point1 removeFromSuperview];
    [point2 removeFromSuperview];
    [point3 removeFromSuperview];
    [point4 removeFromSuperview];
    [timerPoint1 invalidate];
    [timerPoint2 invalidate];
    [timerPoint3 invalidate];
    [timerPoint4 invalidate];
    
    [point10 removeFromSuperview];
    [point11 removeFromSuperview];
    [point12 removeFromSuperview];
    [point13 removeFromSuperview];
    [point14 removeFromSuperview];
    [point15 removeFromSuperview];
    [point16 removeFromSuperview];
    [point17 removeFromSuperview];
    [timerGlobe1 invalidate];
    [timerGlobe2 invalidate];
    [timerGlobe3 invalidate];
    [timerGlobe4 invalidate];
    [timerGlobe5 invalidate];
    [timerGlobe6 invalidate];
    [timerGlobe7 invalidate];
    [timerGlobe8 invalidate];
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    tapCount1 = 0;
    tapCount2 = 0;
    tapCount3 = 0;
    
    
    [self scrollToImageIndex:12];
    
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateHighlighted];
    //[sender setImage:[UIImage imageNamed:@"transportabilite_grey.jpg"] forState:UIControlStateSelected];
}











-(void) scrollToImageIndex:(int)index {
    
    CGRect desiredVisibleRect = CGRectMake(self.scrollView.frame.size.width *index, 0.0, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    
    [self.scrollView scrollRectToVisible:desiredVisibleRect animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    if([self.view window] == nil)
    {
        self.view = nil;
    }
    return;
}









#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    static NSInteger previousPage = 0;
    CGFloat pageWidth = scrollView.frame.size.width;
    float fractionalPage = scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fractionalPage);
    
    
    if (previousPage != page)
    {
        previousPage = page;
        
        
        if(page == 0)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            // CREATION DES ANIMATIONS
            
            
            
            
            

            texteFixe12 =
            [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe12.png"]];
            texteFixe12.frame = CGRectMake(1024, 445, 400, 140);
            [self.scrollView addSubview:texteFixe12];
            
            // Move the image
            [self moveImage:texteFixe12 duration:1.0
                      curve:UIViewAnimationCurveLinear x:-555.0 y:0.0];
            
            
            
            texteFixe13 =
            [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe13.png"]];
            texteFixe13.frame = CGRectMake(200, 0, 400, 140);
            [self.scrollView addSubview:texteFixe13];
            
            // Move the image
            [self moveImage:texteFixe13 duration:1.0
                      curve:UIViewAnimationCurveLinear x:0.0 y:400.0];
            
            
            
            
            texteFixe14 =
            [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"texteFixe14.png"]];
            texteFixe14.frame = CGRectMake(180, 700, 400, 140);
            [self.scrollView addSubview:texteFixe14];
            
            // Move the image
            [self moveImage:texteFixe14 duration:1.0
                      curve:UIViewAnimationCurveLinear x:0.0 y:-200.0];
            
            
            
            
            
            
            timer1 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationTime1) userInfo:nil repeats:NO];
            
            
            
            
        }
        else if(page == 1)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect refTarget = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth = 325.0;
            CGFloat imageRefHeight = 325.0;
            
            CGRect imgRef = CGRectMake(refTarget.origin.x + 1000 - ImageRefWidth / 2, refTarget.origin.y + 220 - imageRefHeight / 2, ImageRefWidth, imageRefHeight);
            
            btn1 = [[UIImageView alloc] initWithFrame:imgRef];
            btn1.image=[UIImage imageNamed:@"carre1.png"];
            [self.scrollView addSubview:btn1];
            
            // Move the image
            [self moveImage:btn1 duration:0.5
                      curve:UIViewAnimationCurveLinear x:-155.0 y:0.0];
            
            
            
            
            CGRect refTarget2 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth2 = 325.0;
            CGFloat imageRefHeight2 = 325.0;
            
            CGRect imgRef2 = CGRectMake(refTarget2.origin.x + 0 - ImageRefWidth2 / 2, refTarget2.origin.y + 220 - imageRefHeight2 / 2, ImageRefWidth2, imageRefHeight2);
            
            btn2 = [[UIImageView alloc] initWithFrame:imgRef2];
            btn2.image=[UIImage imageNamed:@"carre2.png"];
            [self.scrollView addSubview:btn2];
            
            // Move the image
            [self moveImage:btn2 duration:0.5
                      curve:UIViewAnimationCurveLinear x:180.0 y:0.0];
            
            
            
            
            
            
            
            CGRect refTarget3 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth3 = 325.0;
            CGFloat imageRefHeight3 = 325.0;
            
            CGRect imgRef3 = CGRectMake(refTarget3.origin.x + 512 - ImageRefWidth3 / 2, refTarget3.origin.y + 716 - imageRefHeight3 / 2, ImageRefWidth3, imageRefHeight3);
            
            btn3 = [[UIImageView alloc] initWithFrame:imgRef3];
            btn3.image=[UIImage imageNamed:@"carre3.png"];
            [self.scrollView addSubview:btn3];
            
            // Move the image
            [self moveImage:btn3 duration:0.5
                      curve:UIViewAnimationCurveLinear x:0.0 y:-175.0];
            
            
            
            // TIMER IMAGE ANIMATE
            
            timerImage1 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(imageAnimate1Page1) userInfo:nil repeats:NO];
            
            
            timerImage2 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(imageAnimate2Page1) userInfo:nil repeats:NO];

            
            timerImage3 = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(imageAnimate3Page1) userInfo:nil repeats:NO];
            
            
            
            
            
            
            
            timerImg1 = [NSTimer scheduledTimerWithTimeInterval:2.4 target:self selector:@selector(barreFixe1) userInfo:nil repeats:NO];
            
            timerImg2 = [NSTimer scheduledTimerWithTimeInterval:3.4 target:self selector:@selector(barreFixe2) userInfo:nil repeats:NO];
            
            timerImg3 = [NSTimer scheduledTimerWithTimeInterval:4.4 target:self selector:@selector(barreFixe3) userInfo:nil repeats:NO];
            
            
            
            
            
            
            
            
            
            
            
            
            // MENU
            
            CGRect btnV3 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth1 = 300.0;
            CGFloat buttonHeight1 = 300.0;
            
            CGRect btnFrameV1 = CGRectMake(btnV3.origin.x + 170 - buttonWidth1 / 2, btnV3.origin.y + 220 - buttonHeight1 / 2, buttonWidth1, buttonHeight1);
            
            btnFrance2 = [ [ UIButton alloc] initWithFrame : btnFrameV1 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance2 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance2 addTarget:self action:@selector(btnMenu1:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance2 ];
            
            
            
            
            
            
            
            
            
            CGRect btnV4 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth2 = 300.0;
            CGFloat buttonHeight2 = 300.0;
            
            CGRect btnFrameV3 = CGRectMake(btnV4.origin.x + 510 - buttonWidth2 / 2, btnV4.origin.y + 530 - buttonHeight2 / 2, buttonWidth2, buttonHeight2);
            
            btnFrance3 = [ [ UIButton alloc] initWithFrame : btnFrameV3 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance3 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance3 addTarget:self action:@selector(btnMenu2:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance3 ];
            
            
            
            
            
            
            
            
            
            CGRect btnV5 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth5 = 300.0;
            CGFloat buttonHeight5 = 300.0;
            
            CGRect btnFrameV5 = CGRectMake(btnV5.origin.x + 840 - buttonWidth5 / 2, btnV5.origin.y + 220 - buttonHeight5 / 2, buttonWidth5, buttonHeight5);
            
            btnFrance4 = [ [ UIButton alloc] initWithFrame : btnFrameV5 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance4 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance4 addTarget:self action:@selector(btnMenu3:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance4 ];
            
            
            
            
            
            
            
            
        }
        else if(page == 2)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            

            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(24/255.0) green:(185/255.0) blue:(232/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            
            CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth4 = 550.5;
            CGFloat imageRefHeight4 = 51.5;
            
            CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 0 - ImageRefWidth4 / 2, refTarget4.origin.y + 350 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
            
            img1 = [[UIImageView alloc] initWithFrame:imgRef4];
            img1.image=[UIImage imageNamed:@"texte1.png"];
            [self.scrollView addSubview:img1];
            
            // Move the image
            [self moveImage:img1 duration:1.0
                      curve:UIViewAnimationCurveLinear x:370.0 y:0.0];
            
            
            
                timer2 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(animationTime2) userInfo:nil repeats:NO];
            
            
            
                timer3 = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(animationTime3) userInfo:nil repeats:NO];
            
            
            
                timer4 = [NSTimer scheduledTimerWithTimeInterval:4.0 target:self selector:@selector(animationTime4) userInfo:nil repeats:NO];
            
            
            
            
            
            
            
            
            
            // ANIMATION GLOBE
            
            timerGlobe1 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(pointGlobe1) userInfo:nil repeats:YES];
            
            
            timerGlobe2 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(pointGlobe2) userInfo:nil repeats:YES];
            
            
            
            timerGlobe3 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(pointGlobe3) userInfo:nil repeats:YES];
            
            
            
            timerGlobe4 = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(pointGlobe4) userInfo:nil repeats:YES];
            
            
            
            timerGlobe5 = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(pointGlobe5) userInfo:nil repeats:YES];
            
            
            
            timerGlobe6 = [NSTimer scheduledTimerWithTimeInterval:3.5 target:self selector:@selector(pointGlobe6) userInfo:nil repeats:YES];
            
            
            
            timerGlobe7 = [NSTimer scheduledTimerWithTimeInterval:4.0 target:self selector:@selector(pointGlobe7) userInfo:nil repeats:YES];
            
            
            
            timerGlobe8 = [NSTimer scheduledTimerWithTimeInterval:4.5 target:self selector:@selector(pointGlobe8) userInfo:nil repeats:YES];
            
            
            
            
            
        }
        else if (page == 3)
        {
            
            
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(24/255.0) green:(185/255.0) blue:(232/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 3, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth4 = 782.0;
            CGFloat imageRefHeight4 = 51.5;
            
            CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 0 - ImageRefWidth4 / 2, refTarget4.origin.y + 370 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
            
            img5 = [[UIImageView alloc] initWithFrame:imgRef4];
            img5.image=[UIImage imageNamed:@"texte5.png"];
            [self.scrollView addSubview:img5];
            
            // Move the image
            [self moveImage:img5 duration:1.0
                      curve:UIViewAnimationCurveLinear x:525.0 y:0.0];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            timer5 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationTime5) userInfo:nil repeats:NO];
            
            
            timer7 = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(animationTime7) userInfo:nil repeats:NO];
            
            
            
        }
        else if(page == 4)
        {
            
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(24/255.0) green:(185/255.0) blue:(232/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            
            CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 4, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth4 = 264.0;
            CGFloat imageRefHeight4 = 51.5;
            
            CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 280 - ImageRefWidth4 / 2, refTarget4.origin.y + 390 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
            
            img13 = [[UIImageView alloc] initWithFrame:imgRef4];
            img13.image=[UIImage imageNamed:@"texte33.png"];
            [self.scrollView addSubview:img13];
            
            
            // Move the image
            [self moveImage:img13 duration:1.0
                      curve:UIViewAnimationCurveLinear x:0.0 y:247.0];
            
            timer12 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationTime12) userInfo:nil repeats:NO];
            
        }
        else if(page == 5)
        {
            
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(24/255.0) green:(185/255.0) blue:(232/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            // ANIMATION FIXE
            CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth4 = 260.0;
            CGFloat imageRefHeight4 = 50.0;
            
            CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 270 - ImageRefWidth4 / 2, refTarget4.origin.y + 620 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
            
            img13 = [[UIImageView alloc] initWithFrame:imgRef4];
            img13.image=[UIImage imageNamed:@"acteurPO.png"];
            [self.scrollView addSubview:img13];
            
            
            // Move the image
            [self moveImage:img13 duration:1.0
                      curve:UIViewAnimationCurveLinear x:0.0 y:-200.0];
            
            timerActeurPO = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(textePO) userInfo:nil repeats:NO];
            
            
            
            
            
            
            
            
            
            // ANIMATION INTERACTIVE
            
            
            
            animateInteraction9 = [NSTimer scheduledTimerWithTimeInterval:1.6 target:self selector:@selector(interractionAnimation9) userInfo:nil repeats:NO];
            
            
            
            if(btnInterractive1 == nil)
            {
            
                
                CGRect btnV99 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
                
                CGFloat buttonWidth99 = 70.0;
                CGFloat buttonHeight99 = 70.0;
                
                CGRect btnFrameV99 = CGRectMake(btnV99.origin.x + 720 - buttonWidth99 / 2, btnV99.origin.y + 540 - buttonHeight99 / 2, buttonWidth99, buttonHeight99);
                
                btnInterractive1 = [ [ UIButton alloc] initWithFrame : btnFrameV99 ] ;
                //button.frame = CGRectMake(240, 610, 150, 40);
                [btnInterractive1 setTitle:@"" forState:UIControlStateNormal];
                
                [btnInterractive1 addTarget:self action:@selector(btnInterractiveFunction1:) forControlEvents:UIControlEventTouchDown];
                
                
                [btnInterractive1 addTarget:self action:@selector(btnInterractiveFunction2:) forControlEvents:UIControlEventTouchUpInside];
                
                
                [self.scrollView addSubview : btnInterractive1];
                
            }
            
 
        }
        else if(page == 6)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            compteur_click = 0;
            compteur_click2 = 0;
            compteur_click3 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(175/255.0) green:(202/255.0) blue:(11/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            
          // ANIMATION INTERACTIVES
            
            
            timerPoint4 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(point1t) userInfo:nil repeats:YES];
            
            
            
            timerPoint1 = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(point2t) userInfo:nil repeats:YES];
            
            
            
            timerPoint2 = [NSTimer scheduledTimerWithTimeInterval:3.5 target:self selector:@selector(point3t) userInfo:nil repeats:YES];
            
            
            
            timerPoint3 = [NSTimer scheduledTimerWithTimeInterval:4.5 target:self selector:@selector(point4t) userInfo:nil repeats:YES];
            
            
            
        }
        else if(page == 7)
        {
            
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            compteur_click = 0;
            compteur_click2 = 0;
            compteur_click3 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(175/255.0) green:(202/255.0) blue:(11/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            t1 = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(animationT1) userInfo:nil repeats:NO];
            
            t2 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationT2) userInfo:nil repeats:NO];
            
            t3 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationT3) userInfo:nil repeats:NO];
            
            t4 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(animationT4) userInfo:nil repeats:NO];
            
            t5 = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(animationT5) userInfo:nil repeats:NO];
            
            t6 = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(animationT6) userInfo:nil repeats:NO];
            
            
            
            
        if(btnPage121 == nil && btnPage122 == nil && btnPage123 == nil)
        {
            
            CGRect btnV1 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth300 = 100.0;
            CGFloat buttonHeight300 = 100.0;
            
            CGRect btnFrameV1 = CGRectMake(btnV1.origin.x + 820 - buttonWidth300 / 2, btnV1.origin.y + 420 - buttonHeight300 / 2, buttonWidth300, buttonHeight300);
            
            btnPage121 = [ [ UIButton alloc] initWithFrame : btnFrameV1 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnPage121 setTitle:@"" forState:UIControlStateNormal];
            [btnPage121 addTarget:self action:@selector(openAnimate1:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnPage121 ];
            
            
        
            
            
            CGRect btnV2 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth301 = 100.0;
            CGFloat buttonHeight301 = 100.0;
            
            CGRect btnFrameV2 = CGRectMake(btnV2.origin.x + 820 - buttonWidth301 / 2, btnV2.origin.y + 520 - buttonHeight301 / 2, buttonWidth301, buttonHeight301);
            
            btnPage122 = [ [ UIButton alloc] initWithFrame : btnFrameV2 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnPage122 setTitle:@"" forState:UIControlStateNormal];
            [btnPage122 addTarget:self action:@selector(openAnimate2:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnPage122 ];
            
            
            
            
            
            
            CGRect btnV3 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth302 = 100.0;
            CGFloat buttonHeight302 = 100.0;
            
            CGRect btnFrameV3 = CGRectMake(btnV3.origin.x + 820 - buttonWidth302 / 2, btnV3.origin.y + 620 - buttonHeight302 / 2, buttonWidth302, buttonHeight302);
            
            btnPage123 = [ [ UIButton alloc] initWithFrame : btnFrameV3 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnPage123 setTitle:@"" forState:UIControlStateNormal];
            [btnPage123 addTarget:self action:@selector(openAnimate3:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnPage123 ];
            
            
            
        }
            
            
        }
        else if(page == 8)
        {
            
            
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            compteur_click = 0;
            compteur_click2 = 0;
            compteur_click3 = 0;
            
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 3;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(175/255.0) green:(202/255.0) blue:(11/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            CGRect rT112 = CGRectMake ( self.scrollView.frame.size.width * 8, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat IRW112 = 306.0;
            CGFloat IRH112 = 51.5;
            
            CGRect IR112 = CGRectMake(rT112.origin.x + 0 - IRW112 / 2, rT112.origin.y + 200 - IRH112 / 2, IRW112, IRH112);
            
            texte1Page11 = [[UIImageView alloc] initWithFrame:IR112];
            texte1Page11.image=[UIImage imageNamed:@"texte1Page11.png"];
            [self.scrollView addSubview:texte1Page11];
            
            // Move the image
            [self moveImage:texte1Page11 duration:0.5
                      curve:UIViewAnimationCurveLinear x:285.0 y:0.0];
            
            
            
            timerTexte1 = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(animationTexte2) userInfo:nil repeats:NO];
            
            timerTexte2 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(animationTexte3) userInfo:nil repeats:NO];
            
            timerTexte3 = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(animationTexte4) userInfo:nil repeats:NO];
            
            timerTexte4 = [NSTimer scheduledTimerWithTimeInterval:2.5 target:self selector:@selector(animationTexte5) userInfo:nil repeats:NO];
            
            
        }
        else if(page == 9)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 0;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(128/255.0) green:(52/255.0) blue:(139/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            // ANIMATION
            
            // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
            view7 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
            view7.frame = CGRectMake(20, 20, 100, 100);
            [view7 setBackgroundColor:[UIColor clearColor]];
            [view7 setTag:117];
            
            
            
            // REFF //
            
            imageAnimate7 = [[UIImageView alloc] initWithFrame:self.view.bounds];
            imageAnimate7.frame = CGRectMake(600, 370, 300, 300);
            imageAnimate7.animationImages = [NSArray arrayWithObjects:
                                             [UIImage imageNamed:@"fleche1.png"],
                                             [UIImage imageNamed:@"fleche2.png"],
                                             [UIImage imageNamed:@"fleche3.png"],
                                             [UIImage imageNamed:@"fleche4.png"],
                                             [UIImage imageNamed:@"fleche5.png"],
                                             [UIImage imageNamed:@"fleche6.png"],
                                             [UIImage imageNamed:@"fleche7.png"],
                                             [UIImage imageNamed:@"fleche8.png"],
                                             [UIImage imageNamed:@"fleche9.png"],
                                             [UIImage imageNamed:@"fleche10.png"],
                                             [UIImage imageNamed:@"fleche11.png"],
                                             [UIImage imageNamed:@"fleche12.png"],
                                             [UIImage imageNamed:@"fleche13.png"],
                                             [UIImage imageNamed:@"fleche14.png"],
                                             [UIImage imageNamed:@"fleche15.png"],
                                             [UIImage imageNamed:@"fleche16.png"],
                                             [UIImage imageNamed:@"fleche17.png"],
                                             [UIImage imageNamed:@"fleche18.png"],
                                             [UIImage imageNamed:@"fleche19.png"],
                                             [UIImage imageNamed:@"fleche20.png"],
                                             [UIImage imageNamed:@"fleche21.png"]
                                             ,
                                             [UIImage imageNamed:@"fleche22.png"],
                                             [UIImage imageNamed:@"fleche23.png"],
                                             [UIImage imageNamed:@"fleche24.png"],
                                             [UIImage imageNamed:@"fleche25.png"]
                                             ,
                                             [UIImage imageNamed:@"fleche26.png"],
                                             [UIImage imageNamed:@"fleche27.png"],
                                             [UIImage imageNamed:@"fleche28.png"],
                                             [UIImage imageNamed:@"fleche29.png"],[UIImage imageNamed:@"fleche30.png"],
                                             [UIImage imageNamed:@"fleche31.png"]
                                             ,
                                             [UIImage imageNamed:@"fleche32.png"],
                                             [UIImage imageNamed:@"fleche33.png"],
                                             [UIImage imageNamed:@"fleche34.png"],
                                             [UIImage imageNamed:@"fleche35.png"]
                                             ,
                                             [UIImage imageNamed:@"fleche36.png"],
                                             [UIImage imageNamed:@"fleche37.png"],
                                             [UIImage imageNamed:@"fleche38.png"],
                                             [UIImage imageNamed:@"fleche39.png"],
                                             [UIImage imageNamed:@"fleche40.png"],nil];
            imageAnimate7.animationDuration = 1.7f;
            imageAnimate7.animationRepeatCount = 0;
            [imageAnimate7 startAnimating];
            [view7 addSubview:imageAnimate7];
            
            
            // Add the container view to the image view.
            [self.view addSubview:imageAnimate7];
            
            
            
        }
        else if(page == 10)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];
            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            

            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 1;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(128/255.0) green:(52/255.0) blue:(139/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            // ANIMATION
            
            // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
            view6 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
            view6.frame = CGRectMake(20, 20, 100, 100);
            [view6 setBackgroundColor:[UIColor clearColor]];
            [view6 setTag:116];
            
            
            
            // REFF //
            
            imageAnimate6 = [[UIImageView alloc] initWithFrame:self.view.bounds];
            imageAnimate6.frame = CGRectMake(660, 330, 200, 150);
            imageAnimate6.animationImages = [NSArray arrayWithObjects:
                                             [UIImage imageNamed:@"cahier1.png"],
                                             [UIImage imageNamed:@"cahier2.png"],
                                             [UIImage imageNamed:@"cahier3.png"],
                                             [UIImage imageNamed:@"cahier4.png"],
                                             [UIImage imageNamed:@"cahier5.png"],
                                             [UIImage imageNamed:@"cahier6.png"],
                                             [UIImage imageNamed:@"cahier7.png"],
                                             [UIImage imageNamed:@"cahier8.png"],
                                             [UIImage imageNamed:@"cahier9.png"],
                                             [UIImage imageNamed:@"cahier10.png"],
                                             [UIImage imageNamed:@"cahier11.png"],
                                             [UIImage imageNamed:@"cahier12.png"],
                                             [UIImage imageNamed:@"cahier13.png"],
                                             [UIImage imageNamed:@"cahier14.png"],
                                             [UIImage imageNamed:@"cahier15.png"],
                                             [UIImage imageNamed:@"cahier16.png"],
                                             [UIImage imageNamed:@"cahier17.png"],
                                             [UIImage imageNamed:@"cahier18.png"],
                                             [UIImage imageNamed:@"cahier19.png"],
                                             [UIImage imageNamed:@"cahier20.png"],
                                             [UIImage imageNamed:@"cahier21.png"]
                                             ,
                                             [UIImage imageNamed:@"cahier22.png"],
                                             [UIImage imageNamed:@"cahier23.png"],
                                             [UIImage imageNamed:@"cahier24.png"],
                                             [UIImage imageNamed:@"cahier25.png"]
                                             ,
                                             [UIImage imageNamed:@"cahier26.png"],
                                             [UIImage imageNamed:@"cahier27.png"],
                                             [UIImage imageNamed:@"cahier28.png"],
                                             [UIImage imageNamed:@"cahier29.png"],[UIImage imageNamed:@"cahier30.png"],
                                             [UIImage imageNamed:@"cahier31.png"]
                                             ,
                                             [UIImage imageNamed:@"cahier32.png"],
                                             [UIImage imageNamed:@"cahier33.png"],
                                             [UIImage imageNamed:@"cahier34.png"],
                                             [UIImage imageNamed:@"cahier35.png"]
                                             ,
                                             [UIImage imageNamed:@"cahier36.png"],
                                             [UIImage imageNamed:@"cahier37.png"],nil];
            imageAnimate6.animationDuration = 1.3f;
            imageAnimate6.animationRepeatCount = 1;
            [imageAnimate6 startAnimating];
            [view6 addSubview:imageAnimate6];
            
            
            // Add the container view to the image view.
            [self.view addSubview:imageAnimate6];
            
            
            
            timerCahier1 = [NSTimer scheduledTimerWithTimeInterval:1.3 target:self selector:@selector(timerCahier) userInfo:nil repeats:NO];
            
            
            
        }
        else if(page == 11)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];

            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            countFrance1 = 0;
            countFrance2 = 0;
            countFrance3 = 0;
            countFrance4 = 0;
            countFrance5 = 0;
            countFrance6 = 0;
            countFrance7 = 0;
            countFrance8 = 0;
            countFrance9 = 0;
            countFrance10 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            

            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 2;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(128/255.0) green:(52/255.0) blue:(139/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            // ANIMATION
            
            // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
            view5 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
            view5.frame = CGRectMake(20, 20, 100, 100);
            [view5 setBackgroundColor:[UIColor clearColor]];
            [view5 setTag:115];
            
            
            
            // REFF //
            
            imageAnimate5 = [[UIImageView alloc] initWithFrame:self.view.bounds];
            imageAnimate5.frame = CGRectMake(660, 330, 200, 70);
            imageAnimate5.animationImages = [NSArray arrayWithObjects:
                                             [UIImage imageNamed:@"cnx1.png"],
                                             [UIImage imageNamed:@"cnx2.png"],
                                             [UIImage imageNamed:@"cnx3.png"],
                                             [UIImage imageNamed:@"cnx4.png"],
                                             [UIImage imageNamed:@"cnx5.png"],
                                             [UIImage imageNamed:@"cnx6.png"],
                                             [UIImage imageNamed:@"cnx7.png"],
                                             [UIImage imageNamed:@"cnx8.png"],
                                             [UIImage imageNamed:@"cnx9.png"],
                                             [UIImage imageNamed:@"cnx10.png"],
                                             [UIImage imageNamed:@"cnx11.png"],
                                             [UIImage imageNamed:@"cnx12.png"],
                                             [UIImage imageNamed:@"cnx13.png"],
                                             [UIImage imageNamed:@"cnx14.png"],
                                             [UIImage imageNamed:@"cnx15.png"],
                                             [UIImage imageNamed:@"cnx16.png"],
                                             [UIImage imageNamed:@"cnx17.png"],
                                             [UIImage imageNamed:@"cnx18.png"],
                                             [UIImage imageNamed:@"cnx19.png"],
                                             [UIImage imageNamed:@"cnx20.png"],
                                             [UIImage imageNamed:@"cnx21.png"]
                                                ,
                                             [UIImage imageNamed:@"cnx22.png"],
                                             [UIImage imageNamed:@"cnx23.png"],
                                             [UIImage imageNamed:@"cnx24.png"],
                                             [UIImage imageNamed:@"cnx25.png"]
                                                ,
                                             [UIImage imageNamed:@"cnx29.png"],
                                             [UIImage imageNamed:@"cnx30.png"],
                                             [UIImage imageNamed:@"cnx31.png"],
                                             [UIImage imageNamed:@"cnx32.png"],nil];
            imageAnimate5.animationDuration = 1.3f;
            imageAnimate5.animationRepeatCount = 0;
            [imageAnimate5 startAnimating];
            [view5 addSubview:imageAnimate5];
            
            
            // Add the container view to the image view.
            [self.view addSubview:imageAnimate5];
            
            
            
            
        }
        else if(page == 12)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];

            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            countFrance1 = 0;
            countFrance2 = 0;
            countFrance3 = 0;
            countFrance4 = 0;
            countFrance5 = 0;
            countFrance6 = 0;
            countFrance7 = 0;
            countFrance8 = 0;
            countFrance9 = 0;
            countFrance10 = 0;
            
            
            
            /* Les 3 boutons */
            varBtnIpsen = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnIpsen.frame = CGRectMake(0, -3, 342, 45);
            [varBtnIpsen setImage:[UIImage imageNamed:@"btnIpsen.png"] forState:UIControlStateNormal];
            [varBtnIpsen addTarget:self action:@selector(showBtnIpsen:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnIpsen];
            
            
            
            varBtnOnco = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtnOnco.frame = CGRectMake(342, -3, 342, 45);
            [varBtnOnco setImage:[UIImage imageNamed:@"btnOnco.png"] forState:UIControlStateNormal];
            [varBtnOnco addTarget:self action:@selector(showBtnOnco:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtnOnco];
            
            
            
            
            varBtn3I = [UIButton buttonWithType:UIButtonTypeCustom];
            varBtn3I.frame = CGRectMake(682, -3, 342, 45);
            [varBtn3I setImage:[UIImage imageNamed:@"btn3I.png"] forState:UIControlStateNormal];
            [varBtn3I addTarget:self action:@selector(showBtn3I:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:varBtn3I];
            
            
            
            
            
            
            
            
            
            
            
            
            
            CGRect pageControl1 = CGRectMake ( self.scrollView.frame.size.width * 0, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat pageControlWidth = 560.0;
            CGFloat pageControlHeight = 40.0;
            
            CGRect pageControlFrame = CGRectMake(pageControl1.origin.x + 509 - pageControlWidth / 2, pageControl1.origin.y + 738 - pageControlHeight / 2, pageControlWidth, pageControlHeight);
            
            pageControl = [[UIPageControl alloc] initWithFrame:pageControlFrame];
            pageControl.numberOfPages = 4;
            pageControl.currentPage = 3;
            pageControl.pageIndicatorTintColor = [UIColor colorWithRed:(255/255.0) green:(255/255.0) blue:(255/255.0) alpha:1.0];
            pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:(128/255.0) green:(52/255.0) blue:(139/255.0) alpha:1.0];
            pageControl.backgroundColor = [UIColor clearColor];
            [self.view addSubview:pageControl];
            
            
            
            
            
            
            
            
            
            
            
            // ANIMATION FRANCE
            
            CGRect btnV2 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth301 = 200.0;
            CGFloat buttonHeight301 = 60.0;
            
            CGRect btnFrameV2 = CGRectMake(btnV2.origin.x + 200 - buttonWidth301 / 2, btnV2.origin.y + 430 - buttonHeight301 / 2, buttonWidth301, buttonHeight301);
            
            btnFrance1 = [ [ UIButton alloc] initWithFrame : btnFrameV2 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance1 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance1 addTarget:self action:@selector(btnFunctionFrance1:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance1 ];
            
            
            
            
            
            
            
            
            
            
            CGRect btnV3 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth1 = 200.0;
            CGFloat buttonHeight1 = 60.0;
            
            CGRect btnFrameV1 = CGRectMake(btnV3.origin.x + 200 - buttonWidth1 / 2, btnV3.origin.y + 500 - buttonHeight1 / 2, buttonWidth1, buttonHeight1);
            
            btnFrance2 = [ [ UIButton alloc] initWithFrame : btnFrameV1 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance2 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance2 addTarget:self action:@selector(btnFunctionFrance2:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance2 ];
            
            
            
            
            
            
            
            
            
            CGRect btnV4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth2 = 200.0;
            CGFloat buttonHeight2 = 60.0;
            
            CGRect btnFrameV3 = CGRectMake(btnV4.origin.x + 200 - buttonWidth2 / 2, btnV4.origin.y + 560 - buttonHeight2 / 2, buttonWidth2, buttonHeight2);
            
            btnFrance3 = [ [ UIButton alloc] initWithFrame : btnFrameV3 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance3 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance3 addTarget:self action:@selector(btnFunctionFrance3:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance3 ];
            
            
            
            
            
            
            
            
            
            CGRect btnV5 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth5 = 200.0;
            CGFloat buttonHeight5 = 60.0;
            
            CGRect btnFrameV5 = CGRectMake(btnV5.origin.x + 200 - buttonWidth5 / 2, btnV5.origin.y + 610 - buttonHeight5 / 2, buttonWidth5, buttonHeight5);
            
            btnFrance4 = [ [ UIButton alloc] initWithFrame : btnFrameV5 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance4 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance4 addTarget:self action:@selector(btnFunctionFrance4:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance4 ];
            
            
            
            
            
            
            
            
            
            
            // FIN RANGER 1 FIN
            
            
            
            
            
            
            
            
            
            CGRect btnV6 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth6 = 200.0;
            CGFloat buttonHeight6 = 60.0;
            
            CGRect btnFrameV6 = CGRectMake(btnV6.origin.x + 730 - buttonWidth6 / 2, btnV6.origin.y + 430 - buttonHeight6 / 2, buttonWidth6, buttonHeight6);
            
            btnFrance5 = [ [ UIButton alloc] initWithFrame : btnFrameV6 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance5 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance5 addTarget:self action:@selector(btnFunctionFrance5:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance5 ];
            
            
            
            
            
            
            
            
            
            
            CGRect btnV7 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth7 = 200.0;
            CGFloat buttonHeight7 = 60.0;
            
            CGRect btnFrameV7 = CGRectMake(btnV7.origin.x + 730 - buttonWidth7 / 2, btnV7.origin.y + 480 - buttonHeight7 / 2, buttonWidth7, buttonHeight7);
            
            btnFrance6 = [ [ UIButton alloc] initWithFrame : btnFrameV7 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance6 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance6 addTarget:self action:@selector(btnFunctionFrance6:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance6 ];
            
            
            
            
            
            
            
            
            
            CGRect btnV8 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth8 = 200.0;
            CGFloat buttonHeight8 = 60.0;
            
            CGRect btnFrameV8 = CGRectMake(btnV8.origin.x + 730 - buttonWidth8 / 2, btnV8.origin.y + 520 - buttonHeight8 / 2, buttonWidth8, buttonHeight8);
            
            btnFrance7 = [ [ UIButton alloc] initWithFrame : btnFrameV8 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance7 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance7 addTarget:self action:@selector(btnFunctionFrance7:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance7 ];
            
            
            
            
            
            
            
            
            
            CGRect btnV9 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth9 = 200.0;
            CGFloat buttonHeight9 = 60.0;
            
            CGRect btnFrameV9 = CGRectMake(btnV9.origin.x + 730 - buttonWidth9 / 2, btnV9.origin.y + 560 - buttonHeight9 / 2, buttonWidth9, buttonHeight9);
            
            btnFrance8 = [ [ UIButton alloc] initWithFrame : btnFrameV9 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance8 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance8 addTarget:self action:@selector(btnFunctionFrance8:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance8 ];
            
            
            
            
            
            
            
            
            
            
            CGRect btnV10 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth10 = 200.0;
            CGFloat buttonHeight10 = 60.0;
            
            CGRect btnFrameV10 = CGRectMake(btnV10.origin.x + 730 - buttonWidth10 / 2, btnV10.origin.y + 620 - buttonHeight10 / 2, buttonWidth10, buttonHeight10);
            
            btnFrance9 = [ [ UIButton alloc] initWithFrame : btnFrameV10 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnFrance9 setTitle:@"" forState:UIControlStateNormal];
            [btnFrance9 addTarget:self action:@selector(btnFunctionFrance9:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnFrance9 ];
            
            
            
            
            
            
            CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidth4 = 50.0;
            CGFloat imageRefHeight4 = 50.0;
            
            CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 525 - ImageRefWidth4 / 2, refTarget4.origin.y + 540 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
            
            cliquezICI = [[UIImageView alloc] initWithFrame:imgRef4];
            cliquezICI.image=[UIImage imageNamed:@"cliquezIci.png"];
            [self.scrollView addSubview:cliquezICI];
            
            
            
            
            
            CGRect btnV11 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat buttonWidth11 = 200.0;
            CGFloat buttonHeight11 = 200.0;
            
            CGRect btnFrameV11 = CGRectMake(btnV11.origin.x + 530 - buttonWidth11 / 2, btnV11.origin.y + 530 - buttonHeight11 / 2, buttonWidth11, buttonHeight11);
            
            btnAll = [ [ UIButton alloc] initWithFrame : btnFrameV11 ] ;
            //button.frame = CGRectMake(240, 610, 150, 40);
            [btnAll setTitle:@"" forState:UIControlStateNormal];
            [btnAll addTarget:self action:@selector(btnAllFrance:) forControlEvents:UIControlEventTouchUpInside];
            [self.scrollView addSubview : btnAll ];
            
            
            
        }
        else if(page == 13)
        {
            [pageControl removeFromSuperview];
            [varBtnIpsen removeFromSuperview];
            [varBtnOnco removeFromSuperview];
            [varBtn3I removeFromSuperview];
            [texteFixe11 removeFromSuperview];
            [texteFixe12 removeFromSuperview];
            [texteFixe13 removeFromSuperview];
            [texteFixe14 removeFromSuperview];
            [texteFixe15 removeFromSuperview];
            [texteFixe16 removeFromSuperview];
            [timer1 invalidate];
            
            [btn1 removeFromSuperview];
            [btn2 removeFromSuperview];
            [btn3 removeFromSuperview];
            
            [img1 removeFromSuperview];
            [img2 removeFromSuperview];
            [img3 removeFromSuperview];
            [img4 removeFromSuperview];
            [timer2 invalidate];
            [timer3 invalidate];
            [timer4 invalidate];
            
            [img5 removeFromSuperview];
            [img6 removeFromSuperview];
            [img8 removeFromSuperview];
            [img9 removeFromSuperview];
            [img10 removeFromSuperview];
            [img11 removeFromSuperview];
            [timer5 invalidate];
            [timer7 invalidate];
            [timer8 invalidate];
            [timer9 invalidate];
            [timer10 invalidate];
            [timer11 invalidate];
            [timer11A2 invalidate];

            
            [img13 removeFromSuperview];
            [img14 removeFromSuperview];
            [img15 removeFromSuperview];
            [img16 removeFromSuperview];
            [img17 removeFromSuperview];
            [timer12 invalidate];
            [timer13 invalidate];
            [timer14 invalidate];
            [timer15 invalidate];
            [timer16 invalidate];
            
            [icoo1 removeFromSuperview];
            [icoo2 removeFromSuperview];
            [icoo3 removeFromSuperview];
            [icoo4 removeFromSuperview];
            [icoo5 removeFromSuperview];
            [icoo6 removeFromSuperview];
            [t1 invalidate];
            [t2 invalidate];
            [t3 invalidate];
            [t4 invalidate];
            [t5 invalidate];
            [t6 invalidate];
            
            [img1003 removeFromSuperview];
            [img1004 removeFromSuperview];
            [img1005 removeFromSuperview];
            
            [texte1Page11 removeFromSuperview];
            [texte2Page11 removeFromSuperview];
            [texte3Page11 removeFromSuperview];
            [texte4Page11 removeFromSuperview];
            [texte5Page11 removeFromSuperview];
            [timerTexte1 invalidate];
            [timerTexte2 invalidate];
            [timerTexte3 invalidate];
            [timerTexte4 invalidate];
            [img9992 removeFromSuperview];
            
            [view1 removeFromSuperview];
            [view2 removeFromSuperview];
            [view3 removeFromSuperview];
            [imageAnimate1 removeFromSuperview];
            [imageAnimate2 removeFromSuperview];
            [imageAnimate3 removeFromSuperview];
            [timerImage1 invalidate];
            [timerImage2 invalidate];
            [timerImage3 invalidate];
            
            [view5 removeFromSuperview];
            [imageAnimate5 removeFromSuperview];
            
            [view6 removeFromSuperview];
            [imageAnimate6 removeFromSuperview];
            
            [view7 removeFromSuperview];
            [imageAnimate7 removeFromSuperview];
            
            [timerImg1 invalidate];
            [timerImg2 invalidate];
            [timerImg3 invalidate];
            [barreFixed1 removeFromSuperview];
            [barreFixed2 removeFromSuperview];
            [barreFixed3 removeFromSuperview];
            
            [timerCahier1 invalidate];
            [imgCahier1 removeFromSuperview];
            
            [timerActeurPO invalidate];
            [acteurPO removeFromSuperview];
            [textePage5 removeFromSuperview];
            
            [animateInteraction1 invalidate];
            [animateInteraction2 invalidate];
            [animateInteraction3 invalidate];
            [animateInteraction4 invalidate];
            [animateInteraction5 invalidate];
            [animateInteraction6 invalidate];
            [animateInteraction7 invalidate];
            [animateInteraction8 invalidate];
            [animateInteraction9 invalidate];
            [imgAnimateI1 removeFromSuperview];
            [imgAnimateI2 removeFromSuperview];
            [imgAnimateI3 removeFromSuperview];
            [imgAnimateI4 removeFromSuperview];
            [imgAnimateI5 removeFromSuperview];
            [imgAnimateI6 removeFromSuperview];
            [imgAnimateI7 removeFromSuperview];
            [imgAnimateI8 removeFromSuperview];
            [imgAnimateI9 removeFromSuperview];
            [animateInteraction10 invalidate];
            [animateInteraction11 invalidate];
            [animateInteraction12 invalidate];
            [animateInteraction13 invalidate];
            [animateInteraction14 invalidate];
            [animateInteraction15 invalidate];
            [animateInteraction16 invalidate];
            [animateInteraction17 invalidate];
            
            [point1 removeFromSuperview];
            [point2 removeFromSuperview];
            [point3 removeFromSuperview];
            [point4 removeFromSuperview];
            [timerPoint1 invalidate];
            [timerPoint2 invalidate];
            [timerPoint3 invalidate];
            [timerPoint4 invalidate];
            
            [point10 removeFromSuperview];
            [point11 removeFromSuperview];
            [point12 removeFromSuperview];
            [point13 removeFromSuperview];
            [point14 removeFromSuperview];
            [point15 removeFromSuperview];
            [point16 removeFromSuperview];
            [point17 removeFromSuperview];
            [timerGlobe1 invalidate];
            [timerGlobe2 invalidate];
            [timerGlobe3 invalidate];
            [timerGlobe4 invalidate];
            [timerGlobe5 invalidate];
            [timerGlobe6 invalidate];
            [timerGlobe7 invalidate];
            [timerGlobe8 invalidate];
            
            [france1 removeFromSuperview];
            [france2 removeFromSuperview];
            [france3 removeFromSuperview];
            [france4 removeFromSuperview];
            [france5 removeFromSuperview];
            [france6 removeFromSuperview];
            [france7 removeFromSuperview];
            [france8 removeFromSuperview];
            [france9 removeFromSuperview];
            
            tapCount1 = 0;
            tapCount2 = 0;
            tapCount3 = 0;
            
            
            
            // Ajout de la référence //
            CGRect refTargetreff1 = CGRectMake ( self.scrollView.frame.size.width * 13, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
            
            CGFloat ImageRefWidthreff1 = 8;
            CGFloat imageRefHeightreff1 = 87;
            
            CGRect imgRefref1 = CGRectMake(refTargetreff1.origin.x + 988 - ImageRefWidthreff1 / 2, refTargetreff1.origin.y + 590 - imageRefHeightreff1 / 2, ImageRefWidthreff1, imageRefHeightreff1);
            
            imgReff1 = [[UIImageView alloc] initWithFrame:imgRefref1];
            imgReff1.image=[UIImage imageNamed:@"ref_ipsen.png"];
            [self.scrollView addSubview:imgReff1];
            
            
            


            
        }
        
    }
    else
    {
        [varS21 removeFromSuperview];
        [varS22 removeFromSuperview];
        [varS23 removeFromSuperview];
        
        [varS31 removeFromSuperview];
        [varS32 removeFromSuperview];
        [varS33 removeFromSuperview];
        [varS34 removeFromSuperview];
        
        
        [varS11 removeFromSuperview];
        [varS12 removeFromSuperview];
        [varS13 removeFromSuperview];
        [varS14 removeFromSuperview];
        
        
        
        
        
        
    }
}



- (void) animationTexte2
{
    CGRect rT112 = CGRectMake ( self.scrollView.frame.size.width * 8, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW112 = 683.5;
    CGFloat IRH112 = 41.5;
    
    CGRect IR112 = CGRectMake(rT112.origin.x + 480 - IRW112 / 2, rT112.origin.y + 340 - IRH112 / 2, IRW112, IRH112);
    
    texte2Page11 = [[UIImageView alloc] initWithFrame:IR112];
    texte2Page11.image=[UIImage imageNamed:@"texte2Page11.png"];
    [self.scrollView addSubview:texte2Page11];
}

- (void) animationTexte3
{
    CGRect rT112 = CGRectMake ( self.scrollView.frame.size.width * 8, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW112 = 666.5;
    CGFloat IRH112 = 82.0;
    
    CGRect IR112 = CGRectMake(rT112.origin.x + 470 - IRW112 / 2, rT112.origin.y + 440 - IRH112 / 2, IRW112, IRH112);
    
    texte3Page11 = [[UIImageView alloc] initWithFrame:IR112];
    texte3Page11.image=[UIImage imageNamed:@"texte3Page11.png"];
    [self.scrollView addSubview:texte3Page11];
}

- (void) animationTexte4
{
    CGRect rT112 = CGRectMake ( self.scrollView.frame.size.width * 8, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW112 = 666.5;
    CGFloat IRH112 = 82.5;
    
    CGRect IR112 = CGRectMake(rT112.origin.x + 470 - IRW112 / 2, rT112.origin.y + 540 - IRH112 / 2, IRW112, IRH112);
    
    texte4Page11 = [[UIImageView alloc] initWithFrame:IR112];
    texte4Page11.image=[UIImage imageNamed:@"texte4Page11.png"];
    [self.scrollView addSubview:texte4Page11];
}

- (void) animationTexte5
{
    CGRect rT112 = CGRectMake ( self.scrollView.frame.size.width * 8, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW112 = 639.0;
    CGFloat IRH112 = 41.5;
    
    CGRect IR112 = CGRectMake(rT112.origin.x + 458 - IRW112 / 2, rT112.origin.y + 640 - IRH112 / 2, IRW112, IRH112);
    
    texte5Page11 = [[UIImageView alloc] initWithFrame:IR112];
    texte5Page11.image=[UIImage imageNamed:@"texte5Page11.png"];
    [self.scrollView addSubview:texte5Page11];
}


static int compteur_click = 0;
static int compteur_click2 = 0;
static int compteur_click3 = 0;

- (IBAction)openAnimate1:(id) sender
{
    
    /*[img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    */
    
    [icoo2 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t2 invalidate];
    [t4 invalidate];
    [t6 invalidate];
    
    
    compteur_click++;
    
    if(compteur_click == 1)
    {
    
    CGRect rT11 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW11 = 644.5;
    CGFloat IRH11 = 103.5;
    
    CGRect IR11 = CGRectMake(rT11.origin.x + 840 - IRW11 / 2, rT11.origin.y + 420 - IRH11 / 2, IRW11, IRH11);
    
    img1003 = [[UIImageView alloc] initWithFrame:IR11];
    img1003.image=[UIImage imageNamed:@"fiche1.png"];
    [self.scrollView addSubview:img1003];
    
    // Move the image
    [self moveImage:img1003 duration:0.5
              curve:UIViewAnimationCurveLinear x:-370.0 y:0.0];
        
    }
    else
    {
        
    }

    
}


- (IBAction)openAnimate2:(id) sender
{
    
    /*[img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    */
    
    [icoo2 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t2 invalidate];
    [t4 invalidate];
    [t6 invalidate];

    compteur_click2 ++;
    
    if(compteur_click2 == 1)
    {
    CGRect rT11 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW11 = 644.5;
    CGFloat IRH11 = 103.5;
    
    CGRect IR11 = CGRectMake(rT11.origin.x + 840 - IRW11 / 2, rT11.origin.y + 530 - IRH11 / 2, IRW11, IRH11);
    
    img1004 = [[UIImageView alloc] initWithFrame:IR11];
    img1004.image=[UIImage imageNamed:@"fiche2.png"];
    [self.scrollView addSubview:img1004];
    
    // Move the image
    [self moveImage:img1004 duration:0.5
              curve:UIViewAnimationCurveLinear x:-370.0 y:0.0];
    
    }
    else
    {
        
    }

}


- (IBAction)openAnimate3:(id) sender
{
    
    /*[img1003 removeFromSuperview];
    [img1004 removeFromSuperview];
    [img1005 removeFromSuperview];
    */
    
    [icoo2 removeFromSuperview];
    [icoo4 removeFromSuperview];
    [icoo6 removeFromSuperview];
    [t2 invalidate];
    [t4 invalidate];
    [t6 invalidate];
    
    
    compteur_click3 ++;
    
    if(compteur_click3 == 1)
    {
    CGRect rT11 = CGRectMake ( self.scrollView.frame.size.width * 7, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW11 = 644.5;
    CGFloat IRH11 = 103.5;
    
    CGRect IR11 = CGRectMake(rT11.origin.x + 840 - IRW11 / 2, rT11.origin.y + 640 - IRH11 / 2, IRW11, IRH11);
    
    img1005 = [[UIImageView alloc] initWithFrame:IR11];
    img1005.image=[UIImage imageNamed:@"fiche3.png"];
    [self.scrollView addSubview:img1005];
    
    // Move the image
    [self moveImage:img1005 duration:0.5
              curve:UIViewAnimationCurveLinear x:-370.0 y:0.0];
    }
    else
    {
        
    }
    
    
}






// IMAGE ANIMATE

- (void) imageAnimate1Page1
{
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    view1 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    view1.frame = CGRectMake(20, 20, 100, 100);
    [view1 setBackgroundColor:[UIColor clearColor]];
    [view1 setTag:111];
    
    
    
    // REFF //
    
    imageAnimate1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageAnimate1.frame = CGRectMake(40, 460, 240, 150);
    imageAnimate1.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"b1.png"],
                                          [UIImage imageNamed:@"b2.png"],
                                          [UIImage imageNamed:@"b3.png"],
                                          [UIImage imageNamed:@"b4.png"],
                                          [UIImage imageNamed:@"b5.png"],
                                          [UIImage imageNamed:@"b6.png"],
                                          [UIImage imageNamed:@"b7.png"],
                                          [UIImage imageNamed:@"b8.png"],
                                          [UIImage imageNamed:@"b9.png"],
                                          [UIImage imageNamed:@"b10.png"],
                                          [UIImage imageNamed:@"b11.png"],
                                          [UIImage imageNamed:@"b12.png"],
                                          [UIImage imageNamed:@"b13.png"],
                                          [UIImage imageNamed:@"b14.png"],
                                          [UIImage imageNamed:@"b15.png"],
                                          [UIImage imageNamed:@"b16.png"],
                                          [UIImage imageNamed:@"b17.png"],
                                          [UIImage imageNamed:@"b18.png"],
                                          [UIImage imageNamed:@"b19.png"],
                                          [UIImage imageNamed:@"b20.png"],
                                          [UIImage imageNamed:@"b21.png"],
                                          [UIImage imageNamed:@"b22.png"],
                                          [UIImage imageNamed:@"b23.png"],
                                          [UIImage imageNamed:@"b24.png"],
                                          [UIImage imageNamed:@"b25.png"],
                                          [UIImage imageNamed:@"b26.png"],
                                          [UIImage imageNamed:@"b27.png"],
                                          [UIImage imageNamed:@"b28.png"],
                                          [UIImage imageNamed:@"b29.png"],
                                          [UIImage imageNamed:@"b30.png"],
                                          [UIImage imageNamed:@"b31.png"],
                                          [UIImage imageNamed:@"b32.png"],
                                          [UIImage imageNamed:@"b33.png"],
                                          [UIImage imageNamed:@"b34.png"],
                                          [UIImage imageNamed:@"b35.png"],
                                          [UIImage imageNamed:@"b36.png"],
                                          [UIImage imageNamed:@"b37.png"],
                                          [UIImage imageNamed:@"b38.png"],
                                          [UIImage imageNamed:@"b39.png"],
                                          [UIImage imageNamed:@"b40.png"],
                                          [UIImage imageNamed:@"b41.png"],
                                          [UIImage imageNamed:@"b42.png"],
                                          [UIImage imageNamed:@"b43.png"],
                                          [UIImage imageNamed:@"b44.png"],
                                          [UIImage imageNamed:@"b45.png"],
                                          [UIImage imageNamed:@"b46.png"],
                                          [UIImage imageNamed:@"b47.png"],
                                          [UIImage imageNamed:@"b48.png"],
                                          [UIImage imageNamed:@"b49.png"],
                                          [UIImage imageNamed:@"b50.png"],
                                          [UIImage imageNamed:@"b51.png"],
                                          [UIImage imageNamed:@"b52.png"],
                                          nil];
    imageAnimate1.animationDuration = 1.3f;
    imageAnimate1.animationRepeatCount = 1;
    [imageAnimate1 startAnimating];
    [view1 addSubview:imageAnimate1];
    
    
    // Add the container view to the image view.
    [self.view addSubview:view1];
    
    
    
}




- (void) imageAnimate2Page1
{
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    view2 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    view2.frame = CGRectMake(20, 20, 100, 100);
    [view2 setBackgroundColor:[UIColor clearColor]];
    [view2 setTag:112];
    
    
    
    // REFF //
    
    imageAnimate1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageAnimate1.frame = CGRectMake(720, 460, 240, 150);
    imageAnimate1.animationImages = [NSArray arrayWithObjects:
                                     [UIImage imageNamed:@"b1.png"],
                                     [UIImage imageNamed:@"b2.png"],
                                     [UIImage imageNamed:@"b3.png"],
                                     [UIImage imageNamed:@"b4.png"],
                                     [UIImage imageNamed:@"b5.png"],
                                     [UIImage imageNamed:@"b6.png"],
                                     [UIImage imageNamed:@"b7.png"],
                                     [UIImage imageNamed:@"b8.png"],
                                     [UIImage imageNamed:@"b9.png"],
                                     [UIImage imageNamed:@"b10.png"],
                                     [UIImage imageNamed:@"b11.png"],
                                     [UIImage imageNamed:@"b12.png"],
                                     [UIImage imageNamed:@"b13.png"],
                                     [UIImage imageNamed:@"b14.png"],
                                     [UIImage imageNamed:@"b15.png"],
                                     [UIImage imageNamed:@"b16.png"],
                                     [UIImage imageNamed:@"b17.png"],
                                     [UIImage imageNamed:@"b18.png"],
                                     [UIImage imageNamed:@"b19.png"],
                                     [UIImage imageNamed:@"b20.png"],
                                     [UIImage imageNamed:@"b21.png"],
                                     [UIImage imageNamed:@"b22.png"],
                                     [UIImage imageNamed:@"b23.png"],
                                     [UIImage imageNamed:@"b24.png"],
                                     [UIImage imageNamed:@"b25.png"],
                                     [UIImage imageNamed:@"b26.png"],
                                     [UIImage imageNamed:@"b27.png"],
                                     [UIImage imageNamed:@"b28.png"],
                                     [UIImage imageNamed:@"b29.png"],
                                     [UIImage imageNamed:@"b30.png"],
                                     [UIImage imageNamed:@"b31.png"],
                                     [UIImage imageNamed:@"b32.png"],
                                     [UIImage imageNamed:@"b33.png"],
                                     [UIImage imageNamed:@"b34.png"],
                                     [UIImage imageNamed:@"b35.png"],
                                     [UIImage imageNamed:@"b36.png"],
                                     [UIImage imageNamed:@"b37.png"],
                                     [UIImage imageNamed:@"b38.png"],
                                     [UIImage imageNamed:@"b39.png"],
                                     [UIImage imageNamed:@"b40.png"],
                                     [UIImage imageNamed:@"b41.png"],
                                     [UIImage imageNamed:@"b42.png"],
                                     [UIImage imageNamed:@"b43.png"],
                                     [UIImage imageNamed:@"b44.png"],
                                     [UIImage imageNamed:@"b45.png"],
                                     [UIImage imageNamed:@"b46.png"],
                                     [UIImage imageNamed:@"b47.png"],
                                     [UIImage imageNamed:@"b48.png"],
                                     [UIImage imageNamed:@"b49.png"],
                                     [UIImage imageNamed:@"b50.png"],
                                     [UIImage imageNamed:@"b51.png"],
                                     [UIImage imageNamed:@"b52.png"],
                                     nil];
    imageAnimate1.animationDuration = 1.3f;
    imageAnimate1.animationRepeatCount = 1;
    [imageAnimate1 startAnimating];
    [view2 addSubview:imageAnimate1];
    
    
    // Add the container view to the image view.
    [self.view addSubview:view2];
    
    
    
}




- (void) imageAnimate3Page1
{
    // Create a new view and specify its frame. Initially the view y-origin point is set at the bottom side of the view.
    view3 = [[UIView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height)];
    view3.frame = CGRectMake(20, 20, 100, 100);
    [view3 setBackgroundColor:[UIColor clearColor]];
    [view3 setTag:113];
    
    
    
    // REFF //
    
    imageAnimate1 = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageAnimate1.frame = CGRectMake(360, 120, 240, 150);
    imageAnimate1.animationImages = [NSArray arrayWithObjects:
                                     [UIImage imageNamed:@"b1.png"],
                                     [UIImage imageNamed:@"b2.png"],
                                     [UIImage imageNamed:@"b3.png"],
                                     [UIImage imageNamed:@"b4.png"],
                                     [UIImage imageNamed:@"b5.png"],
                                     [UIImage imageNamed:@"b6.png"],
                                     [UIImage imageNamed:@"b7.png"],
                                     [UIImage imageNamed:@"b8.png"],
                                     [UIImage imageNamed:@"b9.png"],
                                     [UIImage imageNamed:@"b10.png"],
                                     [UIImage imageNamed:@"b11.png"],
                                     [UIImage imageNamed:@"b12.png"],
                                     [UIImage imageNamed:@"b13.png"],
                                     [UIImage imageNamed:@"b14.png"],
                                     [UIImage imageNamed:@"b15.png"],
                                     [UIImage imageNamed:@"b16.png"],
                                     [UIImage imageNamed:@"b17.png"],
                                     [UIImage imageNamed:@"b18.png"],
                                     [UIImage imageNamed:@"b19.png"],
                                     [UIImage imageNamed:@"b20.png"],
                                     [UIImage imageNamed:@"b21.png"],
                                     [UIImage imageNamed:@"b22.png"],
                                     [UIImage imageNamed:@"b23.png"],
                                     [UIImage imageNamed:@"b24.png"],
                                     [UIImage imageNamed:@"b25.png"],
                                     [UIImage imageNamed:@"b26.png"],
                                     [UIImage imageNamed:@"b27.png"],
                                     [UIImage imageNamed:@"b28.png"],
                                     [UIImage imageNamed:@"b29.png"],
                                     [UIImage imageNamed:@"b30.png"],
                                     [UIImage imageNamed:@"b31.png"],
                                     [UIImage imageNamed:@"b32.png"],
                                     [UIImage imageNamed:@"b33.png"],
                                     [UIImage imageNamed:@"b34.png"],
                                     [UIImage imageNamed:@"b35.png"],
                                     [UIImage imageNamed:@"b36.png"],
                                     [UIImage imageNamed:@"b37.png"],
                                     [UIImage imageNamed:@"b38.png"],
                                     [UIImage imageNamed:@"b39.png"],
                                     [UIImage imageNamed:@"b40.png"],
                                     [UIImage imageNamed:@"b41.png"],
                                     [UIImage imageNamed:@"b42.png"],
                                     [UIImage imageNamed:@"b43.png"],
                                     [UIImage imageNamed:@"b44.png"],
                                     [UIImage imageNamed:@"b45.png"],
                                     [UIImage imageNamed:@"b46.png"],
                                     [UIImage imageNamed:@"b47.png"],
                                     [UIImage imageNamed:@"b48.png"],
                                     [UIImage imageNamed:@"b49.png"],
                                     [UIImage imageNamed:@"b50.png"],
                                     [UIImage imageNamed:@"b51.png"],
                                     [UIImage imageNamed:@"b52.png"],
                                     nil];
    imageAnimate1.animationDuration = 1.3f;
    imageAnimate1.animationRepeatCount = 1;
    [imageAnimate1 startAnimating];
    [view3 addSubview:imageAnimate1];
    
    
    // Add the container view to the image view.
    [self.view addSubview:view3];
    
    
    
}


-(void) barreFixe1
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 240;
    CGFloat IRH6 = 150;
 
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 180 - IRW6 / 2, rT6.origin.y + 560 - IRH6 / 2, IRW6, IRH6);
    
    barreFixed1 = [[UIImageView alloc] initWithFrame:IR6];
    barreFixed1.image=[UIImage imageNamed:@"b1.png"];
    [self.scrollView addSubview:barreFixed1];
}



-(void) barreFixe2
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 240;
    CGFloat IRH6 = 150;
    
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 860 - IRW6 / 2, rT6.origin.y + 560 - IRH6 / 2, IRW6, IRH6);
    
    barreFixed2 = [[UIImageView alloc] initWithFrame:IR6];
    barreFixed2.image=[UIImage imageNamed:@"b1.png"];
    [self.scrollView addSubview:barreFixed2];
}


-(void) barreFixe3
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 1, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 240;
    CGFloat IRH6 = 150;
    
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 500 - IRW6 / 2, rT6.origin.y + 215 - IRH6 / 2, IRW6, IRH6);
    
    barreFixed3 = [[UIImageView alloc] initWithFrame:IR6];
    barreFixed3.image=[UIImage imageNamed:@"b1.png"];
    [self.scrollView addSubview:barreFixed3];
}




-(void) timerCahier
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 10, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 200;
    CGFloat IRH6 = 150;
    
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 760 - IRW6 / 2, rT6.origin.y + 400 - IRH6 / 2, IRW6, IRH6);
    
    imgCahier1 = [[UIImageView alloc] initWithFrame:IR6];
    imgCahier1.image=[UIImage imageNamed:@"cahier1.png"];
    [self.scrollView addSubview:imgCahier1];
}



-(void) textePO
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 279.5;
    CGFloat IRH6 = 157;
    
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 275 - IRW6 / 2, rT6.origin.y + 557 - IRH6 / 2, IRW6, IRH6);
    
    textePage5 = [[UIImageView alloc] initWithFrame:IR6];
    textePage5.image=[UIImage imageNamed:@"textePage5.png"];
    [self.scrollView addSubview:textePage5];

}







// ANIMATION INTERACTION 1

- (IBAction)btnInterractiveFunction1:(id) sender
{
    
    
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    [imgAnimateI2 removeFromSuperview];
    [imgAnimateI3 removeFromSuperview];
    [imgAnimateI4 removeFromSuperview];
    [imgAnimateI5 removeFromSuperview];
    [imgAnimateI6 removeFromSuperview];
    [imgAnimateI7 removeFromSuperview];
    [imgAnimateI8 removeFromSuperview];
    [imgAnimateI9 removeFromSuperview];
    [animateInteraction10 invalidate];
    [animateInteraction11 invalidate];
    [animateInteraction12 invalidate];
    [animateInteraction13 invalidate];
    [animateInteraction14 invalidate];
    [animateInteraction15 invalidate];
    [animateInteraction16 invalidate];
    [animateInteraction17 invalidate];
    
    
    

        animateInteraction1 = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(interractionAnimation1) userInfo:nil repeats:NO];
    
        animateInteraction2 = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(interractionAnimation2) userInfo:nil repeats:NO];
        
        animateInteraction3 = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(interractionAnimation3) userInfo:nil repeats:NO];
        
        animateInteraction4 = [NSTimer scheduledTimerWithTimeInterval:0.7 target:self selector:@selector(interractionAnimation4) userInfo:nil repeats:NO];
        
        animateInteraction5 = [NSTimer scheduledTimerWithTimeInterval:0.9 target:self selector:@selector(interractionAnimation5) userInfo:nil repeats:NO];
        
        animateInteraction6 = [NSTimer scheduledTimerWithTimeInterval:1.1 target:self selector:@selector(interractionAnimation6) userInfo:nil repeats:NO];
        
        animateInteraction7 = [NSTimer scheduledTimerWithTimeInterval:1.3 target:self selector:@selector(interractionAnimation7) userInfo:nil repeats:NO];
        
        animateInteraction8 = [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(interractionAnimation8) userInfo:nil repeats:NO];
    
    
    
    
}




- (IBAction)btnInterractiveFunction2:(id) sender
{
   
    
    animateInteraction10 = [NSTimer scheduledTimerWithTimeInterval:15.0 target:self selector:@selector(interractionAnimation10) userInfo:nil repeats:NO];
    
    animateInteraction11 = [NSTimer scheduledTimerWithTimeInterval:15.3 target:self selector:@selector(interractionAnimation11) userInfo:nil repeats:NO];
    
    animateInteraction12 = [NSTimer scheduledTimerWithTimeInterval:15.6 target:self selector:@selector(interractionAnimation12) userInfo:nil repeats:NO];
    
    animateInteraction13 = [NSTimer scheduledTimerWithTimeInterval:15.9 target:self selector:@selector(interractionAnimation13) userInfo:nil repeats:NO];
    
    animateInteraction14 = [NSTimer scheduledTimerWithTimeInterval:15.2 target:self selector:@selector(interractionAnimation14) userInfo:nil repeats:NO];
    
    animateInteraction15 = [NSTimer scheduledTimerWithTimeInterval:15.5 target:self selector:@selector(interractionAnimation15) userInfo:nil repeats:NO];
    
    animateInteraction16 = [NSTimer scheduledTimerWithTimeInterval:15.8 target:self selector:@selector(interractionAnimation16) userInfo:nil repeats:NO];
    
    animateInteraction17 = [NSTimer scheduledTimerWithTimeInterval:16.1 target:self selector:@selector(interractionAnimation17) userInfo:nil repeats:NO];
    
    

    
}







-(void) interractionAnimation1
{
    CGRect rT6 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW6 = 187.0;
    CGFloat IRH6 = 181.0;
    
    
    CGRect IR6 = CGRectMake(rT6.origin.x + 840 - IRW6 / 2, rT6.origin.y + 450 - IRH6 / 2, IRW6, IRH6);
    
    imgAnimateI2 = [[UIImageView alloc] initWithFrame:IR6];
    imgAnimateI2.image=[UIImage imageNamed:@"rondd2.png"];
    [self.scrollView addSubview:imgAnimateI2];
}


-(void) interractionAnimation2
{
    CGRect rT7 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW7 = 117.0;
    CGFloat IRH7 = 113.5;
    
    
    CGRect IR7 = CGRectMake(rT7.origin.x + 730 - IRW7 / 2, rT7.origin.y + 470 - IRH7 / 2, IRW7, IRH7);
    
    imgAnimateI3 = [[UIImageView alloc] initWithFrame:IR7];
    imgAnimateI3.image=[UIImage imageNamed:@"rondd3.png"];
    [self.scrollView addSubview:imgAnimateI3];
}


-(void) interractionAnimation3
{
    CGRect rT8 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW8 = 222.0;
    CGFloat IRH8 = 87.0;
    
    
    CGRect IR8 = CGRectMake(rT8.origin.x + 590 - IRW8 / 2, rT8.origin.y + 500 - IRH8 / 2, IRW8, IRH8);
    
    imgAnimateI4 = [[UIImageView alloc] initWithFrame:IR8];
    imgAnimateI4.image=[UIImage imageNamed:@"rondd4.png"];
    [self.scrollView addSubview:imgAnimateI4];
}


-(void) interractionAnimation4
{
    CGRect rT9 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW9 = 275.5;
    CGFloat IRH9 = 55.5;
    
    
    CGRect IR9 = CGRectMake(rT9.origin.x + 580 - IRW9 / 2, rT9.origin.y + 550 - IRH9 / 2, IRW9, IRH9);
    
    imgAnimateI5 = [[UIImageView alloc] initWithFrame:IR9];
    imgAnimateI5.image=[UIImage imageNamed:@"rondd5.png"];
    [self.scrollView addSubview:imgAnimateI5];
}


-(void) interractionAnimation5
{
    CGRect rT10 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW10 = 269.5;
    CGFloat IRH10 = 67.0;
    
    
    CGRect IR10 = CGRectMake(rT10.origin.x + 620 - IRW10 / 2, rT10.origin.y + 590 - IRH10 / 2, IRW10, IRH10);
    
    imgAnimateI6 = [[UIImageView alloc] initWithFrame:IR10];
    imgAnimateI6.image=[UIImage imageNamed:@"rondd6.png"];
    [self.scrollView addSubview:imgAnimateI6];
}


-(void) interractionAnimation6
{
    CGRect rT11 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW11 = 186.5;
    CGFloat IRH11 = 110.0;
    
    
    CGRect IR11 = CGRectMake(rT11.origin.x + 640 - IRW11 / 2, rT11.origin.y + 620 - IRH11 / 2, IRW11, IRH11);
    
    imgAnimateI7 = [[UIImageView alloc] initWithFrame:IR11];
    imgAnimateI7.image=[UIImage imageNamed:@"rondd7.png"];
    [self.scrollView addSubview:imgAnimateI7];
}


-(void) interractionAnimation7
{
    CGRect rT12 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW12 = 176.5;
    CGFloat IRH12 = 78.5;
    
    
    CGRect IR12 = CGRectMake(rT12.origin.x + 820 - IRW12 / 2, rT12.origin.y + 600 - IRH12 / 2, IRW12, IRH12);
    
    imgAnimateI8 = [[UIImageView alloc] initWithFrame:IR12];
    imgAnimateI8.image=[UIImage imageNamed:@"rondd8.png"];
    [self.scrollView addSubview:imgAnimateI8];
}


-(void) interractionAnimation8
{
    CGRect rT13 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat IRW13 = 228.5;
    CGFloat IRH13 = 55.5;
    
    
    CGRect IR13 = CGRectMake(rT13.origin.x + 840 - IRW13 / 2, rT13.origin.y + 540 - IRH13 / 2, IRW13, IRH13);
    
    imgAnimateI9 = [[UIImageView alloc] initWithFrame:IR13];
    imgAnimateI9.image=[UIImage imageNamed:@"rondd9.png"];
    [self.scrollView addSubview:imgAnimateI9];
}


-(void) interractionAnimation9
{
    CGRect refTarget44 = CGRectMake ( self.scrollView.frame.size.width * 5, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth44 = 70.5;
    CGFloat imageRefHeight44 = 70.5;
    
    CGRect imgRef44 = CGRectMake(refTarget44.origin.x + 720 - ImageRefWidth44 / 2, refTarget44.origin.y + 550 - imageRefHeight44 / 2, ImageRefWidth44, imageRefHeight44);
    
    imgAnimateI1 = [[UIImageView alloc] initWithFrame:imgRef44];
    imgAnimateI1.image=[UIImage imageNamed:@"rondd1.png"];
    [self.scrollView addSubview:imgAnimateI1];
}






-(void) interractionAnimation10
{
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];

    [imgAnimateI9 removeFromSuperview];
    

    
}


-(void) interractionAnimation11
{
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI8 removeFromSuperview];

    

    
}


-(void) interractionAnimation12
{
    
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI7 removeFromSuperview];
}


-(void) interractionAnimation13
{
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI6 removeFromSuperview];
}


-(void) interractionAnimation14
{
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI5 removeFromSuperview];
}


-(void) interractionAnimation15
{
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI4 removeFromSuperview];
}


-(void) interractionAnimation16
{
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI3 removeFromSuperview];
}


-(void) interractionAnimation17
{
    [animateInteraction1 invalidate];
    [animateInteraction2 invalidate];
    [animateInteraction3 invalidate];
    [animateInteraction4 invalidate];
    [animateInteraction5 invalidate];
    [animateInteraction6 invalidate];
    [animateInteraction7 invalidate];
    [animateInteraction8 invalidate];
    [animateInteraction9 invalidate];
    
    [imgAnimateI2 removeFromSuperview];
}




-(void) point2t
{
    
    [point2 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 6, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 8.0;
    CGFloat imageRefHeight4 = 8.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 525 - ImageRefWidth4 / 2, refTarget4.origin.y + 565 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point2 = [[UIImageView alloc] initWithFrame:imgRef4];
    point2.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point2];
    
    
    // Move the image
    [self moveImage:point2 duration:2.0
              curve:UIViewAnimationCurveLinear x:160.0 y:-20.0];
}



-(void) point3t
{
    
    [point3 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 6, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 8.0;
    CGFloat imageRefHeight4 = 8.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 690 - ImageRefWidth4 / 2, refTarget4.origin.y + 570 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point3 = [[UIImageView alloc] initWithFrame:imgRef4];
    point3.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point3];
    
    
    // Move the image
    [self moveImage:point3 duration:1.0
              curve:UIViewAnimationCurveLinear x:-40.0 y:35.0];
}



-(void) point4t
{
    
    [point4 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 6, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 8.0;
    CGFloat imageRefHeight4 = 8.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 665 - ImageRefWidth4 / 2, refTarget4.origin.y + 630 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point4 = [[UIImageView alloc] initWithFrame:imgRef4];
    point4.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point4];
    
    
    // Move the image
    [self moveImage:point4 duration:1.0
              curve:UIViewAnimationCurveLinear x:130.0 y:-10.0];
}




-(void) point1t
{
    
    [point1 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 6, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 8.0;
    CGFloat imageRefHeight4 = 8.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 580 - ImageRefWidth4 / 2, refTarget4.origin.y + 620 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point1 = [[UIImageView alloc] initWithFrame:imgRef4];
    point1.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point1];
    
    
    // Move the image
    [self moveImage:point1 duration:0.5
              curve:UIViewAnimationCurveLinear x:-70.0 y:-40.0];
}







-(void) pointGlobe1
{
    
    [point10 removeFromSuperview];
    
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point10 = [[UIImageView alloc] initWithFrame:imgRef4];
    point10.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point10];
    
    
    // Move the image
    [self moveImage:point10 duration:1.0
              curve:UIViewAnimationCurveLinear x:-20.0 y:60.0];
}



-(void) pointGlobe2
{
    
    [point11 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point11 = [[UIImageView alloc] initWithFrame:imgRef4];
    point11.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point11];
    
    
    // Move the image
    [self moveImage:point11 duration:1.0
              curve:UIViewAnimationCurveLinear x:-120.0 y:70.0];
}



-(void) pointGlobe3
{
    
    [point12 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point12 = [[UIImageView alloc] initWithFrame:imgRef4];
    point12.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point12];
    
    
    // Move the image
    [self moveImage:point12 duration:1.0
              curve:UIViewAnimationCurveLinear x:-170.0 y:-30.0];
}



-(void) pointGlobe4
{
    
    [point13 removeFromSuperview];
    
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point13 = [[UIImageView alloc] initWithFrame:imgRef4];
    point13.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point13];
    
    
    // Move the image
    [self moveImage:point13 duration:1.0
              curve:UIViewAnimationCurveLinear x:-170.0 y:-5.0];
}



-(void) pointGlobe5
{
    
    [point14 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point14 = [[UIImageView alloc] initWithFrame:imgRef4];
    point14.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point14];
    
    
    // Move the image
    [self moveImage:point14 duration:1.0
              curve:UIViewAnimationCurveLinear x:40.0 y:-40.0];
}



-(void) pointGlobe6
{
    
    [point15 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point15 = [[UIImageView alloc] initWithFrame:imgRef4];
    point15.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point15];
    
    
    // Move the image
    [self moveImage:point15 duration:1.0
              curve:UIViewAnimationCurveLinear x:200.0 y:-10.0];
}



-(void) pointGlobe7
{
    
    [point16 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point16 = [[UIImageView alloc] initWithFrame:imgRef4];
    point16.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point16];
    
    
    // Move the image
    [self moveImage:point16 duration:1.0
              curve:UIViewAnimationCurveLinear x:200.0 y:110.0];
}



-(void) pointGlobe8
{
    
    [point17 removeFromSuperview];
    
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 2, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 5.0;
    CGFloat imageRefHeight4 = 5.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 660 - ImageRefWidth4 / 2, refTarget4.origin.y + 290 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    point17 = [[UIImageView alloc] initWithFrame:imgRef4];
    point17.image=[UIImage imageNamed:@"point.png"];
    [self.scrollView addSubview:point17];
    
    
    // Move the image
    [self moveImage:point17 duration:1.0
              curve:UIViewAnimationCurveLinear x:70.0 y:110.0];
}





static int countFrance1 = 0;
static int countFrance2 = 0;
static int countFrance3 = 0;
static int countFrance4 = 0;
static int countFrance5 = 0;
static int countFrance6 = 0;
static int countFrance7 = 0;
static int countFrance8 = 0;
static int countFrance9 = 0;
static int countFrance10 = 0;


-(IBAction) btnFunctionFrance1:(id) sender
{
    
    [france1 removeFromSuperview];
    
    
    countFrance1 ++;
    if(countFrance1 == 1)
    {
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 75.5;
    CGFloat imageRefHeight4 = 39.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 350 - ImageRefWidth4 / 2, refTarget4.origin.y + 460 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france1 = [[UIImageView alloc] initWithFrame:imgRef4];
    france1.image=[UIImage imageNamed:@"flecheGrise.png"];
    [self.scrollView addSubview:france1];
    
    }
    else if(countFrance1 == 2)
    {
        [france1 removeFromSuperview];
    }
    else if(countFrance1 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 75.5;
        CGFloat imageRefHeight4 = 39.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 350 - ImageRefWidth4 / 2, refTarget4.origin.y + 460 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france1 = [[UIImageView alloc] initWithFrame:imgRef4];
        france1.image=[UIImage imageNamed:@"flecheGrise.png"];
        [self.scrollView addSubview:france1];
        
        countFrance1 = 1;
    }
    
    
}



-(IBAction) btnFunctionFrance2:(id) sender
{
    
    [france2 removeFromSuperview];
    
    
    
    countFrance2 ++;
    if(countFrance2 == 1)
    {
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 135.0;
    CGFloat imageRefHeight4 = 24.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 390 - ImageRefWidth4 / 2, refTarget4.origin.y + 490 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france2 = [[UIImageView alloc] initWithFrame:imgRef4];
    france2.image=[UIImage imageNamed:@"flecheJaune.png"];
    [self.scrollView addSubview:france2];
    
    }
    else if(countFrance2 == 2)
    {
        [france2 removeFromSuperview];
    }
    else if(countFrance2 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 135.0;
        CGFloat imageRefHeight4 = 24.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 390 - ImageRefWidth4 / 2, refTarget4.origin.y + 490 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france2 = [[UIImageView alloc] initWithFrame:imgRef4];
        france2.image=[UIImage imageNamed:@"flecheJaune.png"];
        [self.scrollView addSubview:france2];
        
        countFrance2 = 1;
    }
    
}



-(IBAction) btnFunctionFrance3:(id) sender
{
    
    [france3 removeFromSuperview];
    
    
    countFrance3 ++;
    if(countFrance3 == 1)
    {
    
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 237.0;
    CGFloat imageRefHeight4 = 46.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 390 - ImageRefWidth4 / 2, refTarget4.origin.y + 530 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france3 = [[UIImageView alloc] initWithFrame:imgRef4];
    france3.image=[UIImage imageNamed:@"flecheRouge.png"];
    [self.scrollView addSubview:france3];
    
    }
    else if(countFrance3 == 2)
    {
        [france3 removeFromSuperview];
    }
    else if(countFrance3 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 237.0;
        CGFloat imageRefHeight4 = 46.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 390 - ImageRefWidth4 / 2, refTarget4.origin.y + 530 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france3 = [[UIImageView alloc] initWithFrame:imgRef4];
        france3.image=[UIImage imageNamed:@"flecheRouge.png"];
        [self.scrollView addSubview:france3];
       
        
        countFrance3 = 1;
    }
    
}



-(IBAction) btnFunctionFrance4:(id) sender
{
    
    [france4 removeFromSuperview];
    
    
    countFrance4 ++;
    if(countFrance4 == 1)
    {
        
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 173.0;
    CGFloat imageRefHeight4 = 68.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 410 - ImageRefWidth4 / 2, refTarget4.origin.y + 600 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france4 = [[UIImageView alloc] initWithFrame:imgRef4];
    france4.image=[UIImage imageNamed:@"flecheOrange.png"];
    [self.scrollView addSubview:france4];
    
    }
    else if(countFrance4 == 2)
    {
        [france4 removeFromSuperview];
    }
    else if(countFrance4 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 173.0;
        CGFloat imageRefHeight4 = 68.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 410 - ImageRefWidth4 / 2, refTarget4.origin.y + 600 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france4 = [[UIImageView alloc] initWithFrame:imgRef4];
        france4.image=[UIImage imageNamed:@"flecheOrange.png"];
        [self.scrollView addSubview:france4];
        
        
        countFrance4 = 1;
    }
}



-(IBAction) btnFunctionFrance5:(id) sender
{
    
    [france5 removeFromSuperview];
    
    
    countFrance5 ++;
    if(countFrance5 == 1)
    {
        
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 222.0;
    CGFloat imageRefHeight4 = 80.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 590 - ImageRefWidth4 / 2, refTarget4.origin.y + 470 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france5 = [[UIImageView alloc] initWithFrame:imgRef4];
    france5.image=[UIImage imageNamed:@"flecheBleu.png"];
    [self.scrollView addSubview:france5];
    
    }
    else if(countFrance5 == 2)
    {
        [france5 removeFromSuperview];
    }
    else if(countFrance5 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 222.0;
        CGFloat imageRefHeight4 = 80.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 590 - ImageRefWidth4 / 2, refTarget4.origin.y + 470 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france5 = [[UIImageView alloc] initWithFrame:imgRef4];
        france5.image=[UIImage imageNamed:@"flecheBleu.png"];
        [self.scrollView addSubview:france5];
        
        countFrance5 = 1;
    }
    
}



-(IBAction) btnFunctionFrance6:(id) sender
{
    
    [france6 removeFromSuperview];
    
    
    countFrance6 ++;
    if(countFrance6 == 1)
    {
        
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 136.5;
    CGFloat imageRefHeight4 = 56.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 620 - ImageRefWidth4 / 2, refTarget4.origin.y + 500 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france6 = [[UIImageView alloc] initWithFrame:imgRef4];
    france6.image=[UIImage imageNamed:@"flecheViolet.png"];
    [self.scrollView addSubview:france6];
    
    }
    else if(countFrance6 == 2)
    {
        [france6 removeFromSuperview];
    }
    else if(countFrance6 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 136.5;
        CGFloat imageRefHeight4 = 56.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 620 - ImageRefWidth4 / 2, refTarget4.origin.y + 500 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france6 = [[UIImageView alloc] initWithFrame:imgRef4];
        france6.image=[UIImage imageNamed:@"flecheViolet.png"];
        [self.scrollView addSubview:france6];
        
        countFrance6 = 1;
    }
    
}



-(IBAction) btnFunctionFrance7:(id) sender
{
    
    [france7 removeFromSuperview];
    
    
    countFrance7 ++;
    if(countFrance7 == 1)
    {
        
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 105.5;
    CGFloat imageRefHeight4 = 14.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 640 - ImageRefWidth4 / 2, refTarget4.origin.y + 515 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france7 = [[UIImageView alloc] initWithFrame:imgRef4];
    france7.image=[UIImage imageNamed:@"flecheVertFoncer.png"];
    [self.scrollView addSubview:france7];
    
    }
    else if(countFrance7 == 2)
    {
        [france7 removeFromSuperview];
    }
    else if(countFrance7 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 105.5;
        CGFloat imageRefHeight4 = 14.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 640 - ImageRefWidth4 / 2, refTarget4.origin.y + 515 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france7 = [[UIImageView alloc] initWithFrame:imgRef4];
        france7.image=[UIImage imageNamed:@"flecheVertFoncer.png"];
        [self.scrollView addSubview:france7];
        
        countFrance7 = 1;
    }
    
}



-(IBAction) btnFunctionFrance8:(id) sender
{
    
    [france8 removeFromSuperview];
    
    
    countFrance8 ++;
    if(countFrance8 == 1)
    {
        
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 134.0;
    CGFloat imageRefHeight4 = 14.5;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 630 - ImageRefWidth4 / 2, refTarget4.origin.y + 560 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france8 = [[UIImageView alloc] initWithFrame:imgRef4];
    france8.image=[UIImage imageNamed:@"flecheVertClaire.png"];
    [self.scrollView addSubview:france8];
    
    }
    else if(countFrance8 == 2)
    {
        [france8 removeFromSuperview];
    }
    else if(countFrance8 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 134.0;
        CGFloat imageRefHeight4 = 14.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 630 - ImageRefWidth4 / 2, refTarget4.origin.y + 560 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france8 = [[UIImageView alloc] initWithFrame:imgRef4];
        france8.image=[UIImage imageNamed:@"flecheVertClaire.png"];
        [self.scrollView addSubview:france8];
        
        countFrance8 =1;
    }
    
}



-(IBAction) btnFunctionFrance9:(id) sender
{
    
    [france9 removeFromSuperview];
    
    
    countFrance9 ++;
    if(countFrance9 == 1)
    {
        
    CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
    
    CGFloat ImageRefWidth4 = 134.5;
    CGFloat imageRefHeight4 = 50.0;
    
    CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 625 - ImageRefWidth4 / 2, refTarget4.origin.y + 585 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
    
    france9 = [[UIImageView alloc] initWithFrame:imgRef4];
    france9.image=[UIImage imageNamed:@"flecheBleuFoncer.png"];
    [self.scrollView addSubview:france9];
    
    }
    else if(countFrance9 == 2)
    {
        [france9 removeFromSuperview];
    }
    else if(countFrance9 == 3)
    {
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 134.5;
        CGFloat imageRefHeight4 = 50.0;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 625 - ImageRefWidth4 / 2, refTarget4.origin.y + 585 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france9 = [[UIImageView alloc] initWithFrame:imgRef4];
        france9.image=[UIImage imageNamed:@"flecheBleuFoncer.png"];
        [self.scrollView addSubview:france9];
        
        countFrance9 = 1;
    }
    
}
























-(IBAction) btnAllFrance:(id) sender
{
    
    
    [france1 removeFromSuperview];
    [france2 removeFromSuperview];
    [france3 removeFromSuperview];
    [france4 removeFromSuperview];
    [france5 removeFromSuperview];
    [france6 removeFromSuperview];
    [france7 removeFromSuperview];
    [france8 removeFromSuperview];
    [france9 removeFromSuperview];
    
    
    
    countFrance10 ++;
    if(countFrance10 == 1)
    {
        
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 75.5;
        CGFloat imageRefHeight4 = 39.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 350 - ImageRefWidth4 / 2, refTarget4.origin.y + 460 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france1 = [[UIImageView alloc] initWithFrame:imgRef4];
        france1.image=[UIImage imageNamed:@"flecheGrise.png"];
        [self.scrollView addSubview:france1];
        
        
        
        
        CGRect refTarget44 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth44 = 135.0;
        CGFloat imageRefHeight44 = 24.5;
        
        CGRect imgRef44 = CGRectMake(refTarget44.origin.x + 390 - ImageRefWidth44 / 2, refTarget44.origin.y + 490 - imageRefHeight44 / 2, ImageRefWidth44, imageRefHeight44);
        
        france2 = [[UIImageView alloc] initWithFrame:imgRef44];
        france2.image=[UIImage imageNamed:@"flecheJaune.png"];
        [self.scrollView addSubview:france2];
        
        
        
    
        
        
        
        CGRect refTarget11 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth11 = 237.0;
        CGFloat imageRefHeight11 = 46.5;
        
        CGRect imgRef11 = CGRectMake(refTarget11.origin.x + 390 - ImageRefWidth11 / 2, refTarget11.origin.y + 530 - imageRefHeight11 / 2, ImageRefWidth11, imageRefHeight11);
        
        france3 = [[UIImageView alloc] initWithFrame:imgRef11];
        france3.image=[UIImage imageNamed:@"flecheRouge.png"];
        [self.scrollView addSubview:france3];
        
        
        
        
        
        
        
        CGRect refTarget22 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth22 = 173.0;
        CGFloat imageRefHeight22 = 68.5;
        
        CGRect imgRef22 = CGRectMake(refTarget22.origin.x + 410 - ImageRefWidth22 / 2, refTarget22.origin.y + 600 - imageRefHeight22 / 2, ImageRefWidth22, imageRefHeight22);
        
        france4 = [[UIImageView alloc] initWithFrame:imgRef22];
        france4.image=[UIImage imageNamed:@"flecheOrange.png"];
        [self.scrollView addSubview:france4];
        
        
 
        
        
        
        CGRect refTarget33 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth33 = 222.0;
        CGFloat imageRefHeight33 = 80.5;
        
        CGRect imgRef33 = CGRectMake(refTarget33.origin.x + 590 - ImageRefWidth33 / 2, refTarget33.origin.y + 470 - imageRefHeight33 / 2, ImageRefWidth33, imageRefHeight33);
        
        france5 = [[UIImageView alloc] initWithFrame:imgRef33];
        france5.image=[UIImage imageNamed:@"flecheBleu.png"];
        [self.scrollView addSubview:france5];
        
        
        
        
        
        
        CGRect refTarget55 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth55 = 136.5;
        CGFloat imageRefHeight55 = 56.5;
        
        CGRect imgRef55 = CGRectMake(refTarget55.origin.x + 620 - ImageRefWidth55 / 2, refTarget55.origin.y + 500 - imageRefHeight55 / 2, ImageRefWidth55, imageRefHeight55);
        
        france6 = [[UIImageView alloc] initWithFrame:imgRef55];
        france6.image=[UIImage imageNamed:@"flecheViolet.png"];
        [self.scrollView addSubview:france6];
        
        
        
        
        
        
        
        
        
        
        CGRect refTarget111 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth111 = 105.5;
        CGFloat imageRefHeight111 = 14.5;
        
        CGRect imgRef111 = CGRectMake(refTarget111.origin.x + 640 - ImageRefWidth111 / 2, refTarget111.origin.y + 515 - imageRefHeight111 / 2, ImageRefWidth111, imageRefHeight111);
        
        france7 = [[UIImageView alloc] initWithFrame:imgRef111];
        france7.image=[UIImage imageNamed:@"flecheVertFoncer.png"];
        [self.scrollView addSubview:france7];
        
        
        
        
        
        
        CGRect refTarget222 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth222 = 134.0;
        CGFloat imageRefHeight222 = 14.5;
        
        CGRect imgRef222 = CGRectMake(refTarget222.origin.x + 630 - ImageRefWidth222 / 2, refTarget222.origin.y + 560 - imageRefHeight222 / 2, ImageRefWidth222, imageRefHeight222);
        
        france8 = [[UIImageView alloc] initWithFrame:imgRef222];
        france8.image=[UIImage imageNamed:@"flecheVertClaire.png"];
        [self.scrollView addSubview:france8];
        
        
        
        
        
        
        
        
        CGRect refTarget333 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth333 = 134.5;
        CGFloat imageRefHeight333 = 50.0;
        
        CGRect imgRef333 = CGRectMake(refTarget333.origin.x + 625 - ImageRefWidth333 / 2, refTarget333.origin.y + 585 - imageRefHeight333 / 2, ImageRefWidth333, imageRefHeight333);
        
        france9 = [[UIImageView alloc] initWithFrame:imgRef333];
        france9.image=[UIImage imageNamed:@"flecheBleuFoncer.png"];
        [self.scrollView addSubview:france9];
        
        
        
        
        
        
        
    }
    else if(countFrance10 == 2)
    {
        [france1 removeFromSuperview];
        [france2 removeFromSuperview];
        [france3 removeFromSuperview];
        [france4 removeFromSuperview];
        [france5 removeFromSuperview];
        [france6 removeFromSuperview];
        [france7 removeFromSuperview];
        [france8 removeFromSuperview];
        [france9 removeFromSuperview];
    }
    else if(countFrance10 == 3)
    {
        
        CGRect refTarget4 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth4 = 75.5;
        CGFloat imageRefHeight4 = 39.5;
        
        CGRect imgRef4 = CGRectMake(refTarget4.origin.x + 350 - ImageRefWidth4 / 2, refTarget4.origin.y + 460 - imageRefHeight4 / 2, ImageRefWidth4, imageRefHeight4);
        
        france1 = [[UIImageView alloc] initWithFrame:imgRef4];
        france1.image=[UIImage imageNamed:@"flecheGrise.png"];
        [self.scrollView addSubview:france1];
        
        
        
        
        CGRect refTarget44 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth44 = 135.0;
        CGFloat imageRefHeight44 = 24.5;
        
        CGRect imgRef44 = CGRectMake(refTarget44.origin.x + 390 - ImageRefWidth44 / 2, refTarget44.origin.y + 490 - imageRefHeight44 / 2, ImageRefWidth44, imageRefHeight44);
        
        france2 = [[UIImageView alloc] initWithFrame:imgRef44];
        france2.image=[UIImage imageNamed:@"flecheJaune.png"];
        [self.scrollView addSubview:france2];
        
        
        
        
        
        
        
        CGRect refTarget11 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth11 = 237.0;
        CGFloat imageRefHeight11 = 46.5;
        
        CGRect imgRef11 = CGRectMake(refTarget11.origin.x + 390 - ImageRefWidth11 / 2, refTarget11.origin.y + 530 - imageRefHeight11 / 2, ImageRefWidth11, imageRefHeight11);
        
        france3 = [[UIImageView alloc] initWithFrame:imgRef11];
        france3.image=[UIImage imageNamed:@"flecheRouge.png"];
        [self.scrollView addSubview:france3];
        
        
        
        
        
        
        
        CGRect refTarget22 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth22 = 173.0;
        CGFloat imageRefHeight22 = 68.5;
        
        CGRect imgRef22 = CGRectMake(refTarget22.origin.x + 410 - ImageRefWidth22 / 2, refTarget22.origin.y + 600 - imageRefHeight22 / 2, ImageRefWidth22, imageRefHeight22);
        
        france4 = [[UIImageView alloc] initWithFrame:imgRef22];
        france4.image=[UIImage imageNamed:@"flecheOrange.png"];
        [self.scrollView addSubview:france4];
        
        
        
        
        
        
        CGRect refTarget33 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth33 = 222.0;
        CGFloat imageRefHeight33 = 80.5;
        
        CGRect imgRef33 = CGRectMake(refTarget33.origin.x + 590 - ImageRefWidth33 / 2, refTarget33.origin.y + 470 - imageRefHeight33 / 2, ImageRefWidth33, imageRefHeight33);
        
        france5 = [[UIImageView alloc] initWithFrame:imgRef33];
        france5.image=[UIImage imageNamed:@"flecheBleu.png"];
        [self.scrollView addSubview:france5];
        
        
        
        
        
        
        CGRect refTarget55 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth55 = 136.5;
        CGFloat imageRefHeight55 = 56.5;
        
        CGRect imgRef55 = CGRectMake(refTarget55.origin.x + 620 - ImageRefWidth55 / 2, refTarget55.origin.y + 500 - imageRefHeight55 / 2, ImageRefWidth55, imageRefHeight55);
        
        france6 = [[UIImageView alloc] initWithFrame:imgRef55];
        france6.image=[UIImage imageNamed:@"flecheViolet.png"];
        [self.scrollView addSubview:france6];
        
        
        
        
        
        
        
        
        
        
        CGRect refTarget111 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth111 = 105.5;
        CGFloat imageRefHeight111 = 14.5;
        
        CGRect imgRef111 = CGRectMake(refTarget111.origin.x + 640 - ImageRefWidth111 / 2, refTarget111.origin.y + 515 - imageRefHeight111 / 2, ImageRefWidth111, imageRefHeight111);
        
        france7 = [[UIImageView alloc] initWithFrame:imgRef111];
        france7.image=[UIImage imageNamed:@"flecheVertFoncer.png"];
        [self.scrollView addSubview:france7];
        
        
        
        
        
        
        CGRect refTarget222 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth222 = 134.0;
        CGFloat imageRefHeight222 = 14.5;
        
        CGRect imgRef222 = CGRectMake(refTarget222.origin.x + 630 - ImageRefWidth222 / 2, refTarget222.origin.y + 560 - imageRefHeight222 / 2, ImageRefWidth222, imageRefHeight222);
        
        france8 = [[UIImageView alloc] initWithFrame:imgRef222];
        france8.image=[UIImage imageNamed:@"flecheVertClaire.png"];
        [self.scrollView addSubview:france8];
        
        
        
        
        
        
        
        
        CGRect refTarget333 = CGRectMake ( self.scrollView.frame.size.width * 12, 0.0, self.scrollView.frame.size.width , self.scrollView.frame.size.height ) ;
        
        CGFloat ImageRefWidth333 = 134.5;
        CGFloat imageRefHeight333 = 50.0;
        
        CGRect imgRef333 = CGRectMake(refTarget333.origin.x + 625 - ImageRefWidth333 / 2, refTarget333.origin.y + 585 - imageRefHeight333 / 2, ImageRefWidth333, imageRefHeight333);
        
        france9 = [[UIImageView alloc] initWithFrame:imgRef333];
        france9.image=[UIImage imageNamed:@"flecheBleuFoncer.png"];
        [self.scrollView addSubview:france9];
        
        
        
        
        countFrance10 = 1;
    }
    
}






@end

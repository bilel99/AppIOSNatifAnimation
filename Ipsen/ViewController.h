//
//  ViewController.h
//  Ipsen
//
//  Created by Freelance on 24/07/2014.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) NSArray *imageArray;


/* LES METHODES */
-(void) scrollToImageIndex:(int)index;


/* LES BOUTONS */
@property (strong, nonatomic) IBOutlet UIButton *varBtnIpsen;
@property (strong, nonatomic) IBOutlet UIButton *varBtnOnco;
@property (strong, nonatomic) IBOutlet UIButton *varBtn3I;

/* LES IMAGES */

/* La références */
@property (strong, nonatomic) IBOutlet UIImageView *imgReff1;


/* BOUTON SOUS MENU */
@property (strong, nonatomic) IBOutlet UIButton *varS11;
@property (strong, nonatomic) IBOutlet UIButton *varS12;
@property (strong, nonatomic) IBOutlet UIButton *varS13;
@property (strong, nonatomic) IBOutlet UIButton *varS14;

@property (strong, nonatomic) IBOutlet UIButton *varS21;
@property (strong, nonatomic) IBOutlet UIButton *varS22;
@property (strong, nonatomic) IBOutlet UIButton *varS23;

@property (strong, nonatomic) IBOutlet UIButton *varS31;
@property (strong, nonatomic) IBOutlet UIButton *varS32;
@property (strong, nonatomic) IBOutlet UIButton *varS33;
@property (strong, nonatomic) IBOutlet UIButton *varS34;

/* UIVIEW */
@property (strong, nonatomic) IBOutlet UIView *containerView;

/*BUTTON ADD REF*/
@property (strong, nonatomic) IBOutlet UIButton *addRef;

/* PAGE CONROLE */
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;


/* LES ANIMATIONS
    PAGE 0      */
@property (strong, nonatomic) IBOutlet UIImageView *texteFixe11;

@property (strong, nonatomic) IBOutlet UIImageView *texteFixe12;

@property (strong, nonatomic) IBOutlet UIImageView *texteFixe13;

@property (strong, nonatomic) IBOutlet UIImageView *texteFixe14;

@property (strong, nonatomic) IBOutlet UIImageView *texteFixe15;

@property (strong, nonatomic) IBOutlet UIImageView *texteFixe16;

@property (strong, nonatomic) IBOutlet NSTimer *timer1;


/* LES ANIMATIONS
 PAGE 1      */
@property (strong, nonatomic) IBOutlet UIImageView *btn1;
@property (strong, nonatomic) IBOutlet UIImageView *btn2;
@property (strong, nonatomic) IBOutlet UIImageView *btn3;

@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate1;
@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate2;
@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate3;
@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate4;

@property (strong, nonatomic) IBOutlet NSTimer *timerImage1;
@property (strong, nonatomic) IBOutlet NSTimer *timerImage2;
@property (strong, nonatomic) IBOutlet NSTimer *timerImage3;

@property (strong, nonatomic) IBOutlet UIView *view1;
@property (strong, nonatomic) IBOutlet UIView *view2;
@property (strong, nonatomic) IBOutlet UIView *view3;
@property (strong, nonatomic) IBOutlet UIView *view4;

@property (strong, nonatomic) IBOutlet UIButton *btnMenu1;
@property (strong, nonatomic) IBOutlet UIButton *btnMenu2;
@property (strong, nonatomic) IBOutlet UIButton *btnMenu3;


/* LES ANIMATIONS
 PAGE 2      */
@property (strong, nonatomic) IBOutlet UIImageView *img1;
@property (strong, nonatomic) IBOutlet UIImageView *img2;
@property (strong, nonatomic) IBOutlet UIImageView *img3;
@property (strong, nonatomic) IBOutlet UIImageView *img4;

@property (strong, nonatomic) IBOutlet NSTimer *timer2;
@property (strong, nonatomic) IBOutlet NSTimer *timer3;
@property (strong, nonatomic) IBOutlet NSTimer *timer4;

@property (strong, nonatomic) IBOutlet NSTimer *timerImg1;
@property (strong, nonatomic) IBOutlet NSTimer *timerImg2;
@property (strong, nonatomic) IBOutlet NSTimer *timerImg3;

@property (strong, nonatomic) IBOutlet UIImageView *barreFixed1;
@property (strong, nonatomic) IBOutlet UIImageView *barreFixed2;
@property (strong, nonatomic) IBOutlet UIImageView *barreFixed3;

/// ANIMATION GLOBE
@property (strong, nonatomic) IBOutlet UIImageView *point10;
@property (strong, nonatomic) IBOutlet UIImageView *point11;
@property (strong, nonatomic) IBOutlet UIImageView *point12;
@property (strong, nonatomic) IBOutlet UIImageView *point13;
@property (strong, nonatomic) IBOutlet UIImageView *point14;
@property (strong, nonatomic) IBOutlet UIImageView *point15;
@property (strong, nonatomic) IBOutlet UIImageView *point16;
@property (strong, nonatomic) IBOutlet UIImageView *point17;

@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe1;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe2;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe3;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe4;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe5;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe6;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe7;
@property(strong, nonatomic) IBOutlet NSTimer *timerGlobe8;





/* LES ANIMATIONS
 PAGE 3      */
@property (strong, nonatomic) IBOutlet UIImageView *img5;
@property (strong, nonatomic) IBOutlet UIImageView *img6;
@property (strong, nonatomic) IBOutlet UIImageView *img8;
@property (strong, nonatomic) IBOutlet UIImageView *img9;
@property (strong, nonatomic) IBOutlet UIImageView *img10;
@property (strong, nonatomic) IBOutlet UIImageView *img11;


@property (strong, nonatomic) IBOutlet NSTimer *timer5;
@property (strong, nonatomic) IBOutlet NSTimer *timer7;
@property (strong, nonatomic) IBOutlet NSTimer *timer8;
@property (strong, nonatomic) IBOutlet NSTimer *timer9;
@property (strong, nonatomic) IBOutlet NSTimer *timer10;
@property (strong, nonatomic) IBOutlet NSTimer *timer11;
@property (strong, nonatomic) IBOutlet NSTimer *timer11A2;



/* LES ANIMATIONS
 PAGE 4      */
@property (strong, nonatomic) IBOutlet NSTimer *timer12;
@property (strong, nonatomic) IBOutlet NSTimer *timer13;
@property (strong, nonatomic) IBOutlet NSTimer *timer14;
@property (strong, nonatomic) IBOutlet NSTimer *timer15;
@property (strong, nonatomic) IBOutlet NSTimer *timer16;

@property (strong, nonatomic) IBOutlet UIImageView *img13;
@property (strong, nonatomic) IBOutlet UIImageView *img14;
@property (strong, nonatomic) IBOutlet UIImageView *img15;
@property (strong, nonatomic) IBOutlet UIImageView *img16;
@property (strong, nonatomic) IBOutlet UIImageView *img17;
@property (strong, nonatomic) IBOutlet UIImageView *img9992;

/* LES ANIMATION PAGE 5 */
@property (strong, nonatomic) IBOutlet UIImageView *acteurPO;
@property (strong, nonatomic) IBOutlet NSTimer *timerActeurPO;
@property (strong, nonatomic) IBOutlet UIImageView *textePage5;


/////////// Animation
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction1;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction2;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction3;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction4;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction5;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction6;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction7;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction8;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction9;

@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI1;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI2;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI3;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI4;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI5;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI6;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI7;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI8;
@property (strong, nonatomic) IBOutlet UIImageView *imgAnimateI9;

@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction10;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction11;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction12;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction13;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction14;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction15;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction16;
@property (strong, nonatomic) IBOutlet NSTimer *animateInteraction17;

@property (strong, nonatomic) IBOutlet UIButton *btnInterractive1;


/* LES ANIMATION PAGE 6 */
@property (strong, nonatomic) IBOutlet UIImageView *point1;
@property (strong, nonatomic) IBOutlet UIImageView *point2;
@property (strong, nonatomic) IBOutlet UIImageView *point3;
@property (strong, nonatomic) IBOutlet UIImageView *point4;

@property (strong, nonatomic) IBOutlet NSTimer *timerPoint1;
@property (strong, nonatomic) IBOutlet NSTimer *timerPoint2;
@property (strong, nonatomic) IBOutlet NSTimer *timerPoint3;
@property (strong, nonatomic) IBOutlet NSTimer *timerPoint4;


/* LES ANIMATION PAGE 7 */
@property (strong, nonatomic) IBOutlet NSTimer *t1;
@property (strong, nonatomic) IBOutlet NSTimer *t2;
@property (strong, nonatomic) IBOutlet NSTimer *t3;
@property (strong, nonatomic) IBOutlet NSTimer *t4;
@property (strong, nonatomic) IBOutlet NSTimer *t5;
@property (strong, nonatomic) IBOutlet NSTimer *t6;

@property (strong, nonatomic) IBOutlet UIImageView *icoo1;
@property (strong, nonatomic) IBOutlet UIImageView *icoo2;
@property (strong, nonatomic) IBOutlet UIImageView *icoo3;
@property (strong, nonatomic) IBOutlet UIImageView *icoo4;
@property (strong, nonatomic) IBOutlet UIImageView *icoo5;
@property (strong, nonatomic) IBOutlet UIImageView *icoo6;



@property (strong, nonatomic) IBOutlet UIImageView *img1003;
@property (strong, nonatomic) IBOutlet UIImageView *img1004;
@property (strong, nonatomic) IBOutlet UIImageView *img1005;
@property (strong, nonatomic) IBOutlet UIButton *btnPage121;
@property (strong, nonatomic) IBOutlet UIButton *btnPage122;
@property (strong, nonatomic) IBOutlet UIButton *btnPage123;


/* LES ANIMATION PAGE 8 */
@property (strong, nonatomic) IBOutlet UIImageView *texte1Page11;
@property (strong, nonatomic) IBOutlet UIImageView *texte2Page11;
@property (strong, nonatomic) IBOutlet UIImageView *texte3Page11;
@property (strong, nonatomic) IBOutlet UIImageView *texte4Page11;
@property (strong, nonatomic) IBOutlet UIImageView *texte5Page11;

@property(strong, nonatomic) IBOutlet NSTimer *timerTexte1;
@property(strong, nonatomic) IBOutlet NSTimer *timerTexte2;
@property(strong, nonatomic) IBOutlet NSTimer *timerTexte3;
@property(strong, nonatomic) IBOutlet NSTimer *timerTexte4;

/* ANIMATION PAGE 9 */
@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate7;
@property (strong, nonatomic) IBOutlet UIView *view7;

/* ANIMATION PAGE 10 */
@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate6;
@property (strong, nonatomic) IBOutlet UIView *view6;

@property (strong, nonatomic) IBOutlet NSTimer *timerCahier1;
@property (strong, nonatomic) IBOutlet UIImageView *imgCahier1;

/* ANIMATION PAGE 11 */
@property (strong, nonatomic) IBOutlet UIImageView *imageAnimate5;
@property (strong, nonatomic) IBOutlet UIView *view5;

/* ANIMATION FRANCE PAGE 12 */
@property (strong, nonatomic) IBOutlet UIImageView *france1;
@property (strong, nonatomic) IBOutlet UIImageView *france2;
@property (strong, nonatomic) IBOutlet UIImageView *france3;
@property (strong, nonatomic) IBOutlet UIImageView *france4;
@property (strong, nonatomic) IBOutlet UIImageView *france5;
@property (strong, nonatomic) IBOutlet UIImageView *france6;
@property (strong, nonatomic) IBOutlet UIImageView *france7;
@property (strong, nonatomic) IBOutlet UIImageView *france8;
@property (strong, nonatomic) IBOutlet UIImageView *france9;

@property (strong, nonatomic) IBOutlet UIButton *btnFrance1;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance2;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance3;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance4;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance5;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance6;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance7;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance8;
@property (strong, nonatomic) IBOutlet UIButton *btnFrance9;

@property (strong, nonatomic) IBOutlet UIButton *btnAll;
@property (strong, nonatomic) IBOutlet UIImageView *cliquezICI;


@end

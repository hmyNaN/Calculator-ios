//
//  ViewController.m
//  Calculator-ios
//
//  Created by fz500net on 2019/11/15.
//  Copyright © 2019 fz500net. All rights reserved.
//

#import "CalculatorView.h"

@interface CalculatorView ()

@end

@implementation CalculatorView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置背景
    self.view.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    
    //屏幕参数初始化
    [self windowParameterInit];
    
    //初始化布局
    [self initView];
    
    //横竖屏监听
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeRotate:) name:UIApplicationDidChangeStatusBarFrameNotification object:nil];
    
}


//控件初始化
-(void) initView{
    
    //基础颜色
    UIColor *buttoncolorDimgray=[UIColor colorWithRed:105/255.0 green:105/255.0 blue:105/255.0 alpha:1];
    UIColor *buttoncolorOrange=[UIColor colorWithRed:255/255.0 green:165/255.0 blue:0/255.0 alpha:1];
    UIColor *buttoncolorSilver=[UIColor colorWithRed:177/255.0 green:177/255.0 blue:177/255.0 alpha:1];
    UIColor *textcolorwhite =[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    UIColor *backgroundcolorblack =[UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    
    CGRect initCGRect= CGRectMake(0,0,0,0);
    
    //文本显示
    numInfolLabel = [[UILabel alloc]initWithFrame:initCGRect];
    numInfolLabel.numberOfLines = 0;
    numInfolLabel.textColor = textcolorwhite;
    numInfolLabel.backgroundColor = backgroundcolorblack;
    numInfolLabel.textAlignment = NSTextAlignmentRight;
    numInfolLabel.text = @"416.6667";
    [self.view addSubview:numInfolLabel];
    
    //数字键盘
    keyboardView=[[UIView alloc] initWithFrame:initCGRect];
    keyboardView.backgroundColor=backgroundcolorblack;
    [self.view addSubview:keyboardView];
    
    //button
    
    //UIButton *btn1_1, *btn1_2, *btn1_3, *btn1_4, *btn1_5, *btn1_6;
    btn1_1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1_1 setTitle:@"(" forState:UIControlStateNormal];
    [btn1_1 setBackgroundColor:buttoncolorDimgray];
    [btn1_1 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1_1];
    
    btn1_2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1_2 setTitle:@")" forState:UIControlStateNormal];
    [btn1_2 setBackgroundColor:buttoncolorDimgray];
    [btn1_2 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1_2];
    
    btn1_3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1_3 setTitle:@"mc" forState:UIControlStateNormal];
    [btn1_3 setBackgroundColor:buttoncolorDimgray];
    [btn1_3 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1_3];
    
    btn1_4= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1_4 setTitle:@"m+" forState:UIControlStateNormal];
    [btn1_4 setBackgroundColor:buttoncolorDimgray];
    [btn1_4 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1_4];
    
    btn1_5= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1_5 setTitle:@"m-" forState:UIControlStateNormal];
    [btn1_5 setBackgroundColor:buttoncolorDimgray];
    [btn1_5 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1_5];
    
    btn1_6= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1_6 setTitle:@"mr" forState:UIControlStateNormal];
    [btn1_6 setBackgroundColor:buttoncolorDimgray];
    [btn1_6 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1_6];
    
    //UIButton *btnEmpty, *btnLose, *btnPercent, *btnDivide;
    btnEmpty= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnEmpty setTitle:@"AC" forState:UIControlStateNormal];
    [btnEmpty setBackgroundColor:buttoncolorSilver];
    [btnEmpty setTitleColor:backgroundcolorblack forState:UIControlStateNormal];
    [keyboardView addSubview:btnEmpty];
    
    btnLose= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnLose setTitle:@"+/-" forState:UIControlStateNormal];
    [btnLose setBackgroundColor:buttoncolorSilver];
    [btnLose setTitleColor:backgroundcolorblack forState:UIControlStateNormal];
    [keyboardView addSubview:btnLose];
    
    btnPercent= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnPercent setTitle:@"%" forState:UIControlStateNormal];
    [btnPercent setBackgroundColor:buttoncolorSilver];
    [btnPercent setTitleColor:backgroundcolorblack forState:UIControlStateNormal];
    [keyboardView addSubview:btnPercent];
    
    btnDivide= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDivide setTitle:@"/" forState:UIControlStateNormal];
    [btnDivide setBackgroundColor:buttoncolorOrange];
    [btnDivide setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btnDivide];
    
    
    
    
    //*btn2_1, *btn2_2, *btn2_3, *btn2_4, *btn2_5, *btn2_6;
    btn2_1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2_1 setTitle:@"2ᴺᵈ" forState:UIControlStateNormal];
    [btn2_1 setBackgroundColor:buttoncolorDimgray];
    [btn2_1 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2_1];
    
    btn2_2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2_2 setTitle:@"x²" forState:UIControlStateNormal];
    [btn2_2 setBackgroundColor:buttoncolorDimgray];
    [btn2_2 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2_2];
    
    btn2_3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2_3 setTitle:@"x³" forState:UIControlStateNormal];
    [btn2_3 setBackgroundColor:buttoncolorDimgray];
    [btn2_3 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2_3];
    
    btn2_4= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2_4 setTitle:@"xʸ" forState:UIControlStateNormal];
    [btn2_4 setBackgroundColor:buttoncolorDimgray];
    [btn2_4 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2_4];
    
    btn2_5= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2_5 setTitle:@"eˣ" forState:UIControlStateNormal];
    [btn2_5 setBackgroundColor:buttoncolorDimgray];
    [btn2_5 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2_5];
    
    btn2_6= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2_6 setTitle:@"10ˣ" forState:UIControlStateNormal];
    [btn2_6 setBackgroundColor:buttoncolorDimgray];
    [btn2_6 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2_6];
    
    //UIButton *btn7, *btn8, *btn9, *btnRide;
    btn7= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn7 setTitle:@"7" forState:UIControlStateNormal];
    [btn7 setBackgroundColor:buttoncolorDimgray];
    [btn7 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn7];
    
    btn8= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn8 setTitle:@"8" forState:UIControlStateNormal];
    [btn8 setBackgroundColor:buttoncolorDimgray];
    [btn8 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn8];
    
    btn9= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn9 setTitle:@"9" forState:UIControlStateNormal];
    [btn9 setBackgroundColor:buttoncolorDimgray];
    [btn9 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn9];
    
    btnRide= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnRide setTitle:@"×" forState:UIControlStateNormal];
    [btnRide setBackgroundColor:buttoncolorOrange];
    [btnRide setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btnRide];
    
    //*btn3_1, *btn3_2, *btn3_3, *btn3_4, *btn3_5, *btn3_6;
    btn3_1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3_1 setTitle:@"¹╱x" forState:UIControlStateNormal];
    [btn3_1 setBackgroundColor:buttoncolorDimgray];
    [btn3_1 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3_1];
    
    btn3_2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3_2 setTitle:@"²√x" forState:UIControlStateNormal];
    [btn3_2 setBackgroundColor:buttoncolorDimgray];
    [btn3_2 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3_2];
    
    btn3_3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3_3 setTitle:@"³√x" forState:UIControlStateNormal];
    [btn3_3 setBackgroundColor:buttoncolorDimgray];
    [btn3_3 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3_3];
    
    btn3_4= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3_4 setTitle:@"ʸ√ｘ" forState:UIControlStateNormal];
    [btn3_4 setBackgroundColor:buttoncolorDimgray];
    [btn3_4 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3_4];
    
    btn3_5= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3_5 setTitle:@"ln" forState:UIControlStateNormal];
    [btn3_5 setBackgroundColor:buttoncolorDimgray];
    [btn3_5 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3_5];
    
    btn3_6= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3_6 setTitle:@"log₁₀" forState:UIControlStateNormal];
    [btn3_6 setBackgroundColor:buttoncolorDimgray];
    [btn3_6 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3_6];
    
    //UIButton *btn4, *btn5, *btn6, *btnReduce;
    btn4= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4 setTitle:@"4" forState:UIControlStateNormal];
    [btn4 setBackgroundColor:buttoncolorDimgray];
    [btn4 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4];
    
    btn5= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5 setTitle:@"5" forState:UIControlStateNormal];
    [btn5 setBackgroundColor:buttoncolorDimgray];
    [btn5 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5];
    
    btn6= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn6 setTitle:@"6" forState:UIControlStateNormal];
    [btn6 setBackgroundColor:buttoncolorDimgray];
    [btn6 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn6];
    
    btnReduce= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnReduce setTitle:@"-" forState:UIControlStateNormal];
    [btnReduce setBackgroundColor:buttoncolorOrange];
    [btnReduce setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btnReduce];
    
    
    //*btn4_1, *btn4_2, *btn4_3, *btn4_4, *btn4_5, *btn4_6;
    btn4_1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4_1 setTitle:@"x!" forState:UIControlStateNormal];
    [btn4_1 setBackgroundColor:buttoncolorDimgray];
    [btn4_1 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4_1];
    
    btn4_2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4_2 setTitle:@"sin" forState:UIControlStateNormal];
    [btn4_2 setBackgroundColor:buttoncolorDimgray];
    [btn4_2 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4_2];
    
    btn4_3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4_3 setTitle:@"cos" forState:UIControlStateNormal];
    [btn4_3 setBackgroundColor:buttoncolorDimgray];
    [btn4_3 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4_3];
    
    btn4_4= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4_4 setTitle:@"tan" forState:UIControlStateNormal];
    [btn4_4 setBackgroundColor:buttoncolorDimgray];
    [btn4_4 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4_4];
    
    btn4_5= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4_5 setTitle:@"e" forState:UIControlStateNormal];
    [btn4_5 setBackgroundColor:buttoncolorDimgray];
    [btn4_5 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4_5];
    
    btn4_6= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn4_6 setTitle:@"EE" forState:UIControlStateNormal];
    [btn4_6 setBackgroundColor:buttoncolorDimgray];
    [btn4_6 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn4_6];
    
    //UIButton *btn1, *btn2, *btn3, *btnAdd;
    btn1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"1" forState:UIControlStateNormal];
    [btn1 setBackgroundColor:buttoncolorDimgray];
    [btn1 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn1];
    
    btn2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"2" forState:UIControlStateNormal];
    [btn2 setBackgroundColor:buttoncolorDimgray];
    [btn2 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn2];
    
    btn3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3 setTitle:@"3" forState:UIControlStateNormal];
    [btn3 setBackgroundColor:buttoncolorDimgray];
    [btn3 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn3];
    
    btnAdd= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnAdd setTitle:@"+" forState:UIControlStateNormal];
    [btnAdd setBackgroundColor:buttoncolorOrange];
    [btnAdd setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btnAdd];
    
    
    
    //*btn5_1, *btn5_2, *btn5_3, *btn5_4, *btn5_5, *btn5_6;
    btn5_1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5_1 setTitle:@"Rad" forState:UIControlStateNormal];
    [btn5_1 setBackgroundColor:buttoncolorDimgray];
    [btn5_1 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5_1];
    
    btn5_2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5_2 setTitle:@"sinh" forState:UIControlStateNormal];
    [btn5_2 setBackgroundColor:buttoncolorDimgray];
    [btn5_2 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5_2];
    
    btn5_3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5_3 setTitle:@"cosh" forState:UIControlStateNormal];
    [btn5_3 setBackgroundColor:buttoncolorDimgray];
    [btn5_3 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5_3];
    
    btn5_4= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5_4 setTitle:@"tanh" forState:UIControlStateNormal];
    [btn5_4 setBackgroundColor:buttoncolorDimgray];
    [btn5_4 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5_4];
    
    btn5_5= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5_5 setTitle:@"∏" forState:UIControlStateNormal];
    [btn5_5 setBackgroundColor:buttoncolorDimgray];
    [btn5_5 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5_5];
    
    btn5_6= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn5_6 setTitle:@"Rand" forState:UIControlStateNormal];
    [btn5_6 setBackgroundColor:buttoncolorDimgray];
    [btn5_6 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn5_6];
    
    // UIButton *btn0, *btnDot, *btnWait;
    btn0= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn0 setTitle:@"0" forState:UIControlStateNormal];
    [btn0 setBackgroundColor:buttoncolorDimgray];
    [btn0 setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btn0];
    
    btnDot= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnDot setTitle:@"." forState:UIControlStateNormal];
    [btnDot setBackgroundColor:buttoncolorDimgray];
    [btnDot setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btnDot];
    
    btnWait= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btnWait setTitle:@"=" forState:UIControlStateNormal];
    [btnWait setBackgroundColor:buttoncolorDimgray];
    [btnWait setTitleColor:textcolorwhite forState:UIControlStateNormal];
    [keyboardView addSubview:btnWait];
    
    
    
    
    
    
    btn1_1.titleLabel.font = scienceBtnFont;
    btn1_2.titleLabel.font = scienceBtnFont;
    btn1_3.titleLabel.font = scienceBtnFont;
    btn1_4.titleLabel.font = scienceBtnFont;
    btn1_5.titleLabel.font = scienceBtnFont;
    btn1_6.titleLabel.font = scienceBtnFont;
    btn2_1.titleLabel.font = scienceBtnFont;
    btn2_2.titleLabel.font = scienceBtnFont;
    btn2_3.titleLabel.font = scienceBtnFont;
    btn2_4.titleLabel.font = scienceBtnFont;
    btn2_5.titleLabel.font = scienceBtnFont;
    btn2_6.titleLabel.font = scienceBtnFont;
    btn3_1.titleLabel.font = scienceBtnFont;
    btn3_2.titleLabel.font = scienceBtnFont;
    btn3_3.titleLabel.font = scienceBtnFont;
    btn3_4.titleLabel.font = scienceBtnFont;
    btn3_5.titleLabel.font = scienceBtnFont;
    btn3_6.titleLabel.font = scienceBtnFont;
    btn4_1.titleLabel.font = scienceBtnFont;
    btn4_2.titleLabel.font = scienceBtnFont;
    btn4_3.titleLabel.font = scienceBtnFont;
    btn4_4.titleLabel.font = scienceBtnFont;
    btn4_5.titleLabel.font = scienceBtnFont;
    btn4_6.titleLabel.font = scienceBtnFont;
    btn5_1.titleLabel.font = scienceBtnFont;
    btn5_2.titleLabel.font = scienceBtnFont;
    btn5_3.titleLabel.font = scienceBtnFont;
    btn5_4.titleLabel.font = scienceBtnFont;
    btn5_5.titleLabel.font = scienceBtnFont;
    btn5_6.titleLabel.font = scienceBtnFont;
    
    btnEmpty.titleLabel.font = numberBtnFont;
    btnLose.titleLabel.font = numberBtnFont;
    btnPercent.titleLabel.font = numberBtnFont;
    btnDivide.titleLabel.font = numberBtnFont;
    btn7.titleLabel.font = numberBtnFont;
    btn8.titleLabel.font = numberBtnFont;
    btn9.titleLabel.font = numberBtnFont;
    btnRide.titleLabel.font = numberBtnFont;
    btn4.titleLabel.font = numberBtnFont;
    btn5.titleLabel.font = numberBtnFont;
    btn6.titleLabel.font = numberBtnFont;
    btnReduce.titleLabel.font = numberBtnFont;
    btn1.titleLabel.font = numberBtnFont;
    btn2.titleLabel.font = numberBtnFont;
    btn3.titleLabel.font = numberBtnFont;
    btnAdd.titleLabel.font = numberBtnFont;
    btn0.titleLabel.font = numberBtnFont;
    btnDot.titleLabel.font = numberBtnFont;
    btnWait.titleLabel.font = numberBtnFont;
    
    
    
    
    
    
    
    //第一次监听器无效手动判断横竖屏
    if( [self isWinLevel]){
        [self levelState];
    }else{
        [self verticalState];
    }
    
}

//水平（横屏）状态
-(void) levelState{
    //更新高度宽度
    [self updateWindowSize];
    
    //横屏button有效长度=横屏总长度-横屏左右边距-9*竖屏间距
    //横屏button有效高度=横屏总高度-横屏上下边距-数字信息高度-4*竖屏间距
    //单个横屏button长度=横屏button有效长度/10
    //单个横屏button高度=横屏button有效高度/5
    
     numInfolLabel.font=levelNumInfolLabelFont;
    
    CGFloat btnWidth=(winWidth-levelLeft-levelRight-9*levelGap)/10;
    CGFloat btnHeight=(winHeight-levelTop-levelBottom-levelNumInfolLabelHeight-4*levelGap)/5;
    
    
    
    
    //数字信息
    [numInfolLabel setFrame:CGRectMake(levelLeft, levelTop, winWidth-levelLeft-levelRight, levelNumInfolLabelHeight)];
    //键盘
    [keyboardView setFrame:CGRectMake(levelLeft, levelTop+levelNumInfolLabelHeight, winWidth-levelLeft-levelRight, winHeight-levelTop-levelNumInfolLabelHeight-levelBottom)];
    
    //button
    //UIButton *btn1_1, *btn1_2, *btn1_3, *btn1_4, *btn1_5, *btn1_6;
    [btn1_1 setFrame:CGRectMake(0, 0, btnWidth, btnHeight)];
    [btn1_2 setFrame:CGRectMake(btnWidth+levelGap, 0, btnWidth, btnHeight)];
    [btn1_3 setFrame:CGRectMake(2*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btn1_4 setFrame:CGRectMake(3*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btn1_5 setFrame:CGRectMake(4*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btn1_6 setFrame:CGRectMake(5*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    //UIButton *btnEmpty, *btnLose, *btnPercent, *btnDivide;
    [btnEmpty setFrame:CGRectMake(6*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btnLose setFrame:CGRectMake(7*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btnPercent setFrame:CGRectMake(8*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btnDivide setFrame:CGRectMake(9*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    //*btn2_1, *btn2_2, *btn2_3, *btn2_4, *btn2_5, *btn2_6;
    [btn2_1 setFrame:CGRectMake(0, btnHeight+levelGap, btnWidth, btnHeight)];
    [btn2_2 setFrame:CGRectMake(btnWidth+levelGap, btnHeight+levelGap, btnWidth, btnHeight)];
    [btn2_3 setFrame:CGRectMake(2*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn2_4 setFrame:CGRectMake(3*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn2_5 setFrame:CGRectMake(4*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn2_6 setFrame:CGRectMake(5*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    //UIButton *btn7, *btn8, *btn9, *btnRide;
    [btn7 setFrame:CGRectMake(6*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn8 setFrame:CGRectMake(7*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn9 setFrame:CGRectMake(8*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btnRide setFrame:CGRectMake(9*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    
    //**btn3_1, *btn3_2, *btn3_3, *btn3_4, *btn3_5, *btn3_6;
    [btn3_1 setFrame:CGRectMake(0, 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3_2 setFrame:CGRectMake(btnWidth+levelGap, 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3_3 setFrame:CGRectMake(2*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3_4 setFrame:CGRectMake(3*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3_5 setFrame:CGRectMake(4*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3_6 setFrame:CGRectMake(5*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    //btn4, *btn5, *btn6, *btnReduce;
    [btn4 setFrame:CGRectMake(6*(btnWidth+levelGap),2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5 setFrame:CGRectMake(7*(btnWidth+levelGap),2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn6 setFrame:CGRectMake(8*(btnWidth+levelGap),2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btnReduce setFrame:CGRectMake(9*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    
    
    //*btn4_1, *btn4_2, *btn4_3, *btn4_4, *btn4_5, *btn4_6;
    [btn4_1 setFrame:CGRectMake(0, 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn4_2 setFrame:CGRectMake(btnWidth+levelGap, 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn4_3 setFrame:CGRectMake(2*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn4_4 setFrame:CGRectMake(3*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn4_5 setFrame:CGRectMake(4*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn4_6 setFrame:CGRectMake(5*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    //*btn1, *btn2, *btn3, *btnAdd;
    [btn1 setFrame:CGRectMake(6*(btnWidth+levelGap),3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn2 setFrame:CGRectMake(7*(btnWidth+levelGap),3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3 setFrame:CGRectMake(8*(btnWidth+levelGap),3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btnAdd setFrame:CGRectMake(9*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    
    //*btn5_1, *btn5_2, *btn5_3, *btn5_4, *btn5_5, *btn5_6;
    [btn5_1 setFrame:CGRectMake(0, 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5_2 setFrame:CGRectMake(btnWidth+levelGap, 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5_3 setFrame:CGRectMake(2*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5_4 setFrame:CGRectMake(3*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5_5 setFrame:CGRectMake(4*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5_6 setFrame:CGRectMake(5*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    //*btn0, *btnDot, *btnWait;
    [btn0 setFrame:CGRectMake(6*(btnWidth+levelGap),4*(btnHeight+levelGap), 2*btnWidth+levelGap, btnHeight)];
    [btnDot setFrame:CGRectMake(8*(btnWidth+levelGap),4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btnWait setFrame:CGRectMake(9*(btnWidth+levelGap),4*(btnHeight+levelGap), btnWidth, btnHeight)];
    
    
    
    
    btn0.layer.cornerRadius = btn0.frame.size.width/6;
    CGFloat levelRadius=btn1.frame.size.width/3;
    btn1.layer.cornerRadius = levelRadius;
    btn2.layer.cornerRadius = levelRadius;
    btn3.layer.cornerRadius = levelRadius;
    btn4.layer.cornerRadius = levelRadius;
    btn5.layer.cornerRadius = levelRadius;
    btn6.layer.cornerRadius = levelRadius;
    btn7.layer.cornerRadius = levelRadius;
    btn8.layer.cornerRadius = levelRadius;
    btn9.layer.cornerRadius = levelRadius;
    btnEmpty.layer.cornerRadius = levelRadius;
    btnLose.layer.cornerRadius = levelRadius;
    btnPercent.layer.cornerRadius = levelRadius;
    btnDivide.layer.cornerRadius = levelRadius;
    btnRide.layer.cornerRadius = levelRadius;
    btnReduce.layer.cornerRadius = levelRadius;
    btnDot.layer.cornerRadius = levelRadius;
    btnWait.layer.cornerRadius = levelRadius;
    btnAdd.layer.cornerRadius = levelRadius;
    
    btn1_1.layer.cornerRadius = levelRadius;
    btn1_2.layer.cornerRadius = levelRadius;
    btn1_3.layer.cornerRadius = levelRadius;
    btn1_4.layer.cornerRadius = levelRadius;
    btn1_5.layer.cornerRadius = levelRadius;
    btn1_6.layer.cornerRadius = levelRadius;
    btn2_1.layer.cornerRadius = levelRadius;
    btn2_2.layer.cornerRadius = levelRadius;
    btn2_3.layer.cornerRadius = levelRadius;
    btn2_4.layer.cornerRadius = levelRadius;
    btn2_5.layer.cornerRadius = levelRadius;
    btn2_6.layer.cornerRadius = levelRadius;
    btn3_1.layer.cornerRadius = levelRadius;
    btn3_2.layer.cornerRadius = levelRadius;
    btn3_3.layer.cornerRadius = levelRadius;
    btn3_4.layer.cornerRadius = levelRadius;
    btn3_5.layer.cornerRadius = levelRadius;
    btn3_6.layer.cornerRadius = levelRadius;
    btn4_1.layer.cornerRadius = levelRadius;
    btn4_2.layer.cornerRadius = levelRadius;
    btn4_3.layer.cornerRadius = levelRadius;
    btn4_4.layer.cornerRadius = levelRadius;
    btn4_5.layer.cornerRadius = levelRadius;
    btn4_6.layer.cornerRadius = levelRadius;
    btn5_1.layer.cornerRadius = levelRadius;
    btn5_2.layer.cornerRadius = levelRadius;
    btn5_3.layer.cornerRadius = levelRadius;
    btn5_4.layer.cornerRadius = levelRadius;
    btn5_5.layer.cornerRadius = levelRadius;
    btn5_6.layer.cornerRadius = levelRadius;
    
    
    
    
}



//竖屏状态
-(void) verticalState{
    //更新高度宽度
    [self updateWindowSize];
    
    
    //单个竖屏button长度=(竖屏总长度-竖屏左右边距-3*竖屏间距)/4
    //单个竖屏button高度=(竖屏总高度-竖屏上下边距-数字信息高度-4*竖屏间距)/5
    
    CGFloat btnWidth=(winWidth-verticalLeft-verticalRight-3*verticalGap)/4;
    CGFloat btnHeight=btnWidth;
    
    numInfolLabel.font=verticalNumInfolLabelFont;
    
    //数字信息
    [numInfolLabel setFrame:CGRectMake(verticalLeft, verticalTop, winWidth-verticalLeft-verticalRight,verticalNumInfolLabelHeight)];
    //键盘
    [keyboardView setFrame:CGRectMake(verticalLeft, verticalTop+verticalNumInfolLabelHeight, winWidth-verticalLeft-verticalRight, winHeight-verticalTop-verticalNumInfolLabelHeight-verticalBottom)];
    
    
    //button
    CGRect initCGRect= CGRectMake(0,0,0,0);
    //UIButton *btn1_1, *btn1_2, *btn1_3, *btn1_4, *btn1_5, *btn1_6;
    [btn1_1 setFrame:initCGRect];
    [btn1_2 setFrame:initCGRect];
    [btn1_3 setFrame:initCGRect];
    [btn1_4 setFrame:initCGRect];
    [btn1_5 setFrame:initCGRect];
    [btn1_6 setFrame:initCGRect];
    //UIButton *btnEmpty, *btnLose, *btnPercent, *btnDivide;
    [btnEmpty setFrame:CGRectMake(0, 0, btnWidth, btnHeight)];
    [btnLose setFrame:CGRectMake(1*(btnWidth+verticalGap), 0, btnWidth, btnHeight)];
    [btnPercent setFrame:CGRectMake(2*(btnWidth+verticalGap), 0, btnWidth, btnHeight)];
    [btnDivide setFrame:CGRectMake(3*(btnWidth+verticalGap), 0, btnWidth, btnHeight)];
    //*btn2_1, *btn2_2, *btn2_3, *btn2_4, *btn2_5, *btn2_6;
    [btn2_1 setFrame:initCGRect];
    [btn2_2 setFrame:initCGRect];
    [btn2_3 setFrame:initCGRect];
    [btn2_4 setFrame:initCGRect];
    [btn2_5 setFrame:initCGRect];
    [btn2_6 setFrame:initCGRect];
    //UIButton *btn7, *btn8, *btn9, *btnRide;
    [btn7 setFrame:CGRectMake(0, btnHeight+verticalGap, btnWidth, btnHeight)];
    [btn8 setFrame:CGRectMake(1*(btnWidth+verticalGap), btnHeight+verticalGap, btnWidth, btnHeight)];
    [btn9 setFrame:CGRectMake(2*(btnWidth+verticalGap), btnHeight+verticalGap, btnWidth, btnHeight)];
    [btnRide setFrame:CGRectMake(3*(btnWidth+verticalGap), btnHeight+verticalGap, btnWidth, btnHeight)];
    //**btn3_1, *btn3_2, *btn3_3, *btn3_4, *btn3_5, *btn3_6;
    [btn3_1 setFrame:initCGRect];
    [btn3_2 setFrame:initCGRect];
    [btn3_3 setFrame:initCGRect];
    [btn3_4 setFrame:initCGRect];
    [btn3_5 setFrame:initCGRect];
    [btn3_6 setFrame:initCGRect];
    //btn4, *btn5, *btn6, *btnReduce;
    [btn4 setFrame:CGRectMake(0,2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn5 setFrame:CGRectMake(1*(btnWidth+verticalGap),2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn6 setFrame:CGRectMake(2*(btnWidth+verticalGap),2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btnReduce setFrame:CGRectMake(3*(btnWidth+verticalGap), 2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    
    
    //*btn4_1, *btn4_2, *btn4_3, *btn4_4, *btn4_5, *btn4_6;
    [btn4_1 setFrame:initCGRect];
    [btn4_2 setFrame:initCGRect];
    [btn4_3 setFrame:initCGRect];
    [btn4_4 setFrame:initCGRect];
    [btn4_5 setFrame:initCGRect];
    [btn4_6 setFrame:initCGRect];
    //*btn1, *btn2, *btn3, *btnAdd;
    [btn1 setFrame:CGRectMake(0,3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn2 setFrame:CGRectMake(1*(btnWidth+verticalGap),3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn3 setFrame:CGRectMake(2*(btnWidth+verticalGap),3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btnAdd setFrame:CGRectMake(3*(btnWidth+verticalGap), 3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    
    //*btn5_1, *btn5_2, *btn5_3, *btn5_4, *btn5_5, *btn5_6;
    [btn5_1 setFrame:initCGRect];
    [btn5_2 setFrame:initCGRect];
    [btn5_3 setFrame:initCGRect];
    [btn5_4 setFrame:initCGRect];
    [btn5_5 setFrame:initCGRect];
    [btn5_6 setFrame:initCGRect];
    //*btn0, *btnDot, *btnWait;
    [btn0 setFrame:CGRectMake(0,4*(btnHeight+verticalGap), 2*btnWidth+verticalGap, btnHeight)];
    [btnDot setFrame:CGRectMake(2*(btnWidth+verticalGap),4*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btnWait setFrame:CGRectMake(3*(btnWidth+verticalGap),4*(btnHeight+verticalGap), btnWidth, btnHeight)];
    
    
    btn0.layer.cornerRadius = btn0.frame.size.width/4;
    CGFloat verticalRadius=btn1.frame.size.width/2;
    btn1.layer.cornerRadius = verticalRadius;
    btn2.layer.cornerRadius = verticalRadius;
    btn3.layer.cornerRadius = verticalRadius;
    btn4.layer.cornerRadius = verticalRadius;
    btn5.layer.cornerRadius = verticalRadius;
    btn6.layer.cornerRadius = verticalRadius;
    btn7.layer.cornerRadius = verticalRadius;
    btn8.layer.cornerRadius = verticalRadius;
    btn9.layer.cornerRadius = verticalRadius;
    btnEmpty.layer.cornerRadius = verticalRadius;
    btnLose.layer.cornerRadius = verticalRadius;
    btnPercent.layer.cornerRadius = verticalRadius;
    btnDivide.layer.cornerRadius = verticalRadius;
    btnRide.layer.cornerRadius = verticalRadius;
    btnReduce.layer.cornerRadius = verticalRadius;
    btnDot.layer.cornerRadius = verticalRadius;
    btnWait.layer.cornerRadius = verticalRadius;
    btnAdd.layer.cornerRadius = verticalRadius;
    
    
    
    
}




-(void) windowParameterInit{
    //更新高度宽度
    [self updateWindowSize];
    
    //真实屏幕宽度
    CGFloat practicalWinHeight;
    if(winWidth<winHeight){
        practicalWinHeight=winHeight;
    }else{
        practicalWinHeight=winWidth;
    }
    //iphone 2G,3G,3Gs,4,4s
    CGFloat IOSHeight1=480;
    //iphone SE,5,5S,5C
    CGFloat IOSHeight2=568;
    //iphone 6,6S,7,8,
    CGFloat IOSHeight3=667;
    //iphone 6+,6S+,7+,8+
    CGFloat IOSHeight4=736;
    //iphone X,XS
    CGFloat IOSHeight5=812;
    //iphone XR,XS MAX，11,11+
    CGFloat IOSHeight6=896;
    
    if (practicalWinHeight==IOSHeight1) {
        [self SetLeveUI:30 lBottom:10 lLeft:10 lRight:10 lGap:10 lNumInfolLabelHeight:100];
        [self SetVerticalUI:10 vBottom:10 vLeft:10 vRight:10 vGap:10 vNumInfolLabelHeight:100];
        [self SetViewFont:30 vNumInfolLabelFont:40 sBtnFont:20 nBtnFont:30];
    }else if (practicalWinHeight==IOSHeight2){
        //ok
        [self SetLeveUI:20 lBottom:10 lLeft:10 lRight:10 lGap:10 lNumInfolLabelHeight:80];
        [self SetVerticalUI:80 vBottom:10 vLeft:10 vRight:10 vGap:10 vNumInfolLabelHeight:100];
        [self SetViewFont:48 vNumInfolLabelFont:60 sBtnFont:16 nBtnFont:22];
    }else if (practicalWinHeight==IOSHeight3){
        //ok
        [self SetLeveUI:40 lBottom:10 lLeft:10 lRight:10 lGap:10 lNumInfolLabelHeight:90];
        [self SetVerticalUI:110 vBottom:10 vLeft:10 vRight:10 vGap:10 vNumInfolLabelHeight:100];
        [self SetViewFont:48 vNumInfolLabelFont:60 sBtnFont:16 nBtnFont:22];
    }else if (practicalWinHeight==IOSHeight4){
        //ok
        [self SetLeveUI:40 lBottom:10 lLeft:10 lRight:10 lGap:11 lNumInfolLabelHeight:90];
        [self SetVerticalUI:120 vBottom:20 vLeft:20 vRight:20 vGap:20 vNumInfolLabelHeight:110];
        [self SetViewFont:48 vNumInfolLabelFont:60 sBtnFont:16 nBtnFont:27];
    }else if (practicalWinHeight==IOSHeight5){
        //OK
        [self SetLeveUI:30 lBottom:10 lLeft:40 lRight:40 lGap:10 lNumInfolLabelHeight:90];
        [self SetVerticalUI:240 vBottom:20 vLeft:21 vRight:21 vGap:17 vNumInfolLabelHeight:110];
        [self SetViewFont:48 vNumInfolLabelFont:60 sBtnFont:16 nBtnFont:27];
    }else if (practicalWinHeight==IOSHeight6){
        //OK
        [self SetLeveUI:10 lBottom:20 lLeft:40 lRight:40 lGap:10 lNumInfolLabelHeight:90];
        [self SetVerticalUI:280 vBottom:10 vLeft:21 vRight:21 vGap:17 vNumInfolLabelHeight:110];
        [self SetViewFont:48 vNumInfolLabelFont:60 sBtnFont:16 nBtnFont:27];
    }else{
        //没有适配版本
        NSLog(@"没有适配版本");
    }
    
    
}


//CGFloat levelTop,levelBottom,levelLeft,levelRight,levelGap,levelNumInfolLabelHeight;
-(void) SetLeveUI:(CGFloat) lTop  lBottom:(CGFloat) lBottom lLeft: (CGFloat) lLeft
           lRight: (CGFloat) lRight lGap: (CGFloat) lGap  lNumInfolLabelHeight: (CGFloat) lNumInfolLabelHeight{
    levelTop=lTop;
    levelBottom=lBottom;
    levelLeft=lLeft;
    levelRight=lRight;
    levelGap= lGap;
    levelNumInfolLabelHeight=lNumInfolLabelHeight;
}

//CGFloat verticalTop,verticalBottom,verticalLeft,verticalRight,verticalGap,verticalNumInfolLabelHeight;
-(void) SetVerticalUI:(CGFloat) vTop  vBottom:(CGFloat) vBottom vLeft: (CGFloat) vLeft
               vRight: (CGFloat) vRight vGap: (CGFloat) vGap  vNumInfolLabelHeight: (CGFloat) vNumInfolLabelHeight{
    verticalTop=vTop;
    verticalBottom=vBottom;
    verticalLeft=vLeft;
    verticalRight=vRight;
    verticalGap= vGap;
    verticalNumInfolLabelHeight=vNumInfolLabelHeight;
}



//字体大小
//UIFont *levelNumInfolLabelFont,*verticalNumInfolLabelFont,*scienceBtnFont,*numberBtnFont;
-(void) SetViewFont:(CGFloat) lNumInfolLabelFont
 vNumInfolLabelFont:(CGFloat) vNumInfolLabelFont
           sBtnFont:(CGFloat) sBtnFont nBtnFont:(CGFloat) nBtnFont{
    
    levelNumInfolLabelFont=[UIFont systemFontOfSize:lNumInfolLabelFont];
    verticalNumInfolLabelFont =[UIFont systemFontOfSize:vNumInfolLabelFont];
    scienceBtnFont =[UIFont systemFontOfSize:sBtnFont];
    numberBtnFont=[UIFont systemFontOfSize:nBtnFont];
}




//更新屏幕大小
-(void) updateWindowSize{
    //获取屏幕宽高
    winWidth = [[UIScreen mainScreen]bounds].size.width;
    winHeight= [[UIScreen mainScreen]bounds].size.height;
    NSLog(@"宽度 ：%f 高度：%f",winWidth,winHeight);
}



- (void)changeRotate:(NSNotification*)noti {
    
    if( [self isWinLevel]){
        [self levelState];
    }else{
        [self verticalState];
    }
    
}


//判断横竖屏
-(BOOL) isWinLevel{
    [self updateWindowSize];
    if (winWidth>winHeight) {
        NSLog(@"横屏");
        return YES;
    }else{
        NSLog(@"竖屏");
        return NO;
    }
}









@end

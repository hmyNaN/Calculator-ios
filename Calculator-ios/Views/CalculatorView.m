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
    numInfolLabel.text = @"0";
    [self.view addSubview:numInfolLabel];
    
    //数字键盘
    keyboardView=[[UIView alloc] initWithFrame:initCGRect];
    keyboardView.backgroundColor=backgroundcolorblack;
    [self.view addSubview:keyboardView];
    
    
    leftbBracketBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    rightBracketBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    MCBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    MAddBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    MMinusBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    MRBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    towNdowerBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xSquareBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCubeBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xYPowerBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    eXPowerBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    tenXPowerBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    onePartOfXBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    rootNumberXBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    cubeRootXBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    yThRootOfXBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    lnBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    log10Btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    xOppositeBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    sinBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    cosBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    tanBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    eBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    eEBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    radBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    sinhBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    coshBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    tanhBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    piBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    randBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
//    leftbBracketBtn rightBracketBtn MCBtn MAddBtn MMinusBtn MRBtn
    [self buttonInit:leftbBracketBtn Title:@"(" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:rightBracketBtn Title:@")" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:MCBtn Title:@"mc" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:MAddBtn Title:@"m+" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:MMinusBtn Title:@"m-" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:MRBtn Title:@"mr" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
//    towNdowerBtn xSquareBtn xCubeBtn xYPowerBtn eXPowerBtn tenXPowerBtn
    [self buttonInit:towNdowerBtn Title:@"2ᴺᵈ" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:xSquareBtn Title:@"x²" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:xCubeBtn Title:@"x³" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:xYPowerBtn Title:@"xʸ" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:eXPowerBtn Title:@"eˣ" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:tenXPowerBtn Title:@"10ˣ" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
//    onePartOfXBtn rootNumberXBtn cubeRootXBtn yThRootOfXBtn lnBtn log10Btn
    [self buttonInit:onePartOfXBtn Title:@"¹╱x" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:rootNumberXBtn  Title:@"²√x" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:cubeRootXBtn Title:@"³√x" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:yThRootOfXBtn Title:@"ʸ√ｘ" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:lnBtn Title:@"ln" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:log10Btn Title:@"log₁₀" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
//    xOppositeBtn sinBtn cosBtn tanBtn eBtn eEBtn
    [self buttonInit:xOppositeBtn Title:@"x!" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:sinBtn Title:@"sin" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:cosBtn Title:@"cos" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:tanBtn Title:@"tan" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:eBtn Title:@"e" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:eEBtn Title:@"EE" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
//    radBtn sinhBtn coshBtn tanhBtn piBtn randBtn
    [self buttonInit:radBtn Title:@"Rad" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:sinhBtn Title:@"sinh" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:coshBtn Title:@"cosh" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:tanhBtn Title:@"tanh" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:piBtn Title:@"∏" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:randBtn Title:@"Rand" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    
    
    
    
    
    btnEmpty= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLose= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnPercent= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self buttonInit:btnEmpty Title:@"AC" backgroundColor:buttoncolorSilver titleColor:backgroundcolorblack];
    [self buttonInit:btnLose Title:@"+/-" backgroundColor:buttoncolorSilver titleColor:backgroundcolorblack];
    [self buttonInit:btnPercent Title:@"%" backgroundColor:buttoncolorSilver titleColor:backgroundcolorblack];
    
    btnDivide= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnRide= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnReduce=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnAdd=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self buttonInit:btnDivide Title:@"/" backgroundColor:buttoncolorOrange titleColor:textcolorwhite];
    [self buttonInit:btnRide Title:@"×" backgroundColor:buttoncolorOrange titleColor:textcolorwhite];
    [self buttonInit:btnReduce Title:@"-" backgroundColor:buttoncolorOrange titleColor:textcolorwhite];
    [self buttonInit:btnAdd Title:@"+" backgroundColor:buttoncolorOrange titleColor:textcolorwhite];
    
    btn0=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn3=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn4=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn5=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn6=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn7=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn8=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn9=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnDot=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnWait=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self buttonInit:btn0 Title:@"0" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn1 Title:@"1" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn2 Title:@"2" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn3 Title:@"3" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn4 Title:@"4" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn5 Title:@"5" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn6 Title:@"6" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn7 Title:@"7" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn8 Title:@"8" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btn9 Title:@"9" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btnDot Title:@"." backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    [self buttonInit:btnWait Title:@"=" backgroundColor:buttoncolorDimgray titleColor:textcolorwhite];
    
    
    
    
    
    
    
    
//    leftbBracketBtn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    rightBracketBtn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    MCBtn           =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    MAddBtn         =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    MMinusBtn       =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    MRBtn           =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//
//    towNdowerBtn    =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    xSquareBtn      =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    xCubeBtn        =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    xYPowerBtn      =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    eXPowerBtn      =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    tenXPowerBtn    =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//
//    onePartOfXBtn   =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    rootNumberXBtn  =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    cubeRootXBtn    =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    yThRootOfXBtn   =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    lnBtn           =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    log10Btn        =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//
//    xOppositeBtn    =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    sinBtn          =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    cosBtn          =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    tanBtn          =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    eBtn            =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    eEBtn           =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//
//    radBtn          =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    sinhBtn         =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    coshBtn         =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    tanhBtn         =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    piBtn           =[UIButton buttonWithType:UIButtonTypeRoundedRect];
//    randBtn         =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    
    
    
    //设置字体

    
    
    leftbBracketBtn.titleLabel.font=scienceBtnFont;
    rightBracketBtn.titleLabel.font=scienceBtnFont;
    MCBtn.titleLabel.font=scienceBtnFont;
    MAddBtn.titleLabel.font=scienceBtnFont;
    MMinusBtn.titleLabel.font=scienceBtnFont;
    MRBtn.titleLabel.font=scienceBtnFont;
    
    towNdowerBtn.titleLabel.font=scienceBtnFont;
    xSquareBtn.titleLabel.font=scienceBtnFont;
    xCubeBtn.titleLabel.font=scienceBtnFont;
    xYPowerBtn.titleLabel.font=scienceBtnFont;
    eXPowerBtn.titleLabel.font=scienceBtnFont;
    tenXPowerBtn.titleLabel.font=scienceBtnFont;
    
    onePartOfXBtn.titleLabel.font=scienceBtnFont;
    rootNumberXBtn.titleLabel.font=scienceBtnFont;
    cubeRootXBtn.titleLabel.font=scienceBtnFont;
    yThRootOfXBtn.titleLabel.font=scienceBtnFont;
    lnBtn.titleLabel.font=scienceBtnFont;
    log10Btn.titleLabel.font=scienceBtnFont;
    
    xOppositeBtn.titleLabel.font=scienceBtnFont;
    sinBtn.titleLabel.font=scienceBtnFont;
    cosBtn.titleLabel.font=scienceBtnFont;
    tanBtn.titleLabel.font=scienceBtnFont;
    eBtn.titleLabel.font=scienceBtnFont;
    eEBtn.titleLabel.font=scienceBtnFont;
    
    radBtn.titleLabel.font=scienceBtnFont;
    sinhBtn.titleLabel.font=scienceBtnFont;
    coshBtn.titleLabel.font=scienceBtnFont;
    tanhBtn.titleLabel.font=scienceBtnFont;
    piBtn.titleLabel.font=scienceBtnFont;
    randBtn.titleLabel.font=scienceBtnFont;
    
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
    
    //数字点击事件
    [btn0 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn4 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn5 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn6 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn7 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn8 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    [btn9 addTarget:self action:@selector(workButtonNumber:) forControlEvents:UIControlEventTouchUpInside];
    //清空
    [btnEmpty addTarget:self action:@selector(workButtonEmpty:) forControlEvents:UIControlEventTouchUpInside];
    //小数点
    [btnDot addTarget:self action:@selector(workButtonDot:) forControlEvents:UIControlEventTouchUpInside];
    //正负
    [btnLose addTarget:self action:@selector(workButtonLose:) forControlEvents:UIControlEventTouchUpInside];
    //百分比
    [btnPercent addTarget:self action:@selector(workButtonPercent:) forControlEvents:UIControlEventTouchUpInside];
    //加减乘除
    [btnAdd addTarget:self action:@selector(addReduceRideDivide:) forControlEvents:UIControlEventTouchUpInside];
    [btnReduce addTarget:self action:@selector(addReduceRideDivide:) forControlEvents:UIControlEventTouchUpInside];
    [btnRide addTarget:self action:@selector(addReduceRideDivide:) forControlEvents:UIControlEventTouchUpInside];
    [btnDivide addTarget:self action:@selector(addReduceRideDivide:) forControlEvents:UIControlEventTouchUpInside];
    //等号
    [btnWait addTarget:self action:@selector(workButtonWait:) forControlEvents:UIControlEventTouchUpInside];
    
    //第一次监听器无效手动判断横竖屏
    if( [self isWinLevel]){
        [self levelState];
    }else{
        [self verticalState];
    }
    
}

-(void) buttonInit:(UIButton *)btn Title:(NSString *) title
   backgroundColor:(UIColor *) backgroundColor titleColor:(UIColor *) titleColor {
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setBackgroundColor:backgroundColor];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [keyboardView addSubview:btn];
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
    
    
    
    [leftbBracketBtn setFrame:CGRectMake(0, 0, btnWidth, btnHeight)];
    [rightBracketBtn setFrame:CGRectMake(btnWidth+levelGap, 0, btnWidth, btnHeight)];
    [MCBtn setFrame:CGRectMake(2*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [MAddBtn setFrame:CGRectMake(3*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [MMinusBtn setFrame:CGRectMake(4*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [MRBtn setFrame:CGRectMake(5*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    //UIButton *btnEmpty, *btnLose, *btnPercent, *btnDivide;
    [btnEmpty setFrame:CGRectMake(6*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btnLose setFrame:CGRectMake(7*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btnPercent setFrame:CGRectMake(8*(btnWidth+levelGap), 0, btnWidth, btnHeight)];
    [btnDivide setFrame:CGRectMake(9*(btnWidth+levelGap), 0, btnWidth, btnHeight)];

    
    [towNdowerBtn setFrame:CGRectMake(0, btnHeight+levelGap, btnWidth, btnHeight)];
    [xSquareBtn setFrame:CGRectMake(btnWidth+levelGap, btnHeight+levelGap, btnWidth, btnHeight)];
    [xCubeBtn setFrame:CGRectMake(2*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [xYPowerBtn setFrame:CGRectMake(3*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [eXPowerBtn setFrame:CGRectMake(4*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [tenXPowerBtn setFrame:CGRectMake(5*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    //UIButton *btn7, *btn8, *btn9, *btnRide;
    [btn7 setFrame:CGRectMake(6*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn8 setFrame:CGRectMake(7*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btn9 setFrame:CGRectMake(8*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    [btnRide setFrame:CGRectMake(9*(btnWidth+levelGap), btnHeight+levelGap, btnWidth, btnHeight)];
    
    
    [onePartOfXBtn setFrame:CGRectMake(0, 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [rootNumberXBtn setFrame:CGRectMake(btnWidth+levelGap, 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [cubeRootXBtn setFrame:CGRectMake(2*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [yThRootOfXBtn setFrame:CGRectMake(3*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [lnBtn setFrame:CGRectMake(4*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [log10Btn setFrame:CGRectMake(5*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    //btn4, *btn5, *btn6, *btnReduce;
    [btn4 setFrame:CGRectMake(6*(btnWidth+levelGap),2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn5 setFrame:CGRectMake(7*(btnWidth+levelGap),2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn6 setFrame:CGRectMake(8*(btnWidth+levelGap),2*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btnReduce setFrame:CGRectMake(9*(btnWidth+levelGap), 2*(btnHeight+levelGap), btnWidth, btnHeight)];
    
    
    [xOppositeBtn setFrame:CGRectMake(0, 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [sinBtn setFrame:CGRectMake(btnWidth+levelGap, 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [cosBtn setFrame:CGRectMake(2*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [tanBtn setFrame:CGRectMake(3*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [eBtn setFrame:CGRectMake(4*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [eEBtn setFrame:CGRectMake(5*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];
    //*btn1, *btn2, *btn3, *btnAdd;
    [btn1 setFrame:CGRectMake(6*(btnWidth+levelGap),3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn2 setFrame:CGRectMake(7*(btnWidth+levelGap),3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btn3 setFrame:CGRectMake(8*(btnWidth+levelGap),3*(btnHeight+levelGap), btnWidth, btnHeight)];
    [btnAdd setFrame:CGRectMake(9*(btnWidth+levelGap), 3*(btnHeight+levelGap), btnWidth, btnHeight)];

    [radBtn setFrame:CGRectMake(0, 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [sinhBtn setFrame:CGRectMake(btnWidth+levelGap, 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [coshBtn setFrame:CGRectMake(2*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [tanhBtn setFrame:CGRectMake(3*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [piBtn setFrame:CGRectMake(4*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
    [randBtn setFrame:CGRectMake(5*(btnWidth+levelGap), 4*(btnHeight+levelGap), btnWidth, btnHeight)];
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
    
    
    leftbBracketBtn.layer.cornerRadius=levelRadius;
    rightBracketBtn.layer.cornerRadius=levelRadius;
    MCBtn.layer.cornerRadius=levelRadius;
    MAddBtn.layer.cornerRadius=levelRadius;
    MMinusBtn.layer.cornerRadius=levelRadius;
    MRBtn.layer.cornerRadius=levelRadius;
    
    towNdowerBtn.layer.cornerRadius=levelRadius;
    xSquareBtn.layer.cornerRadius=levelRadius;
    xCubeBtn.layer.cornerRadius=levelRadius;
    xYPowerBtn.layer.cornerRadius=levelRadius;
    eXPowerBtn.layer.cornerRadius=levelRadius;
    tenXPowerBtn.layer.cornerRadius=levelRadius;
    
    onePartOfXBtn.layer.cornerRadius=levelRadius;
    rootNumberXBtn.layer.cornerRadius=levelRadius;
    cubeRootXBtn.layer.cornerRadius=levelRadius;
    yThRootOfXBtn.layer.cornerRadius=levelRadius;
    lnBtn.layer.cornerRadius=levelRadius;
    log10Btn.layer.cornerRadius=levelRadius;
    
    xOppositeBtn.layer.cornerRadius=levelRadius;
    sinBtn.layer.cornerRadius=levelRadius;
    cosBtn.layer.cornerRadius=levelRadius;
    tanBtn.layer.cornerRadius=levelRadius;
    eBtn.layer.cornerRadius=levelRadius;
    eEBtn.layer.cornerRadius=levelRadius;
    
    radBtn.layer.cornerRadius=levelRadius;
    sinhBtn.layer.cornerRadius=levelRadius;
    coshBtn.layer.cornerRadius=levelRadius;
    tanhBtn.layer.cornerRadius=levelRadius;
    piBtn.layer.cornerRadius=levelRadius;
    randBtn.layer.cornerRadius=levelRadius;
    
   
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
    
    //button 隐藏
    CGRect initCGRect= CGRectMake(0,0,0,0);
    
    
    [leftbBracketBtn setFrame:initCGRect];
    [rightBracketBtn setFrame:initCGRect];
    [MCBtn setFrame:initCGRect];
    [MAddBtn setFrame:initCGRect];
    [MMinusBtn setFrame:initCGRect];
    [MRBtn setFrame:initCGRect];
    [towNdowerBtn setFrame:initCGRect];
    [xSquareBtn setFrame:initCGRect];
    [xCubeBtn setFrame:initCGRect];
    [xYPowerBtn setFrame:initCGRect];
    [eXPowerBtn setFrame:initCGRect];
    [tenXPowerBtn setFrame:initCGRect];
    [onePartOfXBtn setFrame:initCGRect];
    [rootNumberXBtn setFrame:initCGRect];
    [cubeRootXBtn setFrame:initCGRect];
    [yThRootOfXBtn setFrame:initCGRect];
    [lnBtn setFrame:initCGRect];
    [log10Btn setFrame:initCGRect];
    [xOppositeBtn setFrame:initCGRect];
    [sinBtn setFrame:initCGRect];
    [cosBtn setFrame:initCGRect];
    [tanBtn setFrame:initCGRect];
    [eBtn setFrame:initCGRect];
    [eEBtn setFrame:initCGRect];
    [radBtn setFrame:initCGRect];
    [sinhBtn setFrame:initCGRect];
    [coshBtn setFrame:initCGRect];
    [tanhBtn setFrame:initCGRect];
    [piBtn setFrame:initCGRect];
    [randBtn setFrame:initCGRect];
    //重新排版字符串
    [btnEmpty setFrame:CGRectMake(0, 0, btnWidth, btnHeight)];
    [btnLose setFrame:CGRectMake(1*(btnWidth+verticalGap), 0, btnWidth, btnHeight)];
    [btnPercent setFrame:CGRectMake(2*(btnWidth+verticalGap), 0, btnWidth, btnHeight)];
    [btnDivide setFrame:CGRectMake(3*(btnWidth+verticalGap), 0, btnWidth, btnHeight)];
    [btn7 setFrame:CGRectMake(0, btnHeight+verticalGap, btnWidth, btnHeight)];
    [btn8 setFrame:CGRectMake(1*(btnWidth+verticalGap), btnHeight+verticalGap, btnWidth, btnHeight)];
    [btn9 setFrame:CGRectMake(2*(btnWidth+verticalGap), btnHeight+verticalGap, btnWidth, btnHeight)];
    [btnRide setFrame:CGRectMake(3*(btnWidth+verticalGap), btnHeight+verticalGap, btnWidth, btnHeight)];
    [btn4 setFrame:CGRectMake(0,2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn5 setFrame:CGRectMake(1*(btnWidth+verticalGap),2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn6 setFrame:CGRectMake(2*(btnWidth+verticalGap),2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btnReduce setFrame:CGRectMake(3*(btnWidth+verticalGap), 2*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn1 setFrame:CGRectMake(0,3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn2 setFrame:CGRectMake(1*(btnWidth+verticalGap),3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btn3 setFrame:CGRectMake(2*(btnWidth+verticalGap),3*(btnHeight+verticalGap), btnWidth, btnHeight)];
    [btnAdd setFrame:CGRectMake(3*(btnWidth+verticalGap), 3*(btnHeight+verticalGap), btnWidth, btnHeight)];
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



-(void) workButtonWait:(UIButton *) btn{
    [self calculate];
}

//计算
-(void) calculate{
    if ([operationStr length]>0&&!isshow&&iscalculate) {
        iscalculate=NO;
        double newNum=[[numInfolLabel text] doubleValue];
        double resultNum = 0.0;
        if([operationStr isEqualToString:@"+" ]){
            resultNum=storageNum+newNum;
        }else if([operationStr isEqualToString:@"-" ]){
            resultNum=storageNum-newNum;
        }else if([operationStr isEqualToString:@"×" ]){
            resultNum=storageNum*newNum;
        }else if([operationStr isEqualToString:@"/" ]){
            if (storageNum==0) {
                NSLog(@"被除数为零 异常");
                resultNum=0;
            }else{
                resultNum=storageNum/newNum;
            }
        }
        NSString *text=[self dataPrecisionDispose:resultNum];
        numInfolLabel.text=text;
        [self labelInfoLengthSet:[text length]];
        [self buttonEmpty:text];
    }
}



//加减乘除
-(void) addReduceRideDivide:(UIButton *)btn{
    //计算
    [self calculate];
    operationStr=btn.titleLabel.text;
    storageNum =[numInfolLabel.text doubleValue];
    isshow=YES;
}






//清空 归零
-(void) workButtonEmpty: (UIButton *)btn{
    numInfolLabel.text= @"0";
    NSString *text= numInfolLabel.text;
    [self labelInfoLengthSet:[text length]];
    [self buttonEmpty:text];
    
    //清空存储和计算数值
    operationStr=@"";
    storageNum=0;
    isshow=NO;
    iscalculate=NO;
}

//buttonEmpty 值变化
-(void)  buttonEmpty:(NSString *) str{
    if ([str isEqualToString:@"0"]) {
        [btnEmpty setTitle:@"AC" forState:UIControlStateNormal];
    }else{
        [btnEmpty setTitle:@"C" forState:UIControlStateNormal];
    }
}

//数字信息长度变化改变字体大小
-(void) labelInfoLengthSet:(NSUInteger)leg{
    if (leg<(NSUInteger ) 9) {
        numInfolLabel.font=[UIFont systemFontOfSize:70];
    }else if(leg<(NSUInteger ) 16){
        numInfolLabel.font=[UIFont systemFontOfSize:40];
    }else if(leg<(NSUInteger ) 30){
        numInfolLabel.font=[UIFont systemFontOfSize:25];
    }
}

-(void) workButtonNumber : (UIButton *)btn{
    if (isshow) {
        numInfolLabel.text=@"0";
        isshow=NO;
        iscalculate=true;
    }
    NSString *text= numInfolLabel.text;
    NSString *btnText=btn.titleLabel.text;
    if ([text isEqualToString: @"0"]) {
        text=btnText;
    }else{
        text= [text stringByAppendingString:btnText];
    }
    
    [self labelInfoLengthSet:[text length]];
    [self buttonEmpty:text];
    numInfolLabel.text=text;
}


-(void) workButtonDot:(UIButton *)btn {
    //判断是否已有小数点
    NSString *text=numInfolLabel.text;
    if (![text containsString:@"."]) {
        text= [text stringByAppendingString:@"."];
        numInfolLabel.text=text;
        [self labelInfoLengthSet:[text length]];
        [self buttonEmpty:text];
    }else{
        NSLog(@"已经有小数点了");
    }
}


-(void) workButtonLose:(UIButton *)btn{
    NSString *text=numInfolLabel.text;
    if (![text isEqualToString:@"0"]) {
        if ([text hasPrefix:@"-"]) {
            NSRange range;
            range.location=1;
            range.length=[text length]-1;
            text=  [text substringWithRange: range];
        }else{
            text= [@"-" stringByAppendingString:text];
        }
        numInfolLabel.text=text;
        storageNum =[numInfolLabel.text doubleValue];
        [self labelInfoLengthSet:[text length]];
        [self buttonEmpty:text];
    }
}

-(void) workButtonPercent:(UIButton *)btn{
    NSString *text=numInfolLabel.text;
    if (![text isEqualToString:@"0"]) {
        if (![text isEqualToString:@"0."]) {
            double textdouble= [text doubleValue];
            textdouble=textdouble/100;
            text= [self dataPrecisionDispose:textdouble];
            numInfolLabel.text=text;
            storageNum =[numInfolLabel.text doubleValue];
        }else{
            numInfolLabel.text=@"0";
        }
    }
    [self labelInfoLengthSet:[text length]];
    [self buttonEmpty:text];
}

//精度问题，以及浮点型类型的后面多余的0处理
//处理流程先保留9位小数（nsstring）
//在转换为double
-(NSString *) dataPrecisionDispose: (double)doublenum{
    //保留9位小数
    NSString  *textnum=[NSString stringWithFormat:@"%.9f", doublenum];
    double num=[textnum doubleValue];
    if (num==0) {
        return @"0";
    }else{
        //去除 textnum 末尾的0
        for(int i=(int)[textnum length]-1;i>=0;i--){
            if ([textnum hasSuffix:@"0"] || [textnum hasSuffix:@"."]) {
                NSRange range;
                range.location=0;
                range.length=[textnum length]-1;
                //结尾为小数点
                if ([textnum hasSuffix:@"."]) {
                    textnum=  [textnum substringWithRange: range];
                    return textnum;
                }
                textnum=  [textnum substringWithRange: range];
            }else{
                return textnum;
            }
        }
        return @"0";
    }
}

@end

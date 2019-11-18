//
//  ViewController.h
//  Calculator-ios
//
//  Created by fz500net on 2019/11/15.
//  Copyright © 2019 fz500net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorView : UIViewController{
    //屏幕宽度，高度
    CGFloat winWidth,winHeight;
    //横屏下间距 竖屏下间距 （水平，垂直）
    CGFloat levelGap,verticalGap;
    //水平屏幕边距
    CGFloat levelTop,levelBottom,levelLeft,levelRight;
    //垂直屏幕边距
    CGFloat verticalTop,verticalBottom,verticalLeft,verticalRight;
    //数字信息高度
    CGFloat levelNumInfolLabelHeight,verticalNumInfolLabelHeight;
    //字体大小
    UIFont *levelNumInfolLabelFont, *verticalNumInfolLabelFont;
    UIFont *scienceBtnFont;
    UIFont *numberBtnFont;
    
    //数字信息Label
    UILabel *numInfolLabel;
    //键盘view
    UIView* keyboardView;
    
    //按键
    UIButton *leftbBracketBtn, *rightBracketBtn, *MCBtn, *MAddBtn, *MMinusBtn, *MRBtn;
    UIButton *towNdowerBtn, *xSquareBtn, *xCubeBtn, *xYPowerBtn, *eXPowerBtn, *tenXPowerBtn;
    UIButton *onePartOfXBtn, *rootNumberXBtn, *cubeRootXBtn, *yThRootOfXBtn, *lnBtn, *log10Btn;
    UIButton *xOppositeBtn, *sinBtn, *cosBtn, *tanBtn, *eBtn, *eEBtn;
    UIButton *radBtn, *sinhBtn, *coshBtn, *tanhBtn, *piBtn, *randBtn;
    
    UIButton *btnEmpty, *btnLose, *btnPercent, *btnDivide;
    UIButton *btn7, *btn8, *btn9, *btnRide;
    UIButton *btn4, *btn5, *btn6, *btnReduce;
    UIButton *btn1, *btn2, *btn3, *btnAdd;
    UIButton *btn0, *btnDot, *btnWait;
    
    //标记当前计算（预算符号）
    NSString * operationStr;
    double storageNum;
    bool isshow;
    bool iscalculate;
    

    
}






@end


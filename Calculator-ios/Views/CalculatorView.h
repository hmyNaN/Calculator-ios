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
    UIButton *btn1_1, *btn1_2, *btn1_3, *btn1_4, *btn1_5, *btn1_6;
    UIButton *btn2_1, *btn2_2, *btn2_3, *btn2_4, *btn2_5, *btn2_6;
    UIButton *btn3_1, *btn3_2, *btn3_3, *btn3_4, *btn3_5, *btn3_6;
    UIButton *btn4_1, *btn4_2, *btn4_3, *btn4_4, *btn4_5, *btn4_6;
    UIButton *btn5_1, *btn5_2, *btn5_3, *btn5_4, *btn5_5, *btn5_6;
    UIButton *btnEmpty, *btnLose, *btnPercent, *btnDivide;
    UIButton *btn7, *btn8, *btn9, *btnRide;
    UIButton *btn4, *btn5, *btn6, *btnReduce;
    UIButton *btn1, *btn2, *btn3, *btnAdd;
    UIButton *btn0, *btnDot, *btnWait;
    
    

    
}






@end


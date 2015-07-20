//
//  main.m
//  Num
//
//  Created by qianfeng on 15-7-20.
//  Copyright (c) 2015年 qiangfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int row = 5;
    int wei = 5;
    int num = 1;
    int a[row][row] ;
    
    for (int i=0; i<row; i++) {
        for (int j=0; j<row; j++) {
            a[i][j]=0;
        }
    }
    
    for (int k=0; k<(row+1)/2;k++) {
        int hang = k;
        int lie=k;
        for (int i=hang; i<hang+wei; i++) {
            a[hang][i] = num++;
            NSLog(@"a[%d][%d]:%d",(int)hang,(int)i,(int)a[hang][i]);
        }
        for (int i=hang; i<lie+wei; i++) {
            a[hang+wei-1][i] = num++;
            NSLog(@"a[%d][%d]:%d",(int)hang+wei-1,i,(int)a[hang+wei-1][i]);
        }
//        for (int i=hang+row-2; i>=hang; i--) {
//            a[hang+wei-2][i]=num++;
//        }
        wei = wei - 2;
    }
    
    for (int i=0; i<row; i++) {
        for (int j=0;j<row;j++) {
            printf("%4d",a[i][j]);
        }
        printf("\n");
    }
    
    return 0;
}

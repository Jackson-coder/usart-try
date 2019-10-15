#include <iostream>
#include <stdio.h>      /*标准输入输出定义*/
#include <stdlib.h>     /*标准函数库定义*/
#include <unistd.h>     /*Unix 标准函数定义*/
#include <sys/types.h>  /*数据类型，比如一些XXX_t的那种*/
#include <sys/stat.h>   /*定义了一些返回值的结构，没看明白*/
#include <fcntl.h>      /*文件控制定义*/
#include <termios.h>    /*PPSIX 终端控制定义*/
#include <string.h>  

int main(int, char**) {
    //打开串口
    char send_buf[] = "check";
    int fd1,fd2;
     fd1 = open( "/dev/ttyACM1", O_RDWR);


    if (fd1 == -1)  printf("Wrong1!\n");/*perror(" 提示错误！");*//* 不能打开串口*/
    else printf(" Open COM success!\n");


    int wr_unm;

    //设置串口
    //struct termios Opt;
    //cfsetispeed(&Opt, B115200);//设置波特率
    //Opt.c_cflag|= CS7;//设置数据位置：CS8
    //Opt.c_iflag|= (PARODD | PARENB); /* 设置为奇效验*/  /* Opt.c_iflag&= ~PARODD；设置为偶效验*/
    //Opt.c_cflag &= ~CSTOPB; //停止位是1 Opt.c_cflag|= CSTOPB； 停止位是2

    //写串口发送数据
    
    while(1)
    {
            wr_unm=write(fd1, send_buf, sizeof(send_buf));
            if (wr_unm > 0)
            { 
                //printf("%d",wr_unm);
                printf("write success! \n ");
            }
            
            sleep(2);
    }
        
    //std::cout << "Hello, world!\n";
}

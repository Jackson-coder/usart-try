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
    char recv_buf[200]={0};
    //char recv_buf[] = "[check]";
    int fd2;
    fd2 = open( "/dev/ttyACM1", O_RDWR);

    //printf("%d",fd2);
    if (fd2 == -1)  printf("Wrong!\n");/*perror(" 提示错误！");*//* 不能打开串口*/
    else printf(" Open COM2 success!\n");

    int rd_num;

    //设置串口
    //struct termios Opt;
    //cfsetispeed(&Opt, B115200);//设置波特率
    //Opt.c_cflag|= CS7;//设置数据位置：CS8
    //Opt.c_iflag|= (PARODD | PARENB); /* 设置为奇效验*/  /* Opt.c_iflag&= ~PARODD；设置为偶效验*/
    //Opt.c_cflag &= ~CSTOPB; //停止位是1 Opt.c_cflag|= CSTOPB； 停止位是2

   
    while(1)
    {
            rd_num = read(fd2, recv_buf, sizeof(recv_buf));
            //printf("%d",rd_num);
            if (rd_num>0)
            {
                //recv_buf[rd_num]='\0';
                //printf("Read success! \n");
                printf("%s\n",recv_buf);
                memset(recv_buf,0,sizeof(recv_buf));
            }
            sleep(2);
    }
     
    //std::cout << "Hello, world!\n";
}

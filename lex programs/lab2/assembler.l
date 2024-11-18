#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#defineMAX11charl[10];structsymb{intadd;charlabel[10];}sy[11];voidsearch();voidmain(){inta[MAX],num,key,i,ch;charans;intcreate(int);voidlprob(int[],int,int);voiddisplay(int[]);system("cls");for(i=0;i<MAX;i++)a[i]=0;do{printf("\nEnteryourchoice:");printf("\n1-Createentryinthesymboltable\n2-Searchinthesymboltable\n");scanf("%d",&ch);switch(ch){case1:do{printf("\nEntertheaddress:");scanf("%d",&num);key=create(num);printf("Enterthelabel:");scanf("%s",l);lprob(a,key,num);
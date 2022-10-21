# 2022c
資傳一甲 程式設計 的程式倉庫

# Week06
## step01-0考試九九乘法表
```cpp
#include <stdio.h>
int main()
{
	for(int i=1;i<=9;i++){
		for(int j=1;j<=9;j++){
			printf("%d*%d=%2d ",j,i,i*j);
		}
		printf("\n");
	}
}
```

# 模仿它的鷹架, 先把 1樓 1星, 2樓3星, 3樓5星, 4樓7星, 5樓9星 畫出來
```cpp
#include <stdio.h>
int main()
{
    for(int i=1;i<=5;i++){
        int star= i*2-1;
        printf("鷹架:%d樓 %d星\n",i,star);
    }

}
```
#  i樓+space空格=5, space空格 = 5-i; 就可以把5層樓的金字塔建出來了。
```cpp
#include <stdio.h>
int main()
{
    for(int i=1; i<=5; i++){
        int space = 5-i;
        int star = i*2-1;
        for(int k=0; k<space; k++){
            printf(" ");
        }
        for(int k=0; k<star; k++){
            printf("*");
        }

        printf("鷹架:%d樓 %d空格 %d星\n",i,space,star);
    }
}
```
#  for(int i=1; i<=a; i++) 會去試 1...a 的數字, 裡面寫 if(a%i==0 && b%i==0) 兩個都可以整除時, 就找到答案 ans = i
```cpp
#include <stdio.h>
int main()
{
    printf("請輸入2個數");
    int a,b,ans;
    scanf("%d %d",&a,&b);

    for(int i=1;i<a;i++){
        if(a%i==0 && b%i==0) ans=i;
    }
    printf("找到ans:%d",ans);
}
```
# 輾轉相除法
```cpp
#include <stdio.h>
int main()
{
    printf("請輸入2個數字");
    int a,b,c;
    scanf("%d%d",&a,&b);

    while(1){
        c = a%b;
        printf("a:%d b:%d c:%d\n",a,b,c);
        if( c==0 ) break;
        a = b;
        b = c;
    }
    printf("中的是:%d",b);
}
```
# 用一堆 if(1) ... if(2) ... 讓大家了解, 其實所有的數值幾乎都成立, 只有 0 是不成意。
```cpp
#include <stdio.h>
int main()
{
    int a=10;

    if(-999) printf("-999成立\n");
    if(-3) printf("-3成立\n");
    if(-2) printf("-2成立\n");
    if(-1) printf("-1成立\n");
    if(0) printf("0不成立,所以甚麼都沒印\n");
    if(1) printf("1成立\n");
    if(2) printf("2成立\n");
    if(3) printf("3成立\n");
    if(4) printf("4成立\n");
    if(999) printf("999成立\n");
    if("a==0") printf("不管什麼東西,幾乎都成立\n");
}
```
# Week07
## 要用 long long int
```cpp
#include <stdio.h>
int main()
{
    int n = 123456789123456789;
    printf("%d\n",n);
    long long int a =123456789123456789;
    printf("%lld",a);
}
```
# 有了long long int 那我們便能回來複習最大公因數了
```cpp
#include <stdio.h>
int main()
{
    long long int a,b;
    scanf("%lld %lld",&a,&b);

    long long int ans;
    for(long long int i=1;i<=a;i++){
        if(a%i==0 && b%i==0) ans = i;
    }
    printf("答案是:%lld",ans);
}
```
# 輾轉的意是,是老二變老大, 老三變老二, 利用while(1)持續去做。
```cpp
#include <stdio.h>
int main()
{
    long long int a,b,c;
    scanf("%lld%lld",&a,&b);

    while(1){
        c = a%b;
        if(c==0) break;
        a=b;
        b=c;
    }
    printf("答案是:%lld\n",b);
}
```
# 是使用while迴圈來剝皮的程式,把每一位數取出來
```cpp
#include <stdio.h>
int main()
{
    int n=1234;

    while( n>0 ){
        printf("個位數是%d\n",n%10);
        n = n/10;
    }
}
```

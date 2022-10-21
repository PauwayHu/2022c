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
    printf("µª®×¬O:%lld\n",b);
}

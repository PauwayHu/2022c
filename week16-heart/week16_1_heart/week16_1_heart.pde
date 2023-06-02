//公式(x*x+y*y-1)^3-x*x*y*y*y<0
size(400,400);//視窗大小
fill(255,0,0);//紅
noStroke();//不要有黑線
for(int i=0;i<400;i++){
  for(int j=0;j<400;j++){
    float x=(j-200)/100.0;
    float y=-(i-200)/100.0;
    float xxyy =(x*x+y*y-1);
    if(xxyy*xxyy*xxyy-x*x*y*y*y<0){
      ellipse(j,i,10,10);
    }
  }  
}
//ellipse(200,200,100,100);

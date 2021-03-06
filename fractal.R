## File: fractal.R
## Desc: Julia set fractal inerpolation based on Pi
## Copyright: (c) 2015, Jason D. Miller, http://hack-r.com

a <-  pi # Complex parametets 
b <- -pi # connected to coordinate of the Mandelbrot set in a complex plane.
Limits=c(-3,3)
MaxIter=60
cl=colours()
Step=seq(Limits[1],Limits[2],by=0.01)
PointsMatrix=array(0,dim=c(length(Step)*length(Step),3))
a1=0
plot(0,0,xlim=Limits,ylim=Limits,col="white")

for(x in Step)
{
  for(y in Step)
  {
    n=0
    DIST=0
    x1=x;y1=y # Original x and y are saved.
    while(n<MaxIter & DIST<4)
    {
      newx=x1^2-y1^2+a
      newy=2*x1*y1+b
      DIST=newx^2+newy^2
      x1=newx;y1=newy
      n=n+1
    }
    if(DIST<4) colour=24 else colour=n*10
    #points(x,y, pch=".", col=cl[colour])
    a1=a1+1
    PointsMatrix[a1,]=c(x,y,colour)
  }
}

X11()
plot(PointsMatrix[,1], PointsMatrix[,2], xlim=Limits, ylim=Limits, col=cl[PointsMatrix[,3]], pch=".")
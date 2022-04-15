size(400,400);

background(#121212);

loadPixels();

//float maxDist = dist(0,0,width/2,height/2);
// For - loop for black at center
//for(int i=0;i<height;i++){
//  for(int j=0;j<width;j++){
//    float currDist = dist(i,j,width/2,height/2);
//    float col = map(currDist,0,maxDist,0,255);
//    int index = j+(i*width);
//    pixels[index] = color(col);
//  }
//}


// For-loop for gradient
for(int i=0;i<height;i++){
  for(int j=0;j<width;j++){
    float currDist = dist(j,i,width,i);
    float map = map(currDist,0,width,0,255);
    //pixels[j+(i*width)] = color(map,map);
    pixels[j+(i*width)] = color(0,i/2,j/2);
  }
}

updatePixels();

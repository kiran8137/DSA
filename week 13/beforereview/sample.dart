void main(){

  var matrix = [
    [0,1,0,1],
    [1,0,1,0],
    [0,1,0,1],
    [1,0,1,0],
  ];

  var count=0;
 for(var i=0;i<matrix.length;i++){
  var list = matrix[i];
  for(var j=0;j<list.length;j++){
    if(list[j]==1){
      list.remove(list[j]);
    }
  }
 }
 print(matrix);
 print(count);
}


// class Node{
//   Node? next;
//   int data;

//   Node(this.data);
// }

// class singly{

//   Node? head;
//   Node? tail;

//   createnode(int data){
//     Node newnode = Node(data);
//     if(head == null){
//       head = newnode;
//     }else{
//       tail?.next = newnode;
//     }

//     tail = newnode;
//   }

//   sample(){
       
//        Node? temp = head;
//        Node? same = head;
//        while(temp!=null ){
//         if(temp == same){
//           print('its cycling');
//         }
//          temp = temp.next;
//        }

//        print('its not cycling');
//   }


//   display(){
//     if(head == null){
//       print('no list is there');
//     }else{
//       Node? temp = head;
//       while(temp!=null){
//         print(temp.data);
//         temp = temp.next;
//       }
//     }
//   }
// }

// void main(){
//   singly list = singly();

//   list.createnode(10);
//   list.createnode(20);
//   list.createnode(230);
//   list.createnode(240);
//   list.display();
//   list.sample();

// }

void main(){
 List<int> list = [2,4,2,10,4,8,2];

 var count = 0;

//  for(var i=0;i<list.length;i++){
//   count = 0;
//   for(var j=0;j<list.length;j++){
//     if(list[i]==list[j]){
//       count++;
//     }
//   }
//   if(count==0){
//     print(list[i]);
//     break;
//   }
//  }
var x=0;
for(var i=0;i<list.length;i++){
  x=x^list[i];

}
print(x);
}
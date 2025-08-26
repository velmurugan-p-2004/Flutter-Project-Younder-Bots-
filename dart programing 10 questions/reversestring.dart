void main(){
  String Word = "flesruoYevileB";
  String reversed = "";
  for (int i = Word.length - 1; i >= 0; i--) {
    reversed += Word[i];
  }
  print('Reversed string: ' + reversed);
}
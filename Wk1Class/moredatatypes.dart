//maps
void main(){
  Map<String,int> studentsages = {
    'faith':20,
    'james':22,
    'mary':19,
    'john':21};
    print(studentsages);

    //runes
    // 🧙‍♀️ Summon emojis and symbols using runes
  Runes magicRunes = Runes('\u2764\u1F60A\u1F680');  // ❤️😊🚀

  // 🔮 Decoding the rune spell into a readable string
  String castedMagic = String.fromCharCodes(magicRunes);
  
  // 🔮 Output the magic!
  print("✨ Casting runes: $castedMagic");


}
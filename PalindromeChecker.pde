public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");

  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    } else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{

  String word2 = letters(word);
  String word3 = noCaps(word2);
  String word4 = onlyLetters(word3);
  if (word4.equals(reverse(word4)))
    return true;
  else
    return false;
 
   
}
public String letters(String word)
{

  String noSpace = new String();
  for (int i=0; i<word.length(); i++)
  {

    if (!(word.substring(i, i+1).equals(" ")))
    {
      noSpace = noSpace + word.substring(i, i+1);
    }
  }
    return noSpace;
  
}
public String reverse(String word2)
{
String rvr = new String();
   for (int i=word2.length()-1; i>-1;i--)
   { 
   rvr = rvr + word2.substring(i,i+1) ; 
   }
  return rvr;
}
public String noCaps(String word3)
{
return word3.toLowerCase();
}
public String onlyLetters(String word4)
{
String let  = new String();
  for (int i = 0; i < word4.length(); i++)
  {
    if (Character.isLetter(word4.charAt(i)))
    {
      let = let + word4.charAt(i);
    }
  }
  return let;
}
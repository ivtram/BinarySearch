private Item[] store = 
{
  new Item(184, 14), 
  new Item(196, 60), 
  new Item(206, 31), 
  new Item(2370, 65), 
  new Item(7282, 73), 
  new Item(8303, 90), 
  new Item(12328, 63), 
  new Item(12705, 14), 
  new Item(13066, 8), 
  new Item(14088, 92), 
  new Item(15320, 82), 
  new Item(15814, 60), 
  new Item(15917, 51), 
  new Item(17911, 96), 
  new Item(18061, 3), 
  new Item(18410, 56), 
  new Item(18465, 27), 
  new Item(18618, 64), 
  new Item(18871, 69), 
  new Item(19967, 45)
};                             
public int linearSearch(int catNumToFind)
{
  //complete this method
  for (int i = 0; i < store.length; i++)
  {
    if(store[i].getCatNum() == catNumToFind)
    {
      return store[i].getInventory();
    }
  }
  return -1;
}
public int recursiveLinearSearch(int catNumToFind, int startIndex)
{
  //complete this method
  if (startIndex > store.length-1)
  {
    return -1;
  }
  else if (store[startIndex].getCatNum() == catNumToFind)
  {
    return store[startIndex].getInventory();
  }
  else 
  {
    return recursiveLinearSearch(catNumToFind, startIndex+1);
  }
}
public int binarySearch(int catNumToFind)
{
  //complete this method    
  int high = store.length - 1;
  int low = 0;
  while(high >= low)
  {
    int guess = (low+high)/2;
    if(store[guess].getCatNum() == catNumToFind)
    {
      return store[guess].getInventory();
    }
    else if(store[guess].getCatNum() < catNumToFind)
    {
      low = guess+1;
    }
    else 
    {
      high = guess-1 ;
    }
  }
  return -1;
}
public int recursiveBinarySearch(int catNumToFind, int nLow, int nHigh)
{
  //complete this method   
 if (nLow > nHigh)
  {
    return -1;
  }
  int guess = (nHigh+nLow)/2;
  if(store[guess].getCatNum() > catNumToFind)
  {
    return recursiveBinarySearch(catNumToFind, nLow, guess-1);
  }
   else if(store[guess].getCatNum() < catNumToFind)
  {
    return recursiveBinarySearch(catNumToFind, guess+1, nHigh);
  }
  else 
  {
    return guess;
  } 
}






public class Counter
   {
       int count;
       public Counter(){}
       public int getCount()
         {
	return count++;
         }
       public void setCount(int count)
         {
	this.count = count;
         }
   }
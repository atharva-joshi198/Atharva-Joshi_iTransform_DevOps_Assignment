def isPrime(int a)
{
   Boolean x=false
   for(int i=2;i<a;i++)
   {
       if(a/i == 0)
            x= true
            break
   }
   return x
}

a = System.console().readLine() as Integer
def res = isPrime(a)

if( res == "true")
    println "Non-Prime"
else
    println "Prime"


// The higher limit can be a/2, as number is not divisible by more than its half

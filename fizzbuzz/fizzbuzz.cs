using System;

namespace CsharpKoans
{
    [TestFixture]
    public class FizzBuzzTest
    {
        [Test]
        public void FizzBuzzer()
        {
            for (var x = 1; x < 100; x++)
            {
                if (x % 15 == 0)
                    Console.WriteLine("FizzBuzz");
                if (x % 3 ==0)
                    Console.WriteLine("Fizz");
                else if (x % 5 == 0)
                    Console.WriteLine("Buzz");
                else
                    Console.WriteLine(x);
            }
        }
    }
}
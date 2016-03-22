using System;

namespace EasySurvey.Services.Mock
{
    public static class MockRandom
    {
        private static readonly Random RandomInstance = new Random();

        public static Random Random()
        {
            return RandomInstance;
        }
    }
}
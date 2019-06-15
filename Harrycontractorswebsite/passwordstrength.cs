using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Harrycontractorswebsite
{
    public class passwordstrength
    {
        public static bool HasMinimumLength(string password, int minlength)
        {
            return password.Length >= minlength;

        }
        public static bool HasMinimumUniqueChars(string password, int minUniqueChars)
        {
            return password.Distinct().Count() >= minUniqueChars;
        }
        public static bool HasDigit(string password)
        {
            return password.Any(c => char.IsDigit(c));
        }
        public static bool HasUpperCaseLetter(string password)
        {
            return password.Any(c => char.IsUpper(c));
        }
        public static bool HasLowerCaseLetter(string password)
        {
            return password.Any(c => char.IsLower(c));
        }
    }
}
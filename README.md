## String Calculator

Features
✅ Basic Usage
Accepts up to two numbers separated by commas.

Returns their sum.

Handles:

"" (empty string) → returns 0

"1" → returns 1

"1,2" → returns 3

✅ Unknown Amount of Numbers
Supports any number of comma-separated numbers.

Example: "1,2,3,4" → returns 10

✅ Newline Delimiters
Newlines \n can be used as delimiters in addition to commas.

Example: "1\n2,3" → returns 6

Invalid format (e.g., "1,\n") is not supported and should be avoided.

✅ Custom Single-Character Delimiters
A custom delimiter can be specified like this:

Format: "//[delimiter]\n[numbers]"

Example: "//;\n1;2" → returns 3

✅ Negative Numbers
Throws an exception if any negative numbers are present.

Exception message: "negatives not allowed: -1, -3"

Example: "1,-1,3,-3" → throws with message

✅ Ignore Large Numbers
Numbers greater than 1000 are ignored.

Example: "2,1001" → returns 2

✅ Delimiters of Any Length
Delimiters can be longer than one character:

Example: "//[***]\n1***2***3" → returns 6

✅ Multiple Delimiters
Supports multiple custom delimiters:

Example: "//[*][%]\n1*2%3" → returns 6

✅ Multiple Long Delimiters
Delimiters can be of any length and quantity:

Example: "//[**][%%][###]\n1**2%%3###4" → returns 10

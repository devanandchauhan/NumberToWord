# NumberToWord

This library convert number to word in Indian Number System. 

Example 
"2309" = "Two thousand three hundred and nine"

## Usage

Import the library as following:
```Swift
import NumberToWord
```

Use the static function of the NumberToWord as following to convert the number:
```Swift
NumberToWord.convert(2309)    //Output: Two thousand three hundred and nine
```

or

Use the extension on Integer as following:
```Swift
print(2309.toWord)          //Output: Two thousand three hundred and nine
```

## License

NumberToWord is released under the [MIT License](LICENSE.md).

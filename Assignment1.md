Assignment 1
============
In this assignment you will be practicing what you learned in Lesson 1.
There will be two parts. In the first you will implement basic functionality
with loops, conditionals, and string and array manipulation. In the second part
you will implement a part of a rudimentary webserver.

Part 1
------
* In the function count you will need to output a list of numbers, starting at 0, and ending at the argument-1 separated by commas.
** Example Output: AssignmentOne.count(5) => 0, 1, 2, 3, 4
* In the function num_to_name you will take in a single digit number (from 0 to 9). If the input is invalid output the string "Invalid". Otherwise output the word representing the number
** Example Output: AssignmentOne.num_to_name(3) => three
** Example Output: AssignmentOne.num_to_name("stuff") => Invalid

Part 2
------
In the file webserver.rb implement the function serve_file. This function takes in a string representing a filepath with respect to the folder webroot. You will open the file specified in the path variable and return it, wrapped in the correct header.

### Notes
* If the file does not exist, output a 404 File Not Found error message
* Wrapper code for HTTP Headers can be found in webserver-lib.rb
* You can assume that the provided path is not malicious
* The webserver is chrooted into the webroot directory; i.e. the webserver considers the webroot directory to be the root of the filesystem.

Testing
-------
I have provided a test file assignment_one_test.rb. If you have implemented the assignments correctly it will return all positive.

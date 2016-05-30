I am a string value holder. I am used to get strings filled by C function like this:
int my_function(char ** to_fill).

To use me with the preceding function, do something like:
self ffiCall: #(int my_function (LBStringValueHolder * to_fill))
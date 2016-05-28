# LibnotifyBinding

This project is a fork of [the squeak version](http://www.squeaksource.com/@nMFpH6GLohoPbUBl/s8cDfr35) modified to use the Pharo unified FFI API.

## Install
Simply run this script:
~~~
Metacello new
    repository: 'github://JulienDelplanque/LibnotifyBinding/repository';
    baseline: 'LibnotifyBinding';
    load
~~~

## Simple example
~~~
LBLibnotify uniqueInstance notifyInit: 'Pharo'.
notification := LBNotification
                    summary: 'libnotify for Pharo works'
                    message: 'As you see this message and the image has not crashed. libnotify for Pharo obviously works'.
notification show.
LBLibnotify uninit.
~~~

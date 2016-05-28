# LibnotifyBinding

This project is a fork of [the squeak version](http://www.squeaksource.com/libnotify.html) modified to use the Pharo unified FFI API.
It also have been updated to match the specification of [libnotify 0.7.6](https://developer.gnome.org/libnotify/) (the original implementation for Squeak was not up-to-date with this specification).

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

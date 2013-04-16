Maria-Script-Template
=====================

A plugin for Maria to use script tags in the page as template sources for ElementView objects.


Examples
--------

By naming convention, the following class definition will look for an element in the page `<script id="TodoTemplate" type="text/template">`
    
```
maria.ElementView.subclass(checkit, 'TodoView');
```

The naming convention can be overridden as shown in the next example. This class definition will look for an element in the page `<script id="TodoTodoTodo" type="text/template">`

```
maria.ElementView.subclass(checkit, 'TodoView', {
    properties: {
        templateName: 'TodoTodoTodo'
    }
});
```

The last example does not look for a template in the page because the template has been supplied directly in the properties object.

```
maria.ElementView.subclass(checkit, 'TodoView', {
    properties: {
        template: '<li class="todo"><li>'
    }
});
```


Downloads
---------

See http://peter.michaux.ca/downloads/maria-script-template/ for production ready builds.

Install via Bower with `bower install maria-script-template`


Status
------

Ready.


Browser Support
---------------

All browsers supported by Maria.


Dependencies
------------

Just [Maria](https://github.com/petermichaux/maria).


Build
-----

To build the production ready files, you need [JSMin](http://www.crockford.com/javascript/jsmin.html) or any other tool with the same command line interface. Then just type "make" at the command line and look in the build directory for the results.

For the record, this is how I installed JSMin. Note that I have /Users/peter/bin in my PATH.

```sh
$ cd ~/tmp
$ curl -O https://raw.github.com/douglascrockford/JSMin/master/jsmin.c
$ gcc -o jsmin jsmin.c
$ mv jsmin ~/bin
$ rm jsmin.c
$ which jsmin
/Users/peter/bin/jsmin
```


Author
------

Peter Michaux<br>
petermichaux@gmail.com<br>
http://peter.michaux.ca/<br>
[@petermichaux](https://twitter.com/petermichaux)


License
-------

Simplified BSD License. See the included LICENSE file for details.

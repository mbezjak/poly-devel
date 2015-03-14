# poly-devel

Scripts that simplify polyglot development.

## What is this project about?

This project contains a set of commands that unify information retrieval and
code updates across supported project types. Term `project type` here means,
for example:

* gradle based projects or libraries
* maven based projects or libraries
* grails projects or plugins
* playframework based projects
* sphinx based projects

## Example

`version` is a command that simply outputs the current project or plugin
version.

Hypothetical scenario:

    $ cd gradle-project
    $ version
    0.9
    $ cd ../grails-plugin
    $ version
    2.0.1
    $ cd ../maven-project
    $ version
    1.0.6

## Further Resources

 * Homepage:   https://github.com/mbezjak/poly-devel
 * License:    MIT (see LICENSE file)

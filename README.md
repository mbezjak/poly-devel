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

## How to install?

Do you have [napalm](http://github.com/mbezjak/napalm)?

    $ napalm install polydevel latest

If not then:

1. download [this project](https://github.com/mbezjak/napalm/archive/master.tar.gz)
2. add all scripts in `bin` to `/usr/local/bin`

## Adding support for unsupported project

Sometimes you have a project that doesn't conform to what can be recognized by
poly-devel. In that can you can customize the behavior of certain scripts by
creating appropriate files.

To support getting the current project version (emitted by `version`), just
create a file `poly-devel/version.sh` (must be executable!) and implement the
logic there. See [napalm as example](https://github.com/mbezjak/napalm/blob/master/poly-devel/version.sh).

To support updating the version, create `poly-devel/update-version.sh` (must be
executable!). See [napalm as example](https://github.com/mbezjak/napalm/blob/master/poly-devel/update-version.sh).

To customize the release process, create a file `release.sh` (must be
executable!) and implement the logic there. See
[napalm as example](https://github.com/mbezjak/napalm/blob/master/release.sh).
Note that in between `release-pre` and `release-post` you can do anything you
want, for example, create and upload the artifact.

## Further Resources

 * Homepage:   https://github.com/mbezjak/poly-devel
 * License:    MIT (see LICENSE file)

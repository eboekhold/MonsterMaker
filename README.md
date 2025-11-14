# Monster Maker

A tool for creating of Monsters for Dungeons and Dragons 5th edition.

## License

All source code is available under the GNU General Public License. See [LICENSE](LICENSE) for details.

## Dependencies

* Ruby (and Bundler) 2.6.5
* PostgreSQL
* Node.js 11
* Yarn

### Things that might get the legacy code working
* libpq-dev (at least on ubuntu)
* python3*
* python3-venv*
* python3-pip*
* python 2.7 (somehow)

*can probably be skipped but who knows

## Getting started

To run Monster Maker yourself, clone the repo and then install the needed dependencies:
```
$ bundle install
$ yarn install
```
Then set up the database:
```
$ rails db:create
$ rails db:migrate

# optional:
$ rails db:seed
```
Finally, run the test suite to verify that everything is working correctly:
```
$ rspec
```
If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails server
```

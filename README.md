# server_log_analyzer

Server_log_analyzer is my solution to a code challenge.

Write a program that:

a. Receives a log file as an argument (webserver.log is provided) e.g.: ./<parse> webserver.log

b. Returns the following:
    > list of webpages with most page views ordered from most pages views to less page views e.g.:
    /home 90 visits /index 80 visits etc...
    > list of webpages with most unique page views also ordered e.g.:
    /about/2 8 unique views /index 5 unique views etc...

## Getting Started

### Prerequisites
Gems you need to install the software:

* bundler

```
$ sudo gem install bundler
```

* colorize

```
$ sudo gem install colorize
```
* artii

```
$ sudo gem install artii

```

Finally run the following code and automatically a file will be created or updated in your directory, Gemfile.lock, with all the gems installed.

```
$ bundle install
```

### Installation

To install this gem onto your local machine:

* Clone with HTTPS this repository
* Open your terminal and change to the local directory where you want to clone your repository and run:

```
$ git clone + the link copied before.
```

### Usage
Type the below on your terminal and follow the on screen prompts.

```
$ ruby bin/server_log_analyzer
```
### Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/DianaBaRo/artify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## Author

* **Diana Badas** - *Initial work* - [DianaBaRo](https://github.com/DianaBaRo)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
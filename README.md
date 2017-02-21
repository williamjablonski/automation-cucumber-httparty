# MTPI/Santander RestFul Services Automation With Cucumber + HttpParty  #

This is a small framework that uses Cucumber and HttpParty to execute test on an RestFul Service API.

### Setting Up ###

Ruby 2.2-3 is recommended to run the tests. We will use [RVM](https://rvm.io) to control the ruby version.

```
$ rvm install ruby-2.2.3
```

### Build and Run ###

To install the dependencies for the project run ```$ bundle install ``` in the project root folder.

To run the automation on your local you can follow the example below.
```
bundle exec cucumber features/APIInteractiones.feature -r support/step_definitions/

```

So.. you might see something like... click to watch the video on Youtube

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/vTe87TKVl7M/0.jpg)](https://www.youtube.com/watch?v=vTe87TKVl7M)

### Automation Guidelines ###

* Scenarios should describe the feature, not edge cases.
* All scenarios should have a tag to identify which functionality/story it is being tested.
* Scenarios without step definitions or unfinished should contain `@WIP` tags.
```
@ST-100
Scenario: Logging in with valid credentials
```

##Testing Battle Plan For Phase 2

###Types of Tests

  * Unit Tests (model) : small and atomic - test the interface of a class.  ie `Dog.speak() == "woof"`
  * Function Testing (controller)
  ```ruby
  describe ContactsController do
    describe "GET #index" do
      it "populates an array of contacts"
      it "renders the :index view" end
  ```
  * Integration Test : Issue http requests to test the flow of data from the client to the server. Expensive and slow.
  * Acceptance Testing : Does the application meet pre-defined business rules / logic


###What technology?
  * Rspec = DSL for testing in Ruby.  Has more englishy terms (looks more like Ruby)
  * Rack::Test - API for testing Rack based frameworks (like Sinatra)
  * Shoulda Matchers - library for faster model tests
  * Factory Girl - library to create resources for tests
  * Capybara - integration testing

###A simple sample

###Testing in Sinatra
  * Run the sample app:
      * `bundle`
      * `rake db:create`
      * `rake db:migrate`
      * `rake db:test:prepare` - create a test database
      * `rake` run the default rake task which is spec or `rake spec`
    * You should see passing tests.
    * Look in the `spec` directory to see these test and write some of your on.

### Write Tests
 * No really, write some tests!

##Links
* See more in phase-2-guide/resources
* [RSpec](http://rspec.info/)
* [RSpec Cheatsheet](https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf)
* [How I learned to test](http://everydayrails.com/2012/03/12/testing-series-intro.html)


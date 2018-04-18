# Ruby testing project with cucumber and rspec

Before you can test you need to make sure the `recaptchaDisabled` value in the Application Settings is set to `true`.

### need to install
- gem install rails
- gem install rspec-rails

### download and put this in your system path

https://chromedriver.storage.googleapis.com/index.html?path=2.37/

### execution
- ok now run
>>`bundle install in you folder`

- to run the tests call 
>> `rake`

## Data magic
>> data magic is a tool that can be used to populate data
for the fields

use like this

```
checkout_page:
   name: ~full_name
   address: ~street_address
   email: ~email_address
   pay_type: ~randomize ['Purchase order', 'Credit card', 'Check']
   ```
1. props like name , address, email, pay_type are auto matching to declared
fields in the page object
2. the sign `~` uses the built in methods for string generation see the list
 below

### cheat sheet for the datamagic
  - first_name 
  - last_name	
  - full_name
  - name_prefix
  - name_suffix
  - title
  - street_address(include_secondary=false)
  - secondary_address
  - city
  - state
  - state_abbr
  - zip_code	
  - country
  - company_name	
  - catch_phrase
  - words(number = 3)	
  - sentence(min_word_count = 4)
  - sentences(sentence_count = 3)	
  - paragraphs(paragraph_count = 3)
  - characters(character_count = 255)	
  - email_address(name = nil)
  - domain_name	
  - url
  - user_name	
  - phone_number	
  - cell_phone
  - randomize([])	
  - randomize(1..4)
  - mask - #=num a=lower A=upper	
  - today(format = '%D')	
  - tomorrow(format = '%D')
  - yesterday(format = '%D')	
  - 3.days_from_today(format = '%D')	
  - 3.days_ago(format = '%D')
  - month	
  - month_abbr
  - day_of_week	
  - day_of_week_abbr
  - sequential([])	
  - sequential(1..4)
  
### PageObject

PageObject is a simple gem that assists in creating flexible page objects for testing the application in the browser.

#### Basic Usage

Basic usage can be found on the git repo below: 

[PageObject Github Repo](https://github.com/cheezy/page-object)

For a list of Elements use the wiki below: 

[PageObject Wiki](https://github.com/cheezy/page-object/wiki/Elements)

### Running Tests

Each test is made up of three files. The `.feature` file, found in `features/support`, is the more human readable instructions (written in [Cucumber](https://cucumber.io/docs/reference/ruby)). Right click the `.feature` file from within [RubyMine](https://www.jetbrains.com/ruby/download/) and click the `Run` option (`ctrl + shift + F10`).  
class LoginPage
  include PageObject
  include DataMagic

  page_url FigNewton.baseurl

  buttons(:buttons, :class => 'Button')
  text_field(:email, :name => 'email')
  text_field(:password, :name => 'password')
  div(:div, :class => 'Error')

  def fill_out
    email_element.value = 'jmcevoy+flexisafe3294003@palo-it.com'
    password_element.value = '@Paloit12'
  end

  def fill_out_alt
    email_element.value = 'jmcevoy+flexisafe3294003@palo-it.com'
    password_element.value = '@Paloit13'

    buttons_elements[index_for_button('Log in')].focus
    buttons_elements[index_for_button('Log in')].click
  end

  def error_appear
    if (@browser.driver.find_element(:xpath, "//div[@class='Error']/span").text == "Authorization failed. Please try again with valid email and password combination.")
      puts "Error Successful: 'Authorization failed. Please try again with valid email and password combination.'."
    else
      puts "No errors found."
    end
  end

  def clear_email
    email_element.value = ''
  end

  private

  def index_for_button(text)
    buttons_elements.find_index{ |button| button.text == text }
  end

end
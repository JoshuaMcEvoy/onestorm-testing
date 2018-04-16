class CheckPolicyPage
  include PageObject
  include DataMagic

  page_url FigNewton.baseurl

  text_field(:policyId, :xpath => "//input[@id='policyId']")
  text_field(:secondFactorId, :xpath => "//input[@id='secondFactorId']")
  buttons(:buttons, :class => 'btn')
  select_list(:dataSource, :id => 'ContentPlaceHolder1_ddlDataSource')
  select_list(:region, :id => 'ContentPlaceHolder1_ddlRegion')
  select_list(:year, :id => 'ContentPlaceHolder1_ddlYear')
  select_list(:storm, :id => 'ContentPlaceHolder1_lbStormList')

  def fill_out
    policyId_element.value = "af138242-8bac-4c7e-a67b-40ede92efe60"
    secondFactorId_element.value = "sef"
  end

  def click_button(text)
    buttons_elements[index_of_buttons(text)].click
  end

  def delay_timer(time)
    sleep time.to_i
  end

  def data_source_details
    dataSource = @browser.driver.find_element(id: 'ContentPlaceHolder1_ddlDataSource')
    dataSource_options = dataSource.find_elements(tag_name: 'option')
    dataSource_element[0].focus
    dataSource_options[1].click
    sleep 1
    region = @browser.driver.find_element(id: 'ContentPlaceHolder1_ddlRegion')
    region_options = region.find_elements(tag_name: 'option')
    region_element[0].focus
    region_options[1].click
    sleep 1
    year = @browser.driver.find_element(id: 'ContentPlaceHolder1_ddlYear')
    year_options = year.find_elements(tag_name: 'option')
    year_element[0].focus
    year_options[1].click
    sleep 1
    storm = @browser.driver.find_element(id: 'ContentPlaceHolder1_lbStormList')
    storm_options = storm.find_elements(tag_name: 'option')
    storm_element[0].focus
    storm_options[1].click
  end

  private

  def index_of_buttons(text)
    buttons_elements.find_index { |button| button.text == text }
  end

end
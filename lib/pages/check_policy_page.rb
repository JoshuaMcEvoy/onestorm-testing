class CheckPolicyPage
  include PageObject
  include DataMagic

  page_url FigNewton.baseurl

  text_field(:policyId, :xpath => "//input[@id='policyId']")
  text_field(:secondFactorId, :xpath => "//input[@id='secondFactorId']")
  text_field(:txtLat, :xpath => "//input[@id='txtLat']")
  text_field(:txtLng, :xpath => "//input[@id='txtLng']")
  buttons(:buttons, :class => 'btn')
  select_list(:dataSource, :id => 'ContentPlaceHolder1_ddlDataSource')
  select_list(:region, :id => 'ContentPlaceHolder1_ddlRegion')
  select_list(:year, :id => 'ContentPlaceHolder1_ddlYear')
  select_list(:storm, :id => 'ContentPlaceHolder1_lbStormList')
  select_list(:numberOfCircles, :id => 'ddlRadius')
  text_field(:txtRad1, :id => 'ContentPlaceHolder1_txtRad1')
  text_field(:txtRad2, :id => 'txtRad2')
  text_field(:txtRad3, :id => 'txtRad3')
  text_field(:txtRad4, :id => 'txtRad4')
  select_list(:numberOfWindSpeed, :id => 'ddlWS')
  text_field(:txtws1, id => 'txtws1')
  text_field(:txtws2, id => 'txtws2')
  text_field(:txtws3, id => 'txtws3')
  text_field(:txtws4, id => 'txtws4')
  text_field(:txtws5, id => 'txtws5')

  def fill_out
    policyId_element.value = "eafabdce-ae78-40bd-8402-289e85fe35c4"
    secondFactorId_element.value = "Josh"
  end

  def click_button(text)
    buttons_elements[index_of_buttons(text)].click
  end

  def delay_timer(time)
    sleep time.to_i
  end

  def data_source_details
    dataSource_element[0].focus
    dataSource_element.options[2].click
    sleep 1
    region_element[0].focus
    region_element.options[2].click
    sleep 1
    year_element[0].focus
    year_element.options[2].click
    sleep 1
    storm_element[0].focus
    storm_element.options[2].click
  end

  def check_lng_lat_fields
    if !txtLat_element.value.empty?
        puts "txtLat populated successfully: #{txtLat_element.value}"
    else
        fail "txtLat field has no value."
    end

    if !txtLng_element.value.empty?
        puts "txtLng populated successfully: #{txtLng_element.value}"
    else
        fail "txtLng field has no value."
    end
  end

  def check_radii_fields
    if numberOfCircles.to_i == 1
      if
      txtRad1_element.style('display') == 'block' && txtRad2_element.style('display') == 'none' && txtRad3_element.style('display') == 'none' && txtRad4_element.style('display') == 'none'
        puts("Radii fields displayed successfully.")
      else
        fail("Radii fields not displaying correctly")
      end
    elsif numberOfCircles.to_i == 2
      if txtRad1_element.style('display') == 'block' && txtRad2_element.style('display') == 'block' && txtRad3_element.style('display') == 'none' && txtRad4_element.style('display') == 'none'
        puts("Radii fields displayed successfully.")
      else
        fail("Radii fields not displaying correctly")
      end
    elsif numberOfCircles.to_i == 3
      if txtRad1_element.style('display') == 'block' && txtRad2_element.style('display') == 'block' && txtRad3_element.style('display') == 'block' && txtRad4_element.style('display') == 'none'
        puts("Radii fields displayed successfully.")
      else
        fail("Radii fields not displaying correctly")
      end
    else
      if
      txtRad1_element.style('display') == 'block' && txtRad2_element.style('display') == 'block' && txtRad3_element.style('display') == 'block' && txtRad4_element.style('display') == 'block'
        puts("Radii fields displayed successfully.")
      else
        fail("Radii fields not displaying correctly")
      end
    end
  end

  def check_no_of_wind_speed_fields
    if numberOfWindSpeed.to_i == 1
      if
      txtws1_element.style('display') == 'block' && txtws2_element.style('display') == 'none' && txtws3_element.style('display') == 'none' && txtws4_element.style('display') == 'none' && txtws5_element.style('display') == 'none'
        puts("Wind Speed fields displayed successfully.")
      else
        fail("Wind Speed fields not displaying correctly")
      end
    elsif numberOfWindSpeed.to_i == 2
      if
      txtws1_element.style('display') == 'block' && txtws2_element.style('display') == 'block' && txtws3_element.style('display') == 'none' && txtws4_element.style('display') == 'none' && txtws5_element.style('display') == 'none'
        puts("Wind Speed fields displayed successfully.")
      else
        fail("Wind Speed fields not displaying correctly")
      end
    elsif numberOfWindSpeed.to_i == 3
      if
      txtws1_element.style('display') == 'block' && txtws2_element.style('display') == 'block' && txtws3_element.style('display') == 'block' && txtws4_element.style('display') == 'none' && txtws5_element.style('display') == 'none'
        puts("Wind Speed fields displayed successfully.")
      else
        fail("Wind Speed fields not displaying correctly")
      end
    elsif numberOfWindSpeed.to_i == 4
      if
      txtws1_element.style('display') == 'block' && txtws2_element.style('display') == 'block' && txtws3_element.style('display') == 'block' && txtws4_element.style('display') == 'block' && txtws5_element.style('display') == 'none'
        puts("Wind Speed fields displayed successfully.")
      else
        fail("Wind Speed fields not displaying correctly")
      end
    else
      if txtws1_element.style('display') == 'block' && txtws2_element.style('display') == 'block' && txtws3_element.style('display') == 'block' && txtws4_element.style('display') == 'block' && txtws5_element.style('display') == 'block'
        puts("Wind Speed fields displayed successfully.")
      else
        fail("Wind Speed fields not displaying correctly")
      end
    end
  end

  private

  def index_of_buttons(text)
    buttons_elements.find_index { |button| button.text == text }
  end

end
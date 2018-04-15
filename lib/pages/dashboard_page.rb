class DashboardPage
  include PageObject
  include DataMagic

  page_url FigNewton.dashboardurl

  link( :link, :xpath => "//span[@class='Logout']//a[@href='#']")
  links( :links, :xpath => "//a")
  div(:div, :xpath => "//div[@class='HistoryLink']")

  def click_link(text)
    links_elements[index_for_link(text)].click
  end

  def click_div(text)
    div_element.focus
    sleep 2
    div_element.click
  end

  private

  def index_for_link(text)
    links_elements.find_index{ |link| link.text == text}
  end

end
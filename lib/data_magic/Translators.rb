module Flexisafe
  def palo_email
    'jmcevoy+flexisafe' + rand(1000...10000000).to_s + '@palo-it.com'
  end

  def flexi_phone
    '012345678'
  end

  def postcode
    rand(1000...9999).to_s
  end
end

DataMagic.add_translator Flexisafe

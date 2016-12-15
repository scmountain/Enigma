require 'date'
class Offsets
  attr_accessor :date, :offset_a, :offset_b, :offset_c, :offset_d, :split

  def initialize(date)
    date = date_format if date.nil?
    @split = offset_square(date)
    @offset_a = @split[0].to_i
    @offset_b = @split[1].to_i
    @offset_c = @split[2].to_i
    @offset_d = @split[3].to_i
  end

  def date_format
    Date.today.strftime("%D").delete("/").to_i
  end

  def offset_square(date)
    offset_split(date * date)
  end

  def offset_split(date)
    date.to_s.split(//).last(4)
  end
  
end

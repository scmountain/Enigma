class Offsets
  attr_accessor :date, :offset_a, :offset_b, :offset_c, :offset_d, :split

  def initialize
    @offset_a = 0
    @offset_b = 0
    @offset_c = 0
    @offset_d = 0
    @split = 0
  end

  def insert(date)
    @split = offset_square(date)
  end

  def offset_square(date)
    offset_split(date * date)
  end

  def offset_split(date)
    date.to_s.split(//).last(4)
  end

  def set_offset_a
    @offset_a = @split[0].to_i
  end

  def set_offset_b
    @offset_b = @split[1].to_i
  end

  def set_offset_c
    @offset_c = @split[2].to_i
  end

  def set_offset_d
    @offset_d = @split[3].to_i
    # binding.pry
  end
end

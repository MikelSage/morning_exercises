class Hex
  def initialize
    @colors = ['red', 'green', 'blue']
  end

  def dominant(hex_value)
    values = hex_value.scan(/.{2}/)

    converted_values = values.map do |val|
      val.hex
    end

    puts "The dominant color is #{@colors[converted_values.index(converted_values.max)]}"
  end
end

converter = Hex.new

converter.dominant('36b31a')

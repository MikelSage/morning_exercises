class MorseCoder
  attr_reader :code
  def initialize
    @code = {
      a: '.-',
      b: '-...',
      c: '-.-.',
      d: '-..',
      e: '.',
      f: '..-.',
      g: '--.',
      h: '....',
      i: '..',
      j: '.---',
      k: '-.-',
      l: '.-..',
      m: '--',
      n: '-.',
      o: '---',
      p: '.--.',
      q: '--.-',
      r: '.-.',
      s: '...',
      t: '-',
      u: '..-',
      v: '...-',
      w: '.--',
      x: '-..-',
      y: '-.--',
      z: '--..',
      :' ' => ' | '
    }
  end

  def english_to_morse(string)
    converted = ""
    string.each_char { |chr| converted << "#{code[chr.to_sym]} "}
    converted
  end
end

coder = MorseCoder.new
puts coder.english_to_morse('sos sos')

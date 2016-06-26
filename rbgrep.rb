#!/usr/bin/ruby

def filter_by_pattern(pattern, lines)
  lines.select do |line|
    line =~ /#{pattern}/i
  end
end

def main(argv)
  pattern = argv.pop

  output = filter_by_pattern(pattern, $<.readlines)

  output.each do |line|
    puts line
  end
end

if __FILE__ == $0
  main(ARGV)
end

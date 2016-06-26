#!/usr/bin/ruby

def filter_by_pattern(pattern, lines)
  lines.select { |line| line =~ /#{pattern}/i }
end

def main(argv)
  pattern = argv.pop

  output = filter_by_pattern(pattern, $<.readlines)

  output.each { |line| puts line }
end

if __FILE__ == $0
  main(ARGV)
end

require 'rspec'
require_relative '../rbgrep'

describe '#print_file_content' do
  before(:each) do
    @content_matching = [
      '123456',
      'NEXT LINE',
      '35278 what what...',
      '"§$%&$'
    ]
    @content_non_matching = [
      '123456',
      '35278 ...',
      '"§$%&$',
      '[1-3]{8}'
    ]
    @pattern = '[a-z]+'
  end

  it 'should return an array containing the lines that matched the pattern' do
    filtered = filter_by_pattern(@pattern, @content_matching)

    expect(filtered.length).to eq(2)
  end

  it 'should return an empty array as nothing matched' do
    filtered = filter_by_pattern(@pattern, @content_non_matching)

    expect(filtered.length).to eq(0)
  end
end

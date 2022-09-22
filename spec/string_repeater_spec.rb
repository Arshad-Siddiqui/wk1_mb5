require 'string_repeater'

RSpec.describe StringRepeater do
  context 'Given "Chocolate" and 4' do
    it 'prints ChocolateChocolateChocolateChocolate' do
      io = double :fake_io
      expect(io).to receive(:puts).with('Hello. I will repeat a string many times.')
      expect(io).to receive(:puts).with('Please enter a string')
      expect(io).to receive(:gets).and_return('Chocolate')
      expect(io).to receive(:puts).with('Please enter a number of repeats')
      expect(io).to receive(:gets).and_return('4')
      expect(io).to receive(:puts).with('Here is your result:')
      expect(io).to receive(:puts).with('ChocolateChocolateChocolateChocolate')
      string_repeater = StringRepeater.new(io)
      string_repeater.run
    end
  end

  context 'Given bananas and 5' do
    it 'prints bananasbananasbananasbananasbananas' do
      io = double :fake_io
      expect(io).to receive(:puts).with('Hello. I will repeat a string many times.')
      expect(io).to receive(:puts).with('Please enter a string')
      expect(io).to receive(:gets).and_return('bananas')
      expect(io).to receive(:puts).with('Please enter a number of repeats')
      expect(io).to receive(:gets).and_return('5')
      expect(io).to receive(:puts).with('Here is your result:')
      expect(io).to receive(:puts).with('bananasbananasbananasbananasbananas')
      string_repeater = StringRepeater.new(io)
      string_repeater.run
    end
  end
end
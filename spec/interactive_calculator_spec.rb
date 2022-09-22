require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  context 'two inputs are 7 and 5' do
    it 'returns 2' do
      io = double :fake_io
      expect(io).to receive(:puts).with('Hello. I will subtract two numbers.')
      expect(io).to receive(:puts).with('Please enter a number')
      expect(io).to receive(:gets).and_return('7')
      expect(io).to receive(:puts).with('Please enter another number')
      expect(io).to receive(:gets).and_return('5')
      expect(io).to receive(:puts).and_return 'Here is your result:'
      expect(io).to receive(:puts).with('7 - 5 = 2')
      interactive_calculator = InteractiveCalculator.new(io)
      interactive_calculator.run
    end
  end

  context 'two inputs are 15 and 8' do
    it 'returns 7' do
      io = double :fake_io
      expect(io).to receive(:puts).with('Hello. I will subtract two numbers.')
      expect(io).to receive(:puts).with('Please enter a number')
      expect(io).to receive(:gets).and_return('15')
      expect(io).to receive(:puts).with('Please enter another number')
      expect(io).to receive(:gets).and_return('8')
      expect(io).to receive(:puts).and_return 'Here is your result:'
      expect(io).to receive(:puts).with('15 - 8 = 7')
      interactive_calculator = InteractiveCalculator.new(io)
      interactive_calculator.run
    end
  end

  context 'two inputs are 8 and 15' do
    it 'returns -7' do
      io = double :fake_io
      expect(io).to receive(:puts).with('Hello. I will subtract two numbers.')
      expect(io).to receive(:puts).with('Please enter a number')
      expect(io).to receive(:gets).and_return('8')
      expect(io).to receive(:puts).with('Please enter another number')
      expect(io).to receive(:gets).and_return('15')
      expect(io).to receive(:puts).and_return 'Here is your result:'
      expect(io).to receive(:puts).with('8 - 15 = -7')
      interactive_calculator = InteractiveCalculator.new(io)
      interactive_calculator.run
    end
  end
end
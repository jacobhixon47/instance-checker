require('rspec')
require('pry')
require('instance-checker.rb')

describe('String#instance_check') do
  it("checks String for instance of a word") do
    expect("dogs cats dogs cats dogs".instance_check("dogs")).to(eq(3))
  end
end

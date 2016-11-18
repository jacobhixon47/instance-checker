require('rspec')
require('pry')
require('instance-checker.rb')

describe('String#instance_check') do
  it("checks String for instances of a word") do
    expect("dogs cats dogs cats dogs".instance_check("dogs")).to(eq(3))
  end
  it("checks String for instances of a word regardless of capitalization") do
    expect("Dogs cats dOGs cats dogS cats DOGS cats doGs".instance_check("DOgs")).to(eq(5))
  end

end

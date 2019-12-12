require('rspec')
require('pry')
require('ruby_file')

describe('#true_test') do
    it('will be true') do
    expect(true_test()).to(eq(true))
    end
end
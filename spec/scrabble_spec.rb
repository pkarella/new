require('rspec')
require('clock_angle')

describe('Fixnum#clock_angle') do
  it('is 90 when the time is 3:00') do
    expect(12.clock_angle(0)).to(eq(0))
  end
  it('is 7.5 when the time is 3:15') do
    expect(3.clock_angle(15)).to(eq(7.5))
  end
  it('is 22.5 when the time is 9:45') do
    expect(9.clock_angle(45)).to(eq(22.5))
  end
end

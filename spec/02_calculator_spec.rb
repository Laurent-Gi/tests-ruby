require_relative '../lib/02_calculator'

describe "add" do
  it "adds 0 and 0" do
    expect(add(0,0)).to eq(0)
  end

  it "adds 2 and 2" do
    expect(add(2,2)).to eq(4)
  end

  it "adds positive numbers" do
    expect(add(2,6)).to eq(8)
  end

  it "adds négative numbers" do
    expect(add(-2,-6)).to eq(-8)
  end
  
  # -=-=-=  avec des floats -=-=-=- 
  it "adds float numbers" do
    expect(add(45.734,634.345)).to be_within(0.001).of(680.079)
  end
end

describe "subtract" do
  it "subtracts 4 to 10" do
    expect(subtract(10,4)).to eq(6)
  end

  it "subtracts -6 to 6 " do
    expect(subtract(6,-6)).to eq(12)
  end

  it "subtracts 6 to -6 " do
    expect(subtract(-6,6)).to eq(-12)
  end
  
  it "subtracts 6 to 6 " do
    expect(subtract(6,6)).to eq(0)
  end

  # -=-=-=  avec des floats -=-=-=- 
  it "adds float numbers" do
    expect(subtract(45.734,634.345)).to be_within(0.001).of(-588.611)
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    expect(sum([])).to eq(0)
  end

  it "computes the sum of an array of one number" do
    expect(sum([7])).to eq(7)
  end

  it "computes the sum of an array of two numbers" do
    expect(sum([7,11])).to eq(18)
  end

  it "computes the sum of an array of many numbers" do
    expect(sum([1,3,5,7,9])).to eq(25)
  end
end

# Let's write some tests !
# we'll show you the first, you will write the others :)

describe "#multiply" do

  it "multiplies two numbers" do
    expect(multiply(3, 4)).to eq(12)
  end

  it "multiplies 45 by 125" do
    # one other test here, don't forget do end ;)
    expect(multiply(45, 125)).to eq(5625)
  end

  it "multiplies two other numbers, one of them being 0" do
    # one last test, with 0 in it
    expect(multiply(45, 0)).to eq(0)
  end
end

describe "#power" do
  it "raises one number 1 to the power of another number 2" do
    expect(power(1,2)).to eq(1)
  end

  it "raises one number 2 to the power of another number 2" do
    expect(power(2,2)).to eq(4)
  end

  it "raises one number (Int=256) to the power of another number (Int=24)" do
    expect(power(256,24)).to eq(6277101735386680763835789423207666416102355444464034512896)
  end

  it "raises one number (Int=2) to the power of a float number (Float=3.45)" do
    expect(power(2,3.45)).to eq(10.928322054035165)
  end

  it "raises one number (Int=10) to the power of a float number (Float=-8)" do
    expect(power(10,-8)).to eq(0.00000001)
  end

  it "raises one number (Float=4.47) to the power of a float number (Float=-3.21)" do
    #expect(power(4.47,-3.21)).to eq(8.175472287569747e-03)
    expect(power(4.47,-3.21)).to be_within(1.0e-16).of(8.175472287569747e-03)
  end
end


# http://en.wikipedia.org/wiki/Factorial
describe "#factorial" do
  it "computes the factorial of 0" do
    expect(factorial(0)).to eq(1)
  end

  it "computes the factorial of 1" do
    expect(factorial(1)).to eq(1)
  end
  
  it "computes the factorial of 2" do
    expect(factorial(2)).to eq(2)

  end

  it "computes the factorial of 5" do
    expect(factorial(5)).to eq(120)

  end

  it "computes the factorial of 10" do
    expect(factorial(10)).to eq(3628800)
  end
end

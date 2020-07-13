require_relative '../lib/00_hello'

describe "the hello function" do
  it "says hello" do
    expect(hello).to eq("Hello!")
  end
end

# Saluer quelq'un avec son prénom ou pseudo
# -----------------------------------------
describe "the greet function" do
  it "says hello to someone" do
    expect(greet("Alice")).to eq("Hello, Alice!")
  end

  it "says hello to someone else" do
    expect(greet("Bob")).to eq("Hello, Bob!")
  end

  it "says hello to not a float" do
    expect(greet(1.278)).to eq("Hello, 1.278!")
  end

  it "says hello to not a boolean" do
    expect(greet(false)).to eq("Hello, false!")
  end

  it "says hello to not an integer" do
    expect(greet(17)).to eq("Hello, 17!")
  end

end
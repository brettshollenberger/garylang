require "spec_helper"

describe Gary::Parser do
  it "tokenizes" do
    example = <<-EX
      hello world   what's up
      "i am a string"
    EX

    expect(Gary::Parser.tokenize(example)).to eq [
      "hello",
      "world",
      "what's",
      "up",
      "\n",
      "\"i",
      "am",
      "a",
      "string\"",
      "\n"
    ]
  end

  it "transforms tokens into ruby program" do
    example = <<-GARY
      boomz "ostruct"

      yeahmung parse_number(n)
        ifinfact n < 10
          ooooh n
        else
          cantdomuch "What to do?"
        fineto
      fineto

      20.times what2do |n|
        parse_number(n)
      fineto
    GARY

    expect(Gary::Parser.parse(example)).to eq [
      "require", 
      "\"ostruct\"", 
      "\n", 
      "\n", 
      "def", 
      "parse_number", 
      "n", 
      "\n", 
      "if", 
      "n", 
      "<", 
      "10", 
      "\n", 
      "puts", 
      "n", 
      "\n", 
      "else", 
      "\n", 
      "raise", 
      "\"What", 
      "to",
      "do?\"", 
      "\n", 
      "end", 
      "\n", 
      "end", 
      "\n", 
      "\n", 
      "20.times", 
      "do", 
      "|n|", 
      "\n", 
      "parse_number", 
      "n", 
      "\n", 
      "end", 
      "\n"
    ]
  end
end

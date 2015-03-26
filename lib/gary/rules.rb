module Gary
  class Rules
    include Gary::BackusNaurForm

    rule /boomz/,      "require"
    rule /yeahmung/,   "def"
    rule /what2do/,    "do"
    rule /ifinfact/,   "if"
    rule /ooooh/,      "puts"
    rule /cantdomuch/, "raise"
    rule /fineto/,     "end"
  end
end

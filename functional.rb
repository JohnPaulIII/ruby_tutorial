states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

def functional_urls(states)
  states.map { |state| "https://example.com/#{urlify(state)}" }
end

def urlify(string)
  string.downcase.split.join('-')
end

p functional_urls(states)
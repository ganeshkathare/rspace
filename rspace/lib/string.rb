class String
# Return an alternate string if blank.
def or_else(alternate)
blank? ? alternate : self
end

# Capitalize each word (space separated).
def capitalize_each
	space = " "
	split(space).each{ |word| word.capitalize! }.join(space)
end

# Capitalize each word in place.
def capitalize_each!
	replace capitalize_each
end

end
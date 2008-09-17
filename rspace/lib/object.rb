class Object

# Return true if the object can be converted to a valid integer.
def valid_int?
begin
Integer(self)
true
rescue ArgumentError
false
end
end

# Return true if the object can be converted to a valid float.
def valid_float?
begin
Float(self)
true
rescue ArgumentError
false
end
end

end
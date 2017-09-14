# When done, submit this entire file to the autograder.
# Part 1

def sum (arr)
  return 0 if arr.empty?
  s=0
  i=0
  while i<=arr.length-1
    s+=arr[i]
    i+=1
  end
  return s
  # YOUR CODE HERE
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length==1
  array= arr.max(2)
  return array[0]+array[1]
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  len=arr.length
  return false if len<2
  a, b=0,0
  while b<=len-2 
  a=b+1
     while a<=len-1
      return true if arr[a]+arr[b]==n
      a+=1
     end
  b+=1
  end 
  return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
# if name.class==String
    a="Hello, "
    return a + name# FOR Str concating, + is equivalent to <<,
 # end
  # YOUR CODE HERE
end

def starts_with_consonant? s
  return false if s.length==0
  return /[a-zA-Z&&[^aeiouAEIOU]]/=~s[0] ? true : false
  # /[b-df-hj-np-tv-z]/
  #  return true if((at>'a'&&at<='z'||at>'A'&&at<='Z')&&at!='e'&&at!='i'&&at!='o'&&at!='u'&&at!='I'&&at!='E'&&at!='O'&&at!='U')# regex must use // if logic marks are used
  # YOUR CODE HERE
  #how dull it is without methodfrom string api
end

def binary_multiple_of_4? s
  return true if s=='0'
  return s[-1]=='0'&&s[-2]=='0'&&(s.match(/[^01]/)==nil)?true: false
  # YOUR CODE HERE# note this is string note char
end

# Part 3

class BookInStock
  def initialize isbn,price
    raise ArgumentError, "Invalid Argument", caller if isbn.empty?||price<=0
    @isbn=isbn
    @price=price
  end
  def isbn=(value)
    @isbn=value
  end
  def isbn ()
    @isbn
  end
  def price=(value)
    @price=value
  end
  def price ()
    @price
  end
  def price_as_string
    #s = "%0.2f" %[@price]
    return "$%0.2f" %[@price]
  end
# YOUR CODE HERE
end

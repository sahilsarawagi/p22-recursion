def fibs(number) 
  return nil if number==0
  return [0] if number== 1
  return [0,1] if number== 2
  arr =[0,1]
  (2..number-1).each do |n|
    arr[n] = arr[n-1] +arr[n-2]
    end
  arr
end

def fibs_rec(n)
  return [0] if n== 1
  return [0,1] if n== 2
  arr=fibs_rec(n-1)
  arr << arr[-1] + arr[-2]
  
end

p fibs_rec(5)
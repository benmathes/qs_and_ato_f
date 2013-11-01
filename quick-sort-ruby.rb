
a = [3,4,5,1,2,3,4,5,5,34,32,23,32324,342,23,2,2,2,3,3,4,4,3,2,2,1,2]

def quicksort(list)
  if list.length <=1
    list
  else
    pivot = list.delete_at(0)
    less = list.select{|x| x <= pivot}
    more = list.select{|x| x > pivot}
    quicksort(less) + [pivot] + quicksort(more)
  end
end



def my_atof(a)
  # effectively same _work_ as before, but cleaner as it expresses the actual pattern
  # that we're looking for
  /(-)?(\d)*\.(\d*)e?(-)?(\d)*/.match(a)

  # cleaning this up for readability I'd set is_negative = $1, whole = $2, etc.
  puts "#{$1}, #{$2}, #{$3}, #{$4}, #{$5}"
  ($1.nil? ? 1 : -1)  * ($2.to_i + ($3.nil? ? 0 : ($3.to_i / (10 * $3.sub(/0*$/, '').length) )) ) * ($5.nil? ? 1 : (10 ^ (($4.nil? ? -1 : 1) * $5)))
end


p my_atof("-3.4e-5")
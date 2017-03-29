def bubble_sort(unsorted_values)
  # iterate through, bringing the largest value to the end
  unsorted_values.length.times do |i|
    unsorted_values.length.times do |j|
      if unsorted_values[i] < unsorted_values[j]
        # swap the values
        unsorted_values[i], unsorted_values[j] = unsorted_values[j], unsorted_values[i]
      end
    end
  end
  # sorted array
  sorted = unsorted_values
end


def bubble_sort_by (unsorted_values, &block)
  # iterate through, bringing the largest value to the end
	unsorted_values.length.times do |i|
    unsorted_values.length.times do |j|
      # based on block, sort left to right or right to left
      if block.call(unsorted_values[i], unsorted_values[j]) < 0
        # swap values at indexes i and j
        unsorted_values[i], unsorted_values[j] = unsorted_values[j], unsorted_values[i]
      end
    end
	end
  # sorted array
	sorted = unsorted_values
end

puts bubble_sort([4,3,78,2,0,2])

puts bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length }

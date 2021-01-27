# frozen_string_literal: true

def bubble_sort(array)
  (array.size - 1).times do |i|
    swap_counter = 0
    (array.size - 1 - i).times do |j|
      if array[j] > array[j + 1]
        swap_counter += 1
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
    break if swap_counter.zero?
  end
  array
end

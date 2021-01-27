# frozen_string_literal: true

def bubble_sort(numbers)
  numbers.each_index do |i|
    numbers.each_index do |j|
      next if j < i

      numbers[i], numbers[j] = numbers[j], numbers[i] if numbers[j] < numbers[i]
    end
  end
end

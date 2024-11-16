# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize

require 'byebug'

# QuickSort(List, low, high)
#         if(low<high)
# 	pivot=partition(List, high, low)
# 	QuickSort(List, how, pivot-1)
# 	QuickSort(List, pivot+1, high)

# Partition(List,high,low)
#         pivot=arr[high]
#         i=(low-1)
#         for j = low; j <= high-1; j++)
# 	if(List[j] < pivot)
# 	        i++
# 	        swap(List[i], List[j])
#         swap(arr[i+1], List[j])
#         return I + 1

# Extends Array class to add quicksort functionality
class Array
  def sort
    quick_sort(self, 0, length - 1)
  end

  def partition(arr, low, high)
    pivot = arr[high]
    i = low - 1
    puts "Partitioning array: #{arr[low..high].join(', ')}, pivot: #{pivot}"

    (low..high - 1).each do |j|
      if arr[j] <= pivot
        i += 1
        arr[i], arr[j] = arr[j], arr[i]
        puts "Swapped #{arr[i]} and #{arr[j]}: #{arr[low..high].join(', ')}"
      end
    end

    arr[i + 1], arr[high] = arr[high], arr[i + 1]
    puts "Placed pivot, new array: #{arr[low..high].join(', ')}"
    i + 1
  end

  def quick_sort(arr, low, high)
    if low < high
      puts "\nQuick sorting subarray: #{arr[low..high].join(', ')}"

      pi = partition(arr, low, high)

      puts "Partition index: #{pi}"

      quick_sort(arr, low, pi - 1)
      quick_sort(arr, pi + 1, high)
    end
  end
end

arr = [8, 3, 2, 5, 1, 7, 6, 4]
arr.sort
p arr

# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize

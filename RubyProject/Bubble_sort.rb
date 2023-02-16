# frozen_string_literal: true
def bubble_sort(arr)
  # Initialize the variable for outer loop
  i = 0
  while i < (arr.length - 1) do
    # Initialize the variable for inner loop
    j=0
    while j < (arr.length - 1 -i) do
        # Swap the elements if the first element is greater than the second element
        if arr[j] > arr[j+1]
          arr[j], arr[j+1] = arr[j+1], arr[j]
        end
        j += 1
        # break out of the inner loop if j loop is breater than arr.length - i - 1
        break if j > arr.length - i - 1
      end
    i += 1
    break if i > arr.length - 1
  end
  # return the sorted array
  return arr
end

# Driver code
# Create an Radom array
arr = [10,9,1,8,7,6,5,4,3,2,1,0]
# Calling the bubble_sort method
print bubble_sort(arr)



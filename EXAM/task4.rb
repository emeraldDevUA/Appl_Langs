class HeapNode
  attr_accessor :value
  attr_accessor :inheritor_a
  attr_accessor :inheritor_b
  def initialize(value, heir,heir2)
    @value = value
    @inheritor_a = heir
    @inheritor_b = heir2
  end
end
def full_heap_output(heap)
  print heap.value
  print_heap(heap, 1)
end
def print_heap (heap, depth)
  if  heap == nil
    return
  end
  puts""
  if  heap.inheritor_a != nil
    print "  "*depth,heap.inheritor_a.value
  end

  if  heap.inheritor_b != nil
    print "  "*depth,heap.inheritor_b.value
  end

  print_heap(heap.inheritor_a, depth+1)
  print_heap(heap.inheritor_b,depth+1)

end

def gen_heap(_array, i)
   largest = i
   l = 2 * i + 1
   r = 2 * i + 2
   n =_array.length

  if l < n && _array[l] > _array[largest]
    largest = l
    end

    if r < n && _array[r] > _array[largest]
      largest = r
      end

      if largest != i
        swap = _array[i]
        _array[i] = _array[largest]
        _array[largest] = swap

        gen_heap(_array, largest)
        end
end
def form_heap(_array)
  _array = _array.sort { |a, b| b <=> a }


   start_idx = (_array.length / 2) - 1
  (start_idx...0).each { |i|
    gen_heap(_array, i)
  }


  node_list = []

  (0..._array.length).each { |i|
    node_list[i] = HeapNode.new(_array[i], nil, nil)
    #puts _array[i]
  }
  (0..._array.length).each { |i|
    node_list[i].inheritor_a = node_list[2*i + 1]

    node_list[i].inheritor_b = node_list[2*i + 2]
  }

  node_list[0]
end



array = [100,30,50,20,10,8,9]
#form_heap(array, heap)
full_heap_output(form_heap(array))

#HeapNode.print_heap form_heap(array)
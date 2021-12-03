def hanoi(disks, from, to, middle)
  return if disks < 0

  if disks == 1
    # puts "only one disk"
    puts "Move disk #{disks} from #{from} to #{to}"
  else
    # puts "disks #{disks}"
    hanoi(disks - 1, from, middle, to)
    puts "Move disk #{disks} from #{from} to #{to}"
    hanoi(disks - 1, middle, to, from)
  end
end

hanoi(64,"start","finish","middle")

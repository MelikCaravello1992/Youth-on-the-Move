Youth on the Move

-- a program to encourage youth to become active and involved in their community 

-- Create a variable to keep track of the total number of youth participating
local totalYouth = 0

-- Create a table to store information about each youth
local youthTable = {}

-- Define a function to add a youth to the table
function addYouth(name, age, interest)
  local youth = {}
  youth.name = name
  youth.age = age
  youth.interest = interest

  youthTable[#youthTable+1] = youth

  -- Increment totalYouth by 1
  totalYouth = totalYouth + 1
end

-- Define a function to remove a youth from the table
function removeYouth(name)
  for i,v in ipairs(youthTable) do
    if v.name == name then
      table.remove(youthTable, i)
      -- decrement totalYouth by 1
      totalYouth = totalYouth - 1
      break
    end
  end
end

-- Define a function to search for a youth in the table 
function searchYouth(name) 
  for i,v in ipairs(youthTable) do
    if v.name == name then
      return v
    end
  end

  return nil
end

-- Define a function to retrieve all youth from the table
function getYouth()
  return youthTable
end

-- Define a function to get the total number of youth
function getTotalYouth()
  return totalYouth
end

-- Define a function to print a youth's information
function printYouth(youth)
  if youth ~= nil then
    print('Name: '..youth.name)
    print('Age: ' ..youth.age)
    print('Interest: ' ..youth.interest)
  else
    print('Youth not found.')
  end
end

-- Define a function to set a youth's interest
function setYouthInterest(name, interest)
  local youth = searchYouth(name)
  if youth ~= nil then
    youth.interest = interest
  else
    print('Youth not found.')
  end
end

-- Define a function to print the information for all youth
function printYouthTable()
  for i,v in ipairs(youthTable) do
    print('Name: '..v.name)
    print('Age: ' ..v.age)
    print('Interest: ' ..v.interest)
  end
end

return {
  addYouth = addYouth,
  removeYouth = removeYouth,
  searchYouth = searchYouth,
  getYouth = getYouth,
  getTotalYouth = getTotalYouth,
  printYouth = printYouth,
  setYouthInterest = setYouthInterest,
  printYouthTable = printYouthTable
}
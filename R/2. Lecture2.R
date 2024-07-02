#if else
quantity <-  25

if (quantity > 20) {
  print("You sold a lot!")
} else {
  print("Not enough for today")  
}

#if else
if (10 < 2) {
  print("Truth It is")
} else {
  print("You on Weed?")
}

#if else if
x = readline(prompt = "Enter a number: ")
if (x > 0) {
  print("Positive number")
} else if (x < 0) {
  print("Negative number")
} else {
  print("Zero")
}

# if else if
x = c("Mango","Apple","Orange")
if("Mango" %in% x){
  print("Mango is in the list")
} else if ("Mango" %in% x) {
  print("Mango is in the list")
} else {
  print("Mango is not in the list")
}

# switch case
x = switch(2,"pepsi","coke","sprite","thumsup")
print(x)

# loop demonstration

v = c("Aryan","Patel")
count = 1
repeat {
  print(v)
  count = count + 1
  if (count > 5) {
    break
  }
}
# table of 11 
L = 11
counter = 1
repeat {
  print((L * counter))
  counter = counter + 1
  if (counter == 11) {
    break
  }
}

# odd numbers from 3 to 11
counter = 3
repeat {
  print(counter)
  counter = counter + 2
  if (counter > 11) {
    break
  }
}

# print till 25 from 10
counter = 10
while (counter <= 25) {
  print(counter)
  counter = counter + 5
}

# USE OF LETTERS FUNCTION
L = LETTERS[1:10]
for (i in L) {
  print(i)
}

D = LETTERS[1:10]
for (i in D) {
  if (i == "E") {
    next
  } else {
    print(i)
  }
  
}

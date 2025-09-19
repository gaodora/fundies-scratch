use context starter2024
##########################################
#WEEK 2, CLASS 1

#define orange triangle
orange_triangle = triangle(35, "solid", "orange")
orange_triangle #display orange triangle

#define length, color for square
leng = 80
colr = "pink"

#define radius for circles
len = 50

# leng = 50, running this pyret stops the code and declares there's a name conflict

def_sq = square(leng, "solid", colr)
def_sq #display square


#define square w/o leng and colr
def_sq2 = square(80, "solid", "pink")
def_sq #display square

#define yellow circle and black rectangle
ycir = circle(len, "solid", "yellow")
brec = rectangle(100, 140, "solid", "black")
over = overlay(ycir, brec)
over #display over 

nim = overlay-xy(ycir, -100, 0, ycir)
overblack = overlay-align("center", "middle", nim, brec)
overblack #display overblack







########################################
#WEEK 2, CLASS 2

#teach ex
fun add-two-num(first-num, second-num): 
  doc: "returns the sum of two numbers"
  first-num + second-num
end
#ex num for adding function
add-two-num(5, 8)
add-two-num(2, 6)
add-two-num(4, 5)



#ex of function with type annotations and docstring
fun welcome(Name :: String) -> String:
  doc: "returns greeting addressed to given person" 
  "Welcome to class, " + Name
end
#ex of welcome function being used
welcome("Jay")
welcome("Anne")
#check welcome
check:
  welcome("Max") is "Welcome to class, Max"
  welcome("Franz") is "Welcome to class, Franz"
end



#armenia flag to compare for checks
armenia = frame(
  above(rectangle(120, 30, "solid", "red"),
    above(rectangle(120, 30, "solid", "blue"),
      rectangle(120, 30, "solid", "orange"))))
#austria flag to compare for checks
austria = frame(
  above(rectangle(120, 30, "solid", "red"),
    above(rectangle(120, 30, "solid", "white"),
      rectangle(120, 30, "solid", "red"))))

#create functions from expressions
fun three-stripe-flag(top :: String, middle :: String, bot :: String) -> Image:
  doc: "returns flag with 3 stripes"
  frame(
    above(rectangle(120, 30, "solid", top),
      above(rectangle(120, 30, "solid", middle),
        rectangle(120, 30, "solid", bot))))
end

#checks for three stripe flag
check:
  three-stripe-flag("red", "blue", "orange") is armenia
  three-stripe-flag("red", "white", "red") is austria
end



#--------------------Class 2.2 Exercises

#Writing Good Doc Strings
fun area(width, height :: NumPositive) -> Exactnum:
  doc: "returns area"
  width * height
end
#checks if following returns true 
check:
  area(3, 20) is 3 * 20
  area(4, 50) is 4 * 50
  area(5, 4) is 5 * 4 
end
#if you did 'area(5, 4) is 5 * 3' or 'area(5, 3) is 5 * 4' it will show that of the three only two passed with looking into details showing why either failed to be true


#Function Design Process - cost of shirt
fun cost(num_shir, messag): 
  doc: "finds cost of shirt"
  (num_shir * 5) + (string-length(messag) * 0.1)
end
#cost for 4 shirts 
cost(4, "Go Team!")
#cost for 7 shirts 
cost(7, "Hello World")

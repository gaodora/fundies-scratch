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
#ex of welcome function
welcome("Jay")
welcome("Anne")
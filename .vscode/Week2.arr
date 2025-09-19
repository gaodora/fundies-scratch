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



#WEEK 2, CLASS 2
fun welcome(Name):
  "Welcome to class, " + Name
end

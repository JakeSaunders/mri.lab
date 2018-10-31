# Before you do anything else in R we need to make sure 
# you have the files required for this lab and
# tell R which directory the files are in (called setting your working directory).
# We have writen code which does this for you but you need to run it.
# To run it follow the directions on line 7, 12 and 14 to 16.

# <---------    Highlight from this line...
download.file(url = "https://github.com/JakeSaunders/mri.lab/raw/master/MRIlab.zip",
              destfile = "MRIlab.zip")
unzip(zipfile = "MRIlab.zip",exdir = "MRIlab")
setwd("MRIlab/")
# <---------    to this line.

# 1) Press and hold CTRL, 
# 2) Pressing and release ENTER once
# 3) Release CTRL

# That is how you run code in R, we will go over it again 
# because you will be doing it a lot. 
# Now you are able to start the exercise.

#### Part 1) R, the very basics ----

# This window or panel is the R Script Editor, this is where you write code to be run later
# You run code from this window by highlighting it and pressing CTRL+ENTER.
# Highlight the code on the line below and run it by highlighting & pressing CTRL+ENTER.

10+7

# Now look in the window below this one to find the console.
# The code you ran appeared in the console with the calculated answer.
# You can do simple and complex math in R using of +, -, * , / and ^ 
# to do addition, subtraction, multiplication, division and calculate exponents. 
# Write three to five equations below using any combination of these operators 
# and run the code by highlighting & pressing CTRL+ENTER.





#1) Copy your input and output from the terminal below into the answer sheet
# or word document. 

# When coding you often want to save a number or series of numbers as a descriptive variable.
# In R we assign numbers to a variable using the assignment operator <- like so:

x <- 17

# When you highlight and run this line of code you will notice that x appears in the 
# list of variables in the Environment panel in the upper right, along with a short description
# now run the code below:

x

# you can do math with a variable just like you could a number, as in the code below. 

17^x

# you can also save a string of characters as a variable, as below

txt <- "This is my text variable"

# and the entire string of characters will be returned if you run the variable alone 

txt

# R is really good at storing and processing lists of things. 
# To make a list of numbers use the first and last number in
# a list seperated by a : like so

1:100

# You can also make a list of non-consecutive numbers by 
# putting them inside the combine or concatenate function c(...) 
# The three dots is just short hand for a list of things separated by commas like so:

c(1,7,9,100,80,280,2,59)

# Concatenate is one of the simplest functions in R, and just like every function 
# in R you can get a help with it by putting a ? in front of it in running it like so:

?c()

# You can also assign a list to a variable:

my.numbers <- c(1,7,9,100,80,280,2,59)

my.numbers

my.strings <- c("You","Can","Even","Make","A","List","of","strings")

my.strings

# If I list is numeric you can do math with the whole list, as below:

my.numbers/10

# The result of which is to divide every number in the list by 10.

# You can even do math with two numeric lists, as below:

my.numbers/10:17

# The result of this code is to divide every number in the 
# my.numbers varible with the corresponding number in the
# list of numbers 10, 11, 12, 13, 14, 15, 16, 17.

# You can also assign the output of code to a new variable

my.new.numbers <- my.numbers/10:18

my.new.numbers

# Make sure the value of the thing on the right is what you want
# the value of the thing on the left to become. The assignment 
# opperrator ( <- ) is an arrow because of this reason.

# In R there are also functions that can process character data. 
# One of the simples functions is paste(...)
# just pastes together any two list passed to it.

paste(my.strings,my.numbers)

# Some functions will have arguments in addition to the data you give them.
# Write a line of code to look up the help (?) for the paste function.



# Then using the help document modify the code below to produce the following output:

"You.1-Can.7-Even.9-Make.100-A.80-List.280-of.2-strings.59"

# and paste these two lines of code in the worksheet under entry 2. 

paste( my.strings, my.numbers       )

# This best way to approach this problem is to 
# write code you think might work and run it
# see what the result. You can't break anything
# by doing this, the worse that will happen is 
# that you will see a red error message in the console
# if things don't work. If you can't figure out the 
# answer with the help document, try looking for the 
# answer using http://www.google.com or 
# http://r.789695.n4.nabble.com/ or 
# https://stackoverflow.com/ before 
# asking for help from the instructor.


#### Part 2) Working with data sets in R ----

# Packages are groups of R function people of written to analyze 
# particular kinds of data. Packages are loaded into R with the
# library function.

# The next line of code loads a package with sample data sets. 
library("datasets")

# You have been working with excel spreadsheets 
# to store data and R uses a similar format called 
# a data.frame or a matrix. A data.frame is just a 
# list of lists that are combined together. 

# You can view a data.frame from the datasets library by running the code below

DNase

# To get the size of the data frame you can use the function dim() to return
# a list with the number of rows and the number of columns of the data frame.

dim(DNase)

# Now write two lines of code.
# The first should assign the DNase to a new variable name. 
# The second should using the dim() function to check that 
# it is the same size as DNase. Paste both the lines 
# into answer #3 on the worksheet. 




# There are two ways to select different parts of a data frame.
# One way selects the numbers of the columns or rows using a 
# sequence of numbers like
# DNase[ numeric-list-of-rows, numeric-list-of-columns]
# The following code selects row 20 to row 30 of the DNase dataframe.

DNase[20:30, ]

# You can also subset by columns.
# The following code selects colum 2 and 3

DNase[ , 2:3]

# You can also subset by both rows and columns like so:
DNase[40:45, 2:3]

# Before you move on, notice the commas in the above lines of code.
# Comma placement is very import in R, as you might have already realized
# from the exercise with the paste() function. A good first step when
# you are troubleshooting things in R is to double check your commas. 

# Now write a line of code that selects the last 5 rows and paste it and
# the output it produces into answer #4 of the worksheet 



# You can also select a column by name using the $ like so
DNase$conc

# This makes it really easy to make graphs from data frames 
# with R. 

# Much of the power and usefulness of R comes in its ability 
# to analyze data and produce graphs quickly. For example, 
# if I wanted a graph summarizing the data in DNase I could 
# do it in one line of code. 

plot(x = DNase$conc, y = DNase$density)

# Notice how I used the $ to select indiviudal columns of
# the data set. Remembering that will make the last part 
# of this exercise easier. 

# From here I could make it a publication quailty graph 
# with a title and more discriptive X and Y axes labels
# by looking at ?plot and filling in the other arguments below. 
# (assume concentration is in mM and density is unitless)
# If you want to know more about how the DNase data set used
# for this step was generated check using the help 
# feature (e.g. ?DNase ).

# For more information on scatterplots see: 
# https://www.statmethods.net/graphs/scatterplot.html

# Once you are done, paste your updated code into #5 on the worksheet
plot(
  DNase$density ~ DNase$conc,
  main = "",
  xlab = "",
  ylab = ""
)

# Then just above the graph in the bottom right panel 
# click on Export > Save as Image to save the graph 
# you generated as a TIFF file and paste 
# the it under your code in #5 on the work sheet.

#### Part 3) Using R to view MRI data ----

# One of the reasons so many scientist use R is that it's free and
# people have written groups of small programs or functions to deal with 
# all different types of data. These groups of programs are call packages. 
# In the rest of the exercise you will be using a package for analyzing MRI data.

# The package is named oro.nifi and to download it you use the following function:

install.packages("oro.nifti")
# this may take several minutes. 


# Once the package is downloaded then the next step is to tell R that you will be using it.
# You load a package with the library function as follows:

library(oro.nifti)

# To load an MRI file into R you use the readNIfTI function 
# from the oro.nifti package and assign the information to a variable
# just like you would a list of numbers

brain <- readNIfTI("brain01.nii.gz",reorient = FALSE)

# now write a line of code below using the dim() function on the brain variable.
# Paste this line of code and its output from the console window and 
# and describe what you think it means in a few sentences in the worksheet #6.



# Now it is time to look at the MRI image you have loaded into R
# You do this with the orthographic function. 
# Run the line of code below to see:

orthographic(brain)

# For #7 of the worksheet describe which anatomic planes are displayed 
# in the top left, top right and bottom left images. Also what is the 
# relationship of the red lines in each image?



# The default placement of the red lines is in the very center of the image's 
# coronal, sagittal, and axial planes. You can determine what the middle 
# coordinates of the MRI are by dividing the dimensions of the MRI by two. 
# Write one line of code below that returns the three mid points of the MRI 
# as a list and paste the code and its output for # 8 on the worksheet:


# You can pick where you want to the sections to be placed by using the 
# xyz = argument of the orthographic function to provide a list of 3 
# coordinates.
# For example, if you wanted to tell the planes to occur as in the middle 
# you would use the follow 

orthographic( brain, xyz = c(85, 128, 128) )

# If you wanted to move the sagittal plane to the left you 
# might try something like the following:

orthographic( brain, xyz = c(60, 128, 128))

# Take a few minutes and explore this brain by changing the xyz = argument 
# before moving on to the next part of the exercise. 


# Now that you have practiced moving through the MRI you are going to indicate 
# where different brain structures are and include those images into your worksheet.
# For example if you were asked to identify the left eye you might write the 
# following code. 

orthographic( brain, xyz=c(108,60,110), text = "Left Eye")

# You will probably notice a red warning message in the console.
# This is expected for this code and is just R's way of making 
# sure you realize something important about how a function is runing.
# Don't worry about the details for this lab, just know that in R: 
#     Warning = "Hey make sure this is doing what you think.
#     Error = "Hey this code failed to run.


# For each of the follow brain area's write a line of code that places the red lines
# on that brain structure and also label the image with the text = argument. 
# Once you have made the image, save it as you saved the graphics in the above
# exercises and paste the TIFF in the worksheet at the respective number

# 9 Pons

# 10 Corpus Callosum

# 11 Left Lateral Ventricle

#### Part 4) Using R to analyze MRI data ----

# Let's take a look at another person brain.
# First we need to load the MRI file titled brain02.nii.gz using 
# the readNIfTI function (remember to make the reorient argument 
# equal FALSE for this lab). 
# Add to the line of code below so that it loads this file and 
# assigns it to the variable brain2

 <- readNIfTI("",reorient = FALSE)

# Now write a line of code using the orthographic function view brain2.
# If there is anything of note, use the xyz = argument 
# to put the cross hairs on it and save a image for worksheet answer 12

orthographic()

# This patient appears to have a brain tumor. You have a radiologist 
# colleague look at the MRI and mark off the area of the tumor 
# for you to look at. She sends you the file as an .Rdata file which you can 
# load with the line of code below:

load("RoI.Rdata")

# Explore the object you just loaded named tumor with the 
# orthographic function and the xyz = augment.

orthographic()

# Now it would be helpful to be able to see the tumor outline overlaid
# with the MRI of the brain. Run the code below to do this:


install.packages("scales")    # This package has function for making 
library(scales)               # graphs with transparent objects. 
                              # You will see why we need to install it in a second
orthographic(
  x = brain2,
  y = tumor,
  xyz = c(200,155,12),
  col.y = alpha("red",0.2),
  text="MRI overlaid with tumor RoI",
  text.cex = 1.5
) 

# Explore the location of the tumor by changing the xyz = argument
# in the code above. Based on what areas of the brain the tumor has invaded
# hypothesize as to what you think this persons symptoms would be for #13 
# in the work sheet. Feel free to do some research on the internet to 
# answer this question. 

# Once you are done using the orthgraphic function run this 
# line of code to reset the viewer from MRI mode to normal graphing mode
dev.off()

# It would be much easier to determine what the effect of this brain tumor
# might be if you could tell exactly what brain regions where involved. 
# There is a way to do this in R but it involves mapping the MRI to an annotated 
# brain atlas in multi-dimensional space. That isn't the sort of thing you want 
# to do on your laptop if we want labe to end on time. Fortunately I have 
# done that step for you and the resulting table can be loaded into R 
# with the following command.

roi.df <- read.csv("RoI.voxels.csv")

# NOTE: read.csv() is one of the most used functions for getting data into
# R. If you ever need to use R after this lab. It is a good place to start.

# Any time you load new data into R you should take a few minutes and explore it.
# The first thing to do might be to run the object in the terminal to see what the 
# data happens to be. Another good place to start is to look at the dimensions
# of the data. The next two lines of code do those two things.

roi.df

dim(roi.df)

# Some other functions that you might find helpful in exploring your data are:
# head(), tail(), class(), str(), colnames()
# At this point you should be able to look up the help on these functions and
# figure out how to run them on roi.df and what information they return.
# Take some time and do that now. 



# The last part of this lab is for you to make a graph using the data in 
# roi.df and the barplot() function. You can read about the barplot()
# function using the help command or at the following website:
# https://www.statmethods.net/graphs/bar.html

# You don't have to graph every bit of data in the roi.df object, you can 
# select the most important parts of it and just graph that. Once you have
# made a graph, save it and paste it under answer 14 in the work sheet.
# Write this code to do this below: 
















# You may run into hurdles when trying to do this. That's ok!
# Everyone runs into problems when they are trying to learn how to code.
# The thing to remember is that you can't break your computer making a 
# barplot in R, so try running things that you think might work. Experiment!

# Also because everyone runs into hurdles when doing this, most of the 
# problems you have lots of other people before you have already had
# and solved. So if you are having problems google something like...
# "how do I to use barplot in r to make a graph"
# and you might find a helpful website like this:
# https://www.theanalysisfactor.com/r-11-bar-charts/


# Now that you have your graph do some research on your own to determine what 
# the brain areas damaged by the tumor do and write a paragraph on what you 
# think this person's symptoms might be now that you have more specific 
# information for # 15. 

# Writing this response can be done outside of lab. 
# Email your worksheet to your TA when it is completed.


# Congratulations! You've now started to learn to program in R. 
# If you want to learn to do more complex things here are some resources:

#     https://swirlstats.com/

#     https://www.rstudio.com/online-learning/

#     https://www.statmethods.net/index.html

#     https://www.coursera.org/specializations/jhu-data-science?action=enroll

#     https://www.datacamp.com/courses/free-introduction-to-r


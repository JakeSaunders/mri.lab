#### Take Home Quiz #### ----

# For the take home part of the quiz you will practice using R to make 
# 2 graphs for some of the previous labs you have done. You can use any
# resources you can find online, in the library or even each other. However,
# everyones graphs should look unique (e.g. they should have a different 
# titles, labels, color schemes, line or dot types). Think about what 
# you want your graph to look like, make it in R, save them as PDFs and 
# email to your lab instructor by indicated time. 

# These graphs should be "good graphs" that contain:
    # .An informative title
    # .Independent variable on x-axis
    # .Dependent variable on y-axis
    # .Labels for each axis
    # .Units for each axis
    # .A clear legend if more than one line, dot, or color type is used


##### GRAPH 1: PER #### ----

# The following two lines of code will download a PER data set
# similar to one that you collected in the conditioning lab. 

per.url <- "https://raw.githubusercontent.com/JakeSaunders/mri.lab/master/quiz/per.csv"
per.data <- read.csv( file = per.url)

# Make a bar graph with this data using the barplot() function. 
# Remember to customize the graph so it looks unique and save 
# the graph as a PDF to be email to your lab instructor. 


barplot()

##### GRAPH 1: An IV plot #### ----

# The following two lines of code will download a IV curve data set 
# similar to the one you collected in the giant axon lab. 

iv.curve.url <- "https://raw.githubusercontent.com/JakeSaunders/mri.lab/master/quiz/IVcurve.csv"
iv.curve <- read.csv( file = iv.curve.url ) 

# Your graph should have both the inward and outward current plotted 
# on the same graph and a legend indicating which is which. 
# You should be able to make this plot by modifying the following commands:

plot()
lines()
legend()

# Here is a helpful resource on the basics of line graphs https://www.harding.edu/fmccown/r/
# If you get super stuck you can come to either of the lab instructors for help but you will be asked
# to show us all the resources you checked before coming to us for help. This quiz is an 
# exercise in problem solving and synthesizing information you have been provided which is
# an important part of doing neuroscience.
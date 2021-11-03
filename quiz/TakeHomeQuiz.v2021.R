#### Take Home Quiz #### ----

# For the take home part of the quiz you will practice using R to make 
# 2 graphs for some of the previous labs you have done. You can use any
# resources you can find online, in the library or even each other. However,
# everyone's graphs should look unique (e.g. they should have a different 
# titles, labels, color schemes, line or dot types). Think about what 
# you want your graph to look like, make it in R, save them as PDFs and 
# turn them in through canvas by indicated time. 

# These graphs should be "good graphs" that contain:
    # .An informative title
    # .Independent variable on x-axis
    # .Dependent variable on y-axis
    # .Labels for each axis
    # .Units for each axis
    # .A clear legend if more than one line, dot, or color type is used


##### Part 1: An IV plot #### ----

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
# If you get super stuck you can come to either of the lab instructors for help but you 
# will be asked to show us all the resources you checked before coming to us for help.
# This quiz is an exercise in problem solving and synthesizing information you have 
# been provided which is an important part of doing neuroscience.

##### Part 2: Class PER data #### ----

# Run the function below to download a data set from the PER experiments from everyone 
# that followed instructions and shared there data. 
download.file(
    url = "https://raw.githubusercontent.com/JakeSaunders/mri.lab/master/quiz/PER.class.csv",
    destfile = "Per.class.csv"
)
# ...And read the file into R with the following code
lab <- read.csv("PER.class.csv")

# look at the data you assigned to the variable lab, the columns in the data frame are: 
    # Section - unique id for lab section data was collected in
    # Group - unique id for each group in lab section that collected the data
    # FlyID - unique id for each fly each group used to collect data
    # Sex - male or female fly
    # Trial.Type - Was this replicate baseline data or a conditioning trial
    # Odor - If there was an air puff and what the air puff was scented with
    # Tastant - If flies were allowed to taste a drop of water and what was in the water
    # PER - 1 if the flies extended the proboscis, 0 if the fly did not

# When you did the PER lab, many of you found it hard to analyze the data
# because you you  had a very few flies. You now have access to data from data from 
# 145 flies to better answer questions about conditioning. You also have the answers 

# 1) Review information from the PER lab to remind you of the experimental methods
#    and formulate a hypothesis about this data set.
# 2) Make one or more good graph(s) that summarizes all the data from the PER lab.
# 3) Make a "good graph" in R that helps you address this hypothesis (be sure to include 
#    the hypothesis some where in your submission. 

    # One of the first things you will have to do is calculate the mean for all 
    # the different experiment variables. In excel you would have to organize your 
    # data by groups and calculate mean individually, but in R you can just use the 
    # aggregate function and a general formula to indicated which columns are the 
    # dependent and independent variables. 
    
    # Formula: dependent.variable ~ independent.variable.1 + independent.variable.2

lab.summary <- aggregate(
    data = lab, 
    formula = PER ~ Trial.Type + Sex + Odor + Tastant, 
    FUN =  mean
)

# look at the summarized data by running the follow line of code:
lab.summary

# Now here are a couple hints for you: 

# Most of you will be able to do this by either making one or more 
barplot()
boxplot()
plot()      # this is the function for a scatter plot

# First,remember help is your friend and a good starting place.
?barplot()
?boxplot()
?plot()      

# There are tons of tutorials for working with the graphics functions in R online, 
# if you run into a problem try to find the answer online before you ask for help.
# Remember to check the cheat sheet examples from the power point.

    # https://github.com/JakeSaunders/mri.lab/blob/master/Cheatsheet%20-%20Base%20R.pdf
    # https://github.com/JakeSaunders/mri.lab/blob/master/BaseGraphicsCheatsheet.pdf
    # https://rstudio.com/resources/cheatsheets/

# You might find that you need to subset your data to plot different categories. 
# the subset function takes 2 arguments: a data frame and a logical expression 
# indicating the data you want returned. See below for examples

subset(lab.summary, Sex == "male")

subset(lab.summary, Sex == "female" & Trial.Type == "Baseline")

subset(lab.summary, Trial.Type == "Trial #1" | Trial.Type == "Trial #2")

# If all else falls make an appointment to see Jake or Emily. 
# We can always jump on zoom if you get lost. 




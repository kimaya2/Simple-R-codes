Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Age <- c(25, 31, 23, 52, 76, 49, 26)
Height <- c(177, 163, 190, 179, 163, 183, 164)
Weight <- c(57, 69, 83, 75, 70, 83, 53)
Sex <- as.factor(c("F", "F", "M", "M", "F", "M", "F"))
df <- data.frame (row.names = Name, Age, Height, Weight, Sex)
levels(df$Sex) <- c("M", "F")
print (df)

Name <- c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Working <- c("Yes", "No", "No", "Yes", "Yes", "No", "Yes")
dfa <- data.frame(row.names = Name, Working)
print(dfa)
dfa <- cbind (df,dfa)
print(dfa)
dim(dfa)
nrow(dfa)
ncol(dfa)
sapply(dfa, class)
str(dfa)   

class (state.center)
df <- as.data.frame(state.center)
class(df)

v <- c(45:41, 30:33)
b <- LETTERS[rep(1:3, 3)]
n <- round(rnorm(9, 65, 5))
df <- data.frame(Age = v, Class = b, Grade = n)
df[with (df, order(Age)),
df[order(df$Age), ]  

matr <- matrix(1:20, ncol = 5) # Example matrix
df <- as.data.frame(matr)
colnames(df) <- paste("variable_", 1:ncol(df))
rownames(df) <- paste("id_", 1:nrow(df))
print(df)

class(VADeaths)
df <- as.data.frame(VADeaths)
df$Total <- df[, 1] + df[, 2] + df[, 3] + df[, 4]
print(df)
df$Total <- rowSums(df[1:4])
print(df)
df <- df[, c(5, 1:4)]
print(df)

class (state.x77)
df <- as.data.frame(state.x77)
nrow(subset(df, df$Income < 4300))
row.names(df)[(which(max(df$Income) == df$Income))]

df <- swiss[c(1:3, 10:13), c("Examination", "Education", "Infant.Mortality")]
print(df)
df[4,3] <- NA
df["Total",] <- c(sum(df$Examination), sum(df$Education), sum(df$Infant.Mortality, na.rm = TRUE))
print(df)
df$proportion <- round(df$Examination / df["Total", "Examination"], 3)
print(df)

df <- data.frame(state.abb, state.area, state.division, state.region, row.names = state.name)
names(df) <- substr(names(df), 7, 9)

dfa <- cbind(state.x77, df)
print(dfa)
dfa$div <- NULL
dfa <- subset(dfa, ,-c(4, 6, 7, 9, 10))
dfa$illi <- ifelse(dfa$Illiteracy < 1,
                   "Low Illiteracy",
                   ifelse(dfa$Illiteracy >= 1 & dfa$Illiteracy < 2,
                          "Some Illiteracy",
                          "High Illiteracy"))
sub <- subset(dfa, illi == "Low Illiteracy" & reg == "West")
max <- max(sub$Income)
stat <- row.names(sub)[which (sub$Income == max)]
cat("Highest income from the West is", max , "the state where it's from is", stat, "\n")

x = c(1, 2, 3, 3, 5, 3, 2, 4, NA)
xf <- factor(x)
xf

x <- c(11, 22, 47, 47, 11, 47, 11)
factor(x, levels=c(11, 22, 47), ordered=TRUE)

z <- c("p", "a" , "g", "t", "b")
factor(z) 
z[3]

z <- factor(c("p", "q", "p", "r", "q"))  
levels(z)
z

s1 <- factor(sample(letters, size=5, replace=TRUE))
s2 <- factor(sample(letters, size=5, replace=TRUE))
factor(c(levels(s1)[s1], levels(s2)[s2]))

responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree"))
responses
factor(responses, levels=c("Strongly Agree", "Agree", "Disagree", "Strongly Disagree")) 

x <- data.frame(q=c(2, 4, 6), p=c("a", "b", "c"))
x$p <- factor(x$p, levels=c("a", "b", "c"), labels=c("fertiliser1", "fertiliser2", "fertiliser3"))
levels(x$p)

x <- factor(c("high", "low", "medium", "high", "high", "low", "medium"))
unique(x) 
data.frame(levels = unique(x), value = as.numeric(unique(x)))
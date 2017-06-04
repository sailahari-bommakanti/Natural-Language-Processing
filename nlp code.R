#Topfeatures of the corpus is analyzed before running stopwords
topfeatures<-topfeatures(dfm.simple, n=50)
topfeatures
#after running stopwords
swlist = c("we", "the", "are", "as", "a", "an", "to", "of", "in", "as")
dfm.stem <- dfm(cleancorpus, toLower = TRUE,
                ignoredFeatures = c(swlist, stopwords("english")),
                verbose = TRUE,
                stem = TRUE)
topfeatures.stem<-topfeatures(dfm.stem, n=50)
topfeatures.stem

#Plots
plot.STM(prevfit, type="summary")
plot.STM(prevfit, type="labels", topics = c(15,4,5))
plot.STM(prevfit, type="perspectives", topics = c(20,4))

#sentiment analysis
dfm.sentiment <- dfm(cleancorpus, dictionary = mydict)

#Plot a graph for topic correlation
mod.out.corr <- topicCorr(prevfit)
plot.topicCorr(mod.out.corr)





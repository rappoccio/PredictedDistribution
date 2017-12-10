
CXXFLAGS= -std=c++11 -I./ -D"STANDALONE=1"
HEADERS=interface/PredictedDistribution.h interface/BinomialEff.h
SOURCES=src/PredictedDistribution.cc src/BinomialEff.cc
OUTDIR=standalone

PredictedDistributionDict.cxx: $(HEADERS) 
	    rootcling -f $(OUTDIR)/$@ -c $(CXXFLAGS) -p $^

libAnalysisPredictedDistribution.so: PredictedDistributionDict.cxx $(SOURCES)
	     g++ -shared -o $(OUTDIR)/$@ `root-config --libs` $(CXXFLAGS) -I$(ROOTSYS)/include $(OUTDIR)/$^


all: libAnalysisPredictedDistribution.so


clean:
	rm -f $(OUTDIR)/PredictedDistributionDict.cxx $(OUTDIR)/PredictedDistributionDict_rdict.pcm libAnalysisPredictedDistribution.so 

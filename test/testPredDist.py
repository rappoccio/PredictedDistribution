
import ROOT
ROOT.gSystem.Load("libAnalysisPredictedDistribution")
a = ROOT.TH1D("a", "a", 10, 0, 10)
pred = ROOT.PredictedDistribution(a, "bla", "bla", 10, 0, 10)

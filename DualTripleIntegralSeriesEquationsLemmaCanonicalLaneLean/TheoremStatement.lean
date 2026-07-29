import DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "dual-triple-integral-series-equations-lemma",
    theoremName := "Dual Triple Integral Series Equations Lemma",
    theoremObject := "Admitted dual-triple system satisfying series constraints",
    classicalBoundary := "unrestricted classical series existence",
    manifoldConstrainedStatement := "dual-triple system closed under bridge and gate",
    certificateLane := "dual_triple_constrained",
    carriedRemainder := "classical series existence remains open"
  }

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
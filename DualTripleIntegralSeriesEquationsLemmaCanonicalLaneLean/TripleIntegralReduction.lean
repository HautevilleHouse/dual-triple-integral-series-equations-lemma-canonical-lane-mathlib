import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure TripleIntegralReductionPackage where
  tripleIntegral : Type u
  reductionFormula : Prop
  deltaDistributionMatch : Prop
  convergenceCondition : Prop
  leadingTermExtraction : Prop

structure TripleIntegralReductionEvidence (T : TripleIntegralReductionPackage) where
  reductionFormulaClosed : T.reductionFormula
  deltaDistributionMatchClosed : T.deltaDistributionMatch
  convergenceConditionClosed : T.convergenceCondition
  leadingTermExtractionClosed : T.leadingTermExtraction

def TripleIntegralReductionClosed (T : TripleIntegralReductionPackage) : Prop :=
  T.reductionFormula ∧ T.deltaDistributionMatch ∧
  T.convergenceCondition ∧ T.leadingTermExtraction

theorem triple_integral_reduction_closed_from_evidence
    (T : TripleIntegralReductionPackage)
    (E : TripleIntegralReductionEvidence T) :
    TripleIntegralReductionClosed T := by
  exact And.intro E.reductionFormulaClosed
    (And.intro E.deltaDistributionMatchClosed
      (And.intro E.convergenceConditionClosed E.leadingTermExtractionClosed))

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse

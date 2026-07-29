import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure TripleSeriesDecompositionPackage where
  seriesTriple : Type u → Type u
  coefficientSequence : ℕ → ℝ
  convergenceCondition : Prop
  summationFormula : Prop
  regularityProperties : Prop

structure TripleSeriesDecompositionEvidence (T : TripleSeriesDecompositionPackage) where
  seriesTripleDefined : T.seriesTriple
  coefficientSequenceDefined : T.coefficientSequence
  convergenceConditionClosed : T.convergenceCondition
  summationFormulaClosed : T.summationFormula
  regularityPropertiesClosed : T.regularityProperties

def TripleSeriesDecompositionClosed (T : TripleSeriesDecompositionPackage) : Prop :=
  T.convergenceCondition ∧ T.summationFormula ∧ T.regularityProperties

theorem triple_series_decomposition_closed_from_evidence (T : TripleSeriesDecompositionPackage) (E : TripleSeriesDecompositionEvidence T) : TripleSeriesDecompositionClosed T :=
  And.intro E.convergenceConditionClosed (And.intro E.summationFormulaClosed E.regularityPropertiesClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
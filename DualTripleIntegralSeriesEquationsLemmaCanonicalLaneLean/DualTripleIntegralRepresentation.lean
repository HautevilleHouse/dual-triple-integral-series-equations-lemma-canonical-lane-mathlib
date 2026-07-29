import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure DualTripleIntegralRepresentation where
  leftKernel : Type u
  rightKernel : Type v
  leftIntegralOperator : leftKernel → Prop
  rightIntegralOperator : rightKernel → Prop
  matchingCondition : Prop

structure DualTripleIntegralRepresentationEvidence (R : DualTripleIntegralRepresentation) where
  leftIntegralOperatorClosed : R.leftIntegralOperator = True
  rightIntegralOperatorClosed : R.rightIntegralOperator = True
  matchingConditionClosed : R.matchingCondition

def DualTripleIntegralRepresentationClosed (R : DualTripleIntegralRepresentation) : Prop :=
  R.leftIntegralOperator ∧ R.rightIntegralOperator ∧ R.matchingCondition

theorem dual_triple_integral_representation_closed_from_evidence
    (R : DualTripleIntegralRepresentation) (E : DualTripleIntegralRepresentationEvidence R) :
    DualTripleIntegralRepresentationClosed R := by
  exact And.intro E.leftIntegralOperatorClosed
    (And.intro E.rightIntegralOperatorClosed E.matchingConditionClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure OperatorAdmissibilityClosure where
  kernelBoundedness : Prop
  operatorCompactness : Prop
  spectralGap : Prop

structure OperatorAdmissibilityClosureEvidence (O : OperatorAdmissibilityClosure) where
  kernelBoundednessClosed : O.kernelBoundedness
  operatorCompactnessClosed : O.operatorCompactness
  spectralGapClosed : O.spectralGap

def OperatorAdmissibilityClosureClosed (O : OperatorAdmissibilityClosure) : Prop :=
  O.kernelBoundedness ∧ O.operatorCompactness ∧ O.spectralGap

theorem operator_admissibility_closure_closed_from_evidence
    (O : OperatorAdmissibilityClosure) (E : OperatorAdmissibilityClosureEvidence O) :
    OperatorAdmissibilityClosureClosed O := by
  exact And.intro E.kernelBoundednessClosed
    (And.intro E.operatorCompactnessClosed E.spectralGapClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
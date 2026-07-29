import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure DualTripleIntegralEndpoint where
  closedFormSolution : Prop
  seriesConvergence : Prop
  boundaryConsistency : Prop

structure DualTripleIntegralEndpointEvidence (E : DualTripleIntegralEndpoint) where
  closedFormSolutionClosed : E.closedFormSolution
  seriesConvergenceClosed : E.seriesConvergence
  boundaryConsistencyClosed : E.boundaryConsistency

def DualTripleIntegralEndpointClosed (E : DualTripleIntegralEndpoint) : Prop :=
  E.closedFormSolution ∧ E.seriesConvergence ∧ E.boundaryConsistency

theorem dual_triple_integral_endpoint_closed_from_evidence
    (E : DualTripleIntegralEndpoint) (Ev : DualTripleIntegralEndpointEvidence E) :
    DualTripleIntegralEndpointClosed E := by
  exact And.intro Ev.closedFormSolutionClosed
    (And.intro Ev.seriesConvergenceClosed Ev.boundaryConsistencyClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
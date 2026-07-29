import DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

def ConstrainedDualTripleIntegralSeriesEquationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dual_triple_integral_series_equations_endgame (A : AdmissibleClass) :
    ConstrainedDualTripleIntegralSeriesEquationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure DualTripleIntegralSeriesPackage (α : Type u) where
  integrand : α → ℝ
  kernelOne : α → ℝ
  kernelTwo : α → ℝ
  seriesCoeffs : ℕ → ℝ
  integralDomain : Set α
  equationOne : Prop
  equationTwo : Prop
  solutionFamily : Prop

structure DualTripleIntegralSeriesEvidence {α : Type u} (pkg : DualTripleIntegralSeriesPackage α) where
  equationOneClosed : pkg.equationOne
  equationTwoClosed : pkg.equationTwo
  solutionFamilyClosed : pkg.solutionFamily

def DualTripleIntegralSeriesClosed {α : Type u} (pkg : DualTripleIntegralSeriesPackage α) : Prop :=
  pkg.equationOne ∧ pkg.equationTwo ∧ pkg.solutionFamily

theorem dual_triple_integral_series_closed_from_evidence {α : Type u} (pkg : DualTripleIntegralSeriesPackage α) (E : DualTripleIntegralSeriesEvidence pkg) : DualTripleIntegralSeriesClosed pkg := by
  exact And.intro E.equationOneClosed (And.intro E.equationTwoClosed E.solutionFamilyClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
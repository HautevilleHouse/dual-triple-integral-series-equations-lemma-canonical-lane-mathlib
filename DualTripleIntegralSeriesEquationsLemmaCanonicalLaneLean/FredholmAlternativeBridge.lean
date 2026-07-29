import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure FredholmAlternativePackage (α : Type u) where
  operator : (α → ℝ) → (α → ℝ)
  kernel : α → α → ℝ
  homogeneousEquation : Prop
  inhomogeneousEquation : Prop
  fredholmAlternative : Prop

structure FredholmAlternativeEvidence {α : Type u} (pkg : FredholmAlternativePackage α) where
  homogeneousEquationClosed : pkg.homogeneousEquation
  inhomogeneousEquationClosed : pkg.inhomogeneousEquation
  fredholmAlternativeClosed : pkg.fredholmAlternative

def FredholmAlternativeClosed {α : Type u} (pkg : FredholmAlternativePackage α) : Prop :=
  pkg.homogeneousEquation ∧ pkg.inhomogeneousEquation ∧ pkg.fredholmAlternative

theorem fredholm_alternative_closed_from_evidence {α : Type u} (pkg : FredholmAlternativePackage α) (E : FredholmAlternativeEvidence pkg) : FredholmAlternativeClosed pkg := by
  exact And.intro E.homogeneousEquationClosed (And.intro E.inhomogeneousEquationClosed E.fredholmAlternativeClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
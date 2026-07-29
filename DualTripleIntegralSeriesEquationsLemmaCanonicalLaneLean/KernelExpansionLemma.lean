import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure KernelExpansionPackage (α : Type u) where
  kernel : α → α → ℝ
  eigenfunctions : ℕ → (α → ℝ)
  eigenvalues : ℕ → ℝ
  expansion : Prop
  completeness : Prop

structure KernelExpansionEvidence {α : Type u} (pkg : KernelExpansionPackage α) where
  expansionClosed : pkg.expansion
  completenessClosed : pkg.completeness

def KernelExpansionClosed {α : Type u} (pkg : KernelExpansionPackage α) : Prop :=
  pkg.expansion ∧ pkg.completeness

theorem kernel_expansion_closed_from_evidence {α : Type u} (pkg : KernelExpansionPackage α) (E : KernelExpansionEvidence pkg) : KernelExpansionClosed pkg := by
  exact And.intro E.expansionClosed E.completenessClosed

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
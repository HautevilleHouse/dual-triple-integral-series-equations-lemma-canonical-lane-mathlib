namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure SeriesConvergencePackage where
  domain : Type u
  firstSeries : ℕ → ℝ
  secondSeries : ℕ → ℝ
  thirdSeries : ℕ → ℝ
  absoluteConvergence : Prop
  uniformConvergence : Prop
  existenceOfLimits : Prop

structure SeriesConvergenceEvidence (C : SeriesConvergencePackage) where
  absoluteConvergenceClosed : C.absoluteConvergence
  uniformConvergenceClosed : C.uniformConvergence
  existenceOfLimitsClosed : C.existenceOfLimits

def SeriesConvergenceClosed (C : SeriesConvergencePackage) : Prop :=
  C.absoluteConvergence ∧ C.uniformConvergence ∧ C.existenceOfLimits

theorem series_convergence_closed_from_evidence
    (C : SeriesConvergencePackage) (E : SeriesConvergenceEvidence C) :
    SeriesConvergenceClosed C := by
  exact And.intro E.absoluteConvergenceClosed
    (And.intro E.uniformConvergenceClosed E.existenceOfLimitsClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure SeriesEquationTransformation where
  fourierTransformApplied : Prop
  eigenfunctionExpansion : Prop
  kernelResolution : Prop

structure SeriesEquationTransformationEvidence (T : SeriesEquationTransformation) where
  fourierTransformAppliedClosed : T.fourierTransformApplied
  eigenfunctionExpansionClosed : T.eigenfunctionExpansion
  kernelResolutionClosed : T.kernelResolution

def SeriesEquationTransformationClosed (T : SeriesEquationTransformation) : Prop :=
  T.fourierTransformApplied ∧ T.eigenfunctionExpansion ∧ T.kernelResolution

theorem series_equation_transformation_closed_from_evidence
    (T : SeriesEquationTransformation) (E : SeriesEquationTransformationEvidence T) :
    SeriesEquationTransformationClosed T := by
  exact And.intro E.fourierTransformAppliedClosed
    (And.intro E.eigenfunctionExpansionClosed E.kernelResolutionClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
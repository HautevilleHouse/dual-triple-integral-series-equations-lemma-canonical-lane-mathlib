import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure DualSeriesTransformationPackage where
  originalSeries : Type u
  dualSeries : Type v
  transformationOperator : Type w
  convergenceMatch : Prop
  inversionFormula : Prop
  kernelTranslation : Prop

structure DualSeriesTransformationEvidence (D : DualSeriesTransformationPackage) where
  convergenceMatchClosed : D.convergenceMatch
  inversionFormulaClosed : D.inversionFormula
  kernelTranslationClosed : D.kernelTranslation

def DualSeriesTransformationClosed (D : DualSeriesTransformationPackage) : Prop :=
  D.convergenceMatch ∧ D.inversionFormula ∧ D.kernelTranslation

theorem dual_series_transformation_closed_from_evidence
    (D : DualSeriesTransformationPackage)
    (E : DualSeriesTransformationEvidence D) :
    DualSeriesTransformationClosed D := by
  exact And.intro E.convergenceMatchClosed
    (And.intro E.inversionFormulaClosed E.kernelTranslationClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse

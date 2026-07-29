import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure KernelRepresentationPackage where
  kernelFunction : Type u
  integralTransform : kernelFunction → ℝ → ℝ
  singularityType : Prop
  asymptoticExpansion : Prop
  kernelRegularity : Prop

structure KernelRepresentationEvidence (K : KernelRepresentationPackage) where
  kernelFunctionDefined : K.kernelFunction
  integralTransformDefined : K.integralTransform
  singularityTypeClosed : K.singularityType
  asymptoticExpansionClosed : K.asymptoticExpansion
  kernelRegularityClosed : K.kernelRegularity

def KernelRepresentationClosed (K : KernelRepresentationPackage) : Prop :=
  K.singularityType ∧ K.asymptoticExpansion ∧ K.kernelRegularity

theorem kernel_representation_closed_from_evidence (K : KernelRepresentationPackage) (E : KernelRepresentationEvidence K) : KernelRepresentationClosed K :=
  And.intro E.singularityTypeClosed (And.intro E.asymptoticExpansionClosed E.kernelRegularityClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
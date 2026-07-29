import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure KernelRegularityPackage where
  integralKernel : Type u
  kernelSmoothness : Prop
  integrabilityCondition : Prop
  growthControl : Prop
  singularityIsolation : Prop

structure KernelRegularityEvidence (K : KernelRegularityPackage) where
  kernelSmoothnessClosed : K.kernelSmoothness
  integrabilityConditionClosed : K.integrabilityCondition
  growthControlClosed : K.growthControl
  singularityIsolationClosed : K.singularityIsolation

def KernelRegularityClosed (K : KernelRegularityPackage) : Prop :=
  K.kernelSmoothness ∧ K.integrabilityCondition ∧
  K.growthControl ∧ K.singularityIsolation

theorem kernel_regularity_closed_from_evidence
    (K : KernelRegularityPackage) (E : KernelRegularityEvidence K) :
    KernelRegularityClosed K := by
  exact And.intro E.kernelSmoothnessClosed
    (And.intro E.integrabilityConditionClosed
      (And.intro E.growthControlClosed E.singularityIsolationClosed))

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse

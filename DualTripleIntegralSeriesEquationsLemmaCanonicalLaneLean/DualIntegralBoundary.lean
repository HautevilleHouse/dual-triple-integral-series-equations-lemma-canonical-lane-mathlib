import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure DualIntegralBoundaryPackage where
  boundaryValue : Type u → ℝ
  jumpCondition : Prop
  compatibilityConstraint : Prop
  integralRepresentation : Prop
  boundaryRegularity : Prop

structure DualIntegralBoundaryEvidence (B : DualIntegralBoundaryPackage) where
  boundaryValueDefined : B.boundaryValue
  jumpConditionClosed : B.jumpCondition
  compatibilityConstraintClosed : B.compatibilityConstraint
  integralRepresentationClosed : B.integralRepresentation
  boundaryRegularityClosed : B.boundaryRegularity

def DualIntegralBoundaryClosed (B : DualIntegralBoundaryPackage) : Prop :=
  B.jumpCondition ∧ B.compatibilityConstraint ∧ B.integralRepresentation ∧ B.boundaryRegularity

theorem dual_integral_boundary_closed_from_evidence (B : DualIntegralBoundaryPackage) (E : DualIntegralBoundaryEvidence B) : DualIntegralBoundaryClosed B :=
  And.intro E.jumpConditionClosed (And.intro E.compatibilityConstraintClosed (And.intro E.integralRepresentationClosed E.boundaryRegularityClosed))

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure IntegralEquationDomain where
  independentVariableType : Type u
  dependentVariableType : Type v
  seriesParameter : Type w
  equationFamily : independentVariableType -> dependentVariableType -> Prop
  tripleIntegralRepresentation : Prop
  dualSeriesExpansion : Prop
  domainSpecification : Prop

structure IntegralEquationDomainEvidence (D : IntegralEquationDomain) where
  tripleIntegralRepresentationClosed : D.tripleIntegralRepresentation
  dualSeriesExpansionClosed : D.dualSeriesExpansion
  domainSpecificationClosed : D.domainSpecification

def IntegralEquationDomainClosed (D : IntegralEquationDomain) : Prop :=
  D.tripleIntegralRepresentation ∧ D.dualSeriesExpansion ∧ D.domainSpecification

theorem integral_equation_domain_closed_from_evidence
    (D : IntegralEquationDomain) (E : IntegralEquationDomainEvidence D) :
    IntegralEquationDomainClosed D := by
  exact And.intro E.tripleIntegralRepresentationClosed
    (And.intro E.dualSeriesExpansionClosed E.domainSpecificationClosed)

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse

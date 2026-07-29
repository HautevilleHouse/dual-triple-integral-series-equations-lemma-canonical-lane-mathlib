import canonicalLaneMathlib.AdmissibleClass
import DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean.KernelRepresentation

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure AnalyticContinuationBridgePackage where
  continuationDomain : Type u
  analyticContinuationExists : Prop
  uniquenessTheorem : Prop
  endpointIdentification : Prop
  bridgeToAdmissible : Prop

structure AnalyticContinuationBridgeEvidence (A : AnalyticContinuationBridgePackage) where
  continuationDomainDefined : A.continuationDomain
  analyticContinuationExistsClosed : A.analyticContinuationExists
  uniquenessTheoremClosed : A.uniquenessTheorem
  endpointIdentificationClosed : A.endpointIdentification
  bridgeToAdmissibleClosed : A.bridgeToAdmissible

def AnalyticContinuationBridgeClosed (A : AnalyticContinuationBridgePackage) : Prop :=
  A.analyticContinuationExists ∧ A.uniquenessTheorem ∧ A.endpointIdentification ∧ A.bridgeToAdmissible

theorem analytic_continuation_bridge_closed_from_evidence (A : AnalyticContinuationBridgePackage) (E : AnalyticContinuationBridgeEvidence A) : AnalyticContinuationBridgeClosed A :=
  And.intro E.analyticContinuationExistsClosed (And.intro E.uniquenessTheoremClosed (And.intro E.endpointIdentificationClosed E.bridgeToAdmissibleClosed))

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure LemmaStatementPackage where
  domain : IntegralEquationDomain
  kernelRegularity : KernelRegularityPackage
  dualSeries : DualSeriesTransformationPackage
  tripleReduction : TripleIntegralReductionPackage
  lemmaProposition : Prop
  lemmaConclusion : Prop

structure LemmaStatementEvidence (L : LemmaStatementPackage) where
  domainClosed : IntegralEquationDomainClosed L.domain
  kernelRegularityClosed : KernelRegularityClosed L.kernelRegularity
  dualSeriesClosed : DualSeriesTransformationClosed L.dualSeries
  tripleReductionClosed : TripleIntegralReductionClosed L.tripleReduction
  lemmaPropositionClosed : L.lemmaProposition
  lemmaConclusionClosed : L.lemmaConclusion

def LemmaStatementClosed (L : LemmaStatementPackage) : Prop :=
  IntegralEquationDomainClosed L.domain ∧
  KernelRegularityClosed L.kernelRegularity ∧
  DualSeriesTransformationClosed L.dualSeries ∧
  TripleIntegralReductionClosed L.tripleReduction ∧
  L.lemmaProposition ∧ L.lemmaConclusion

theorem lemma_statement_closed_from_evidence
    (L : LemmaStatementPackage) (E : LemmaStatementEvidence L) :
    LemmaStatementClosed L := by
  exact And.intro E.domainClosed
    (And.intro E.kernelRegularityClosed
      (And.intro E.dualSeriesClosed
        (And.intro E.tripleReductionClosed
          (And.intro E.lemmaPropositionClosed E.lemmaConclusionClosed))))

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse

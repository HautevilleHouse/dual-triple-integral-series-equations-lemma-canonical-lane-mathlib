namespace HautevilleHouse
namespace DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean

structure DualTripleSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DualTripleAdmittedObject where
  space : DualTripleSpace
  integralSystemDefined : Prop
  seriesConvergent : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionConstructed : Prop
  conclusion : solutionConstructed

structure DualTripleEndgameState where
  object : DualTripleAdmittedObject

def DualTripleWitnessClosed (O : DualTripleAdmittedObject) : Prop :=
  O.solutionConstructed

end DualTripleIntegralSeriesEquationsLemmaCanonicalLaneLean
end HautevilleHouse
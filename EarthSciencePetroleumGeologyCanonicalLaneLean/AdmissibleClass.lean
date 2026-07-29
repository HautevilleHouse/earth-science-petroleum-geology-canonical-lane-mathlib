import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure AdmissibleClass where
  object : PetroleumAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PetroleumWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
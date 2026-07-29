import canonicalLaneMathlib.AdmissibleClass
import EarthSciencePetroleumGeologyCanonicalLaneLean.BasinModeling
import EarthSciencePetroleumGeologyCanonicalLaneLean.ReservoirCharacterization
import EarthSciencePetroleumGeologyCanonicalLaneLean.SeismicInterpretation

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let B : BasinModelingPackage := A.object.basinModeling
  BasinModelingClosed B

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    let B : BasinModelingPackage := A.object.basinModeling
    let E : BasinModelingEvidence B := A.object.basinModelingEvidence
    exact basin_modeling_closed_from_evidence B E

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedEarthSciencePetroleumGeologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_earth_science_petroleum_geology_endgame (A : AdmissibleClass) : ConstrainedEarthSciencePetroleumGeologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse

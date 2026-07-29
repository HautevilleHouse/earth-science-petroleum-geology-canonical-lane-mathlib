import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeology

structure PetroleumSystemModelingPackage where
  basinModeling : Prop
  petroleumGeneration : Prop
  expulsionEfficiency : Prop
  accumulationHistory : Prop

structure PetroleumSystemModelingEvidence (P : PetroleumSystemModelingPackage) where
  basinModelingClosed : P.basinModeling
  petroleumGenerationClosed : P.petroleumGeneration
  expulsionEfficiencyClosed : P.expulsionEfficiency
  accumulationHistoryClosed : P.accumulationHistory

def PetroleumSystemModelingClosed (P : PetroleumSystemModelingPackage) : Prop :=
  P.basinModeling ∧ P.petroleumGeneration ∧ P.expulsionEfficiency ∧ P.accumulationHistory

theorem petroleum_system_modeling_closed_from_evidence (P : PetroleumSystemModelingPackage) (E : PetroleumSystemModelingEvidence P) : PetroleumSystemModelingClosed P := by
  exact And.intro E.basinModelingClosed (And.intro E.petroleumGenerationClosed (And.intro E.expulsionEfficiencyClosed E.accumulationHistoryClosed))

end EarthSciencePetroleumGeology
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure StratigraphicPackage where
  basinModel : Type u
  stratigraphicColumn : Type v
  depositionalSequences : Prop
  unconformitiesIdentified : Prop
  lithostratigraphicUnits : Prop

structure StratigraphicEvidence (S : StratigraphicPackage) where
  depositionalSequencesClosed : S.depositionalSequences
  unconformitiesIdentifiedClosed : S.unconformitiesIdentified
  lithostratigraphicUnitsClosed : S.lithostratigraphicUnits

def StratigraphicClosed (S : StratigraphicPackage) : Prop :=
  S.depositionalSequences ∧ S.unconformitiesIdentified ∧ S.lithostratigraphicUnits

theorem stratigraphic_closed_from_evidence (S : StratigraphicPackage) (E : StratigraphicEvidence S) : StratigraphicClosed S := by
  exact And.intro E.depositionalSequencesClosed (And.intro E.unconformitiesIdentifiedClosed E.lithostratigraphicUnitsClosed)

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
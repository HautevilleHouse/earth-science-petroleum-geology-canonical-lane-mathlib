import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeology

structure BasinFormationPackage where
  tectonicSetting : Prop
  sedimentaryFill : Prop
  thermalHistory : Prop
  subsidenceMechanism : Prop

structure BasinFormationEvidence (B : BasinFormationPackage) where
  tectonicSettingClosed : B.tectonicSetting
  sedimentaryFillClosed : B.sedimentaryFill
  thermalHistoryClosed : B.thermalHistory
  subsidenceMechanismClosed : B.subsidenceMechanism

def BasinFormationClosed (B : BasinFormationPackage) : Prop :=
  B.tectonicSetting ∧ B.sedimentaryFill ∧ B.thermalHistory ∧ B.subsidenceMechanism

theorem basin_formation_closed_from_evidence (B : BasinFormationPackage) (E : BasinFormationEvidence B) : BasinFormationClosed B := by
  exact And.intro E.tectonicSettingClosed (And.intro E.sedimentaryFillClosed (And.intro E.thermalHistoryClosed E.subsidenceMechanismClosed))

end EarthSciencePetroleumGeology
end HautevilleHouse
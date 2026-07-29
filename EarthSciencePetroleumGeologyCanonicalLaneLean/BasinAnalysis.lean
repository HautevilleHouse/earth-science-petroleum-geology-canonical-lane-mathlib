import EarthSciencePetroleumGeologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure BasinAnalysisPackage where
  basinFormationMechanism : Prop
  tectonicSetting : Prop
  sedimentAccumulation : Prop
  thermalHistory : Prop
  burialHistory : Prop

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.basinFormationMechanism ∧ B.tectonicSetting ∧ B.sedimentAccumulation ∧
  B.thermalHistory ∧ B.burialHistory

theorem basin_analysis_closed (B : BasinAnalysisPackage) (evidence : BasinAnalysisEvidence B) :
    BasinAnalysisClosed B := by
  exact And.intro evidence.basinFormationMechanismClosed
    (And.intro evidence.tectonicSettingClosed
      (And.intro evidence.sedimentAccumulationClosed
        (And.intro evidence.thermalHistoryClosed evidence.burialHistoryClosed)))

structure BasinAnalysisEvidence (B : BasinAnalysisPackage) where
  basinFormationMechanismClosed : B.basinFormationMechanism
  tectonicSettingClosed : B.tectonicSetting
  sedimentAccumulationClosed : B.sedimentAccumulation
  thermalHistoryClosed : B.thermalHistory
  burialHistoryClosed : B.burialHistory

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
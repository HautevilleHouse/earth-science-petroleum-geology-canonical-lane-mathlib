import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure SealRockAnalysisPackage where
  lithologyType : Prop
  capillaryEntryPressure : Prop
  fracturePressure : Prop
  ductility : Prop
  lateralContinuity : Prop

structure SealRockAnalysisEvidence (S : SealRockAnalysisPackage) where
  lithologyTypeClosed : S.lithologyType
  capillaryEntryPressureClosed : S.capillaryEntryPressure
  fracturePressureClosed : S.fracturePressure
  ductilityClosed : S.ductility
  lateralContinuityClosed : S.lateralContinuity

def SealRockAnalysisClosed (S : SealRockAnalysisPackage) : Prop :=
  S.lithologyType ∧ S.capillaryEntryPressure ∧ S.fracturePressure ∧ S.ductility ∧ S.lateralContinuity

theorem seal_rock_analysis_closed_from_evidence (S : SealRockAnalysisPackage) (E : SealRockAnalysisEvidence S) :
    SealRockAnalysisClosed S := by
  exact And.intro E.lithologyTypeClosed
    (And.intro E.capillaryEntryPressureClosed
      (And.intro E.fracturePressureClosed
        (And.intro E.ductilityClosed E.lateralContinuityClosed)))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
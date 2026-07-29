import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure BasinFormationPackage where
  tectonicSubsidence : Prop
  sedimentLoading : Prop
  thermalSubsidence : Prop
  basinGeometry : Prop
  burialHistory : Prop

structure BasinFormationEvidence (B : BasinFormationPackage) where
  tectonicSubsidenceClosed : B.tectonicSubsidence
  sedimentLoadingClosed : B.sedimentLoading
  thermalSubsidenceClosed : B.thermalSubsidence
  basinGeometryClosed : B.basinGeometry
  burialHistoryClosed : B.burialHistory

def BasinFormationClosed (B : BasinFormationPackage) : Prop :=
  B.tectonicSubsidence ∧ B.sedimentLoading ∧ B.thermalSubsidence ∧ B.basinGeometry ∧ B.burialHistory

theorem basin_formation_closed_from_evidence (B : BasinFormationPackage) (E : BasinFormationEvidence B) :
    BasinFormationClosed B := by
  exact And.intro E.tectonicSubsidenceClosed
    (And.intro E.sedimentLoadingClosed
      (And.intro E.thermalSubsidenceClosed
        (And.intro E.basinGeometryClosed E.burialHistoryClosed)))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
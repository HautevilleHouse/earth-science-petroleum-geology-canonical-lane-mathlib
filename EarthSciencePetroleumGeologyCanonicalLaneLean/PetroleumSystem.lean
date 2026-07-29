import canonicalLaneMathlib.MigrationAccumulation

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure PetroleumSystemPackage where
  sourceRock : SourceRockPackage
  reservoir : ReservoirCharacterizationPackage
  trapSeal : TrapSealPackage
  migration : MigrationAccumulationPackage
  systemIntegration : Prop

structure PetroleumSystemEvidence (P : PetroleumSystemPackage) where
  sourceRockClosed : SourceRockClosed P.sourceRock
  reservoirClosed : ReservoirCharacterizationClosed P.reservoir
  trapSealClosed : TrapSealClosed P.trapSeal
  migrationClosed : MigrationAccumulationClosed P.migration
  systemIntegrationClosed : P.systemIntegration

def PetroleumSystemClosed (P : PetroleumSystemPackage) : Prop :=
  SourceRockClosed P.sourceRock ∧ ReservoirCharacterizationClosed P.reservoir ∧
  TrapSealClosed P.trapSeal ∧ MigrationAccumulationClosed P.migration ∧
  P.systemIntegration

theorem petroleum_system_closed_from_evidence (P : PetroleumSystemPackage)
    (E : PetroleumSystemEvidence P) : PetroleumSystemClosed P := by
  exact And.intro E.sourceRockClosed
    (And.intro E.reservoirClosed
      (And.intro E.trapSealClosed
        (And.intro E.migrationClosed E.systemIntegrationClosed)))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
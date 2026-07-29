import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure PetroleumMigrationPackage where
  primaryMigration : Prop
  secondaryMigration : Prop
  buoyancyDriven : Prop
  capillaryPressureGradient : Prop
  migrationPathway : Prop

structure PetroleumMigrationEvidence (P : PetroleumMigrationPackage) where
  primaryMigrationClosed : P.primaryMigration
  secondaryMigrationClosed : P.secondaryMigration
  buoyancyDrivenClosed : P.buoyancyDriven
  capillaryPressureGradientClosed : P.capillaryPressureGradient
  migrationPathwayClosed : P.migrationPathway

def PetroleumMigrationClosed (P : PetroleumMigrationPackage) : Prop :=
  P.primaryMigration ∧ P.secondaryMigration ∧ P.buoyancyDriven ∧ P.capillaryPressureGradient ∧ P.migrationPathway

theorem petroleum_migration_closed_from_evidence (P : PetroleumMigrationPackage) (E : PetroleumMigrationEvidence P) :
    PetroleumMigrationClosed P := by
  exact And.intro E.primaryMigrationClosed
    (And.intro E.secondaryMigrationClosed
      (And.intro E.buoyancyDrivenClosed
        (And.intro E.capillaryPressureGradientClosed E.migrationPathwayClosed)))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
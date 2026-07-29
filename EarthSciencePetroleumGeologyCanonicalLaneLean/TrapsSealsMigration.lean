import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeology

structure TrapsSealsMigrationPackage where
  structuralTraps : Prop
  stratigraphicTraps : Prop
  sealIntegrity : Prop
  migrationPathways : Prop

structure TrapsSealsMigrationEvidence (T : TrapsSealsMigrationPackage) where
  structuralTrapsClosed : T.structuralTraps
  stratigraphicTrapsClosed : T.stratigraphicTraps
  sealIntegrityClosed : T.sealIntegrity
  migrationPathwaysClosed : T.migrationPathways

def TrapsSealsMigrationClosed (T : TrapsSealsMigrationPackage) : Prop :=
  T.structuralTraps ∧ T.stratigraphicTraps ∧ T.sealIntegrity ∧ T.migrationPathways

theorem traps_seals_migration_closed_from_evidence (T : TrapsSealsMigrationPackage) (E : TrapsSealsMigrationEvidence T) : TrapsSealsMigrationClosed T := by
  exact And.intro E.structuralTrapsClosed (And.intro E.stratigraphicTrapsClosed (And.intro E.sealIntegrityClosed E.migrationPathwaysClosed))

end EarthSciencePetroleumGeology
end HautevilleHouse
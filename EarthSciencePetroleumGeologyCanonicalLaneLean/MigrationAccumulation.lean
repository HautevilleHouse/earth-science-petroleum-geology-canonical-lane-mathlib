import canonicalLaneMathlib.TrapSealPackage

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure MigrationAccumulationPackage where
  primaryMigration : Prop
  secondaryMigration : Prop
  accumulationEfficiency : Prop
  timingMatch : Prop

structure MigrationAccumulationEvidence (M : MigrationAccumulationPackage) where
  primaryMigrationClosed : M.primaryMigration
  secondaryMigrationClosed : M.secondaryMigration
  accumulationEfficiencyClosed : M.accumulationEfficiency
  timingMatchClosed : M.timingMatch

def MigrationAccumulationClosed (M : MigrationAccumulationPackage) : Prop :=
  M.primaryMigration ∧ M.secondaryMigration ∧ M.accumulationEfficiency ∧ M.timingMatch

theorem migration_accumulation_closed_from_evidence
    (M : MigrationAccumulationPackage)
    (E : MigrationAccumulationEvidence M) :
    MigrationAccumulationClosed M := by
  exact And.intro E.primaryMigrationClosed
    (And.intro E.secondaryMigrationClosed
      (And.intro E.accumulationEfficiencyClosed E.timingMatchClosed))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
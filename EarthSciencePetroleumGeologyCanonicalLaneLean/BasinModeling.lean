import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure BasinModelingPackage where
  sedimentaryBasin : Type u
  burialHistory : Prop
  thermalEvolution : Prop
  hydrocarbonGeneration : Prop
  migrationPaths : Prop

structure BasinModelingEvidence (B : BasinModelingPackage) where
  burialHistoryClosed : B.burialHistory
  thermalEvolutionClosed : B.thermalEvolution
  hydrocarbonGenerationClosed : B.hydrocarbonGeneration
  migrationPathsClosed : B.migrationPaths

def BasinModelingClosed (B : BasinModelingPackage) : Prop :=
  B.burialHistory ∧ B.thermalEvolution ∧ B.hydrocarbonGeneration ∧ B.migrationPaths

theorem basin_modeling_closed_from_evidence (B : BasinModelingPackage) (E : BasinModelingEvidence B) : BasinModelingClosed B :=
  And.intro E.burialHistoryClosed (And.intro E.thermalEvolutionClosed (And.intro E.hydrocarbonGenerationClosed E.migrationPathsClosed))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse

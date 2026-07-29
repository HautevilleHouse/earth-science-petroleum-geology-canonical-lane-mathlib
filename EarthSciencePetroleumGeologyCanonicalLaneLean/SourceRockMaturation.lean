import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure SourceRockMaturationPackage where
  organicMatterContent : Prop
  thermalMaturity : Prop
  kerogenType : Prop
  generationPotential : Prop
  expulsionEfficiency : Prop

structure SourceRockMaturationEvidence (S : SourceRockMaturationPackage) where
  organicMatterContentClosed : S.organicMatterContent
  thermalMaturityClosed : S.thermalMaturity
  kerogenTypeClosed : S.kerogenType
  generationPotentialClosed : S.generationPotential
  expulsionEfficiencyClosed : S.expulsionEfficiency

def SourceRockMaturationClosed (S : SourceRockMaturationPackage) : Prop :=
  S.organicMatterContent ∧ S.thermalMaturity ∧ S.kerogenType ∧ S.generationPotential ∧ S.expulsionEfficiency

theorem source_rock_maturation_closed_from_evidence (S : SourceRockMaturationPackage) (E : SourceRockMaturationEvidence S) :
    SourceRockMaturationClosed S := by
  exact And.intro E.organicMatterContentClosed
    (And.intro E.thermalMaturityClosed
      (And.intro E.kerogenTypeClosed
        (And.intro E.generationPotentialClosed E.expulsionEfficiencyClosed)))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
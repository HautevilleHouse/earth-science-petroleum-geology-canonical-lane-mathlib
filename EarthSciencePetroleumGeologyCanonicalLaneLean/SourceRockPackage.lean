import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure SourceRockPackage where
  organicRichness : Prop
  thermalMaturity : Prop
  kerogenType : Prop
  hydrocarbonPotential : Prop

structure SourceRockEvidence (S : SourceRockPackage) where
  organicRichnessClosed : S.organicRichness
  thermalMaturityClosed : S.thermalMaturity
  kerogenTypeClosed : S.kerogenType
  hydrocarbonPotentialClosed : S.hydrocarbonPotential

def SourceRockClosed (S : SourceRockPackage) : Prop :=
  S.organicRichness ∧ S.thermalMaturity ∧ S.kerogenType ∧ S.hydrocarbonPotential

theorem source_rock_closed_from_evidence (S : SourceRockPackage)
    (E : SourceRockEvidence S) : SourceRockClosed S := by
  exact And.intro E.organicRichnessClosed
    (And.intro E.thermalMaturityClosed
      (And.intro E.kerogenTypeClosed E.hydrocarbonPotentialClosed))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
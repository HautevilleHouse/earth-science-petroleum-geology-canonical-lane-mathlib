import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PetroleumWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
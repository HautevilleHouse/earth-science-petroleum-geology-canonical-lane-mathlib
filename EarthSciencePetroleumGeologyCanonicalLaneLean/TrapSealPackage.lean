import canonicalLaneMathlib.ReservoirCharacterization

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

structure TrapSealPackage where
  structuralTrap : Prop
  stratigraphicTrap : Prop
  sealIntegrity : Prop
  faultSeal : Prop

structure TrapSealEvidence (T : TrapSealPackage) where
  structuralTrapClosed : T.structuralTrap
  stratigraphicTrapClosed : T.stratigraphicTrap
  sealIntegrityClosed : T.sealIntegrity
  faultSealClosed : T.faultSeal

def TrapSealClosed (T : TrapSealPackage) : Prop :=
  T.structuralTrap ∧ T.stratigraphicTrap ∧ T.sealIntegrity ∧ T.faultSeal

theorem trap_seal_closed_from_evidence (T : TrapSealPackage)
    (E : TrapSealEvidence T) : TrapSealClosed T := by
  exact And.intro E.structuralTrapClosed
    (And.intro E.stratigraphicTrapClosed
      (And.intro E.sealIntegrityClosed E.faultSealClosed))

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
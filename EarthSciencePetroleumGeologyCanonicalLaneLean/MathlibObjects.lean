import EarthSciencePetroleumGeologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthSciencePetroleumGeologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PetroleumSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PetroleumAdmittedObject where
  space : PetroleumSpace
  sedimentaryBasin : Prop
  hydrocarbonReservoir : Prop
  sourceRock : Prop
  reservoirRock : Prop
  sealRock : Prop
  trapStructure : Prop
  migrationPath : Prop
  petroleumSystemActive : Prop
  conclusion : petroleumSystemActive

structure PetroleumEndgameState where
  object : PetroleumAdmittedObject

def PetroleumWitnessClosed (O : PetroleumAdmittedObject) : Prop :=
  O.petroleumSystemActive

end EarthSciencePetroleumGeologyCanonicalLaneLean
end HautevilleHouse
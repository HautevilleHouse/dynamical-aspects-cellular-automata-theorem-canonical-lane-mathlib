import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellularAutomataSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellularAutomataAdmittedObject where
  space : CellularAutomataSpace
  oneDimension : Prop
  finiteAlphabet : Prop
  shiftActionContinuous : Prop
  shiftInvariantMeasures : Prop
  conclusion : shiftInvariantMeasures

structure CellularAutomataEndgameState where
  object : CellularAutomataAdmittedObject

def CellularAutomataWitnessClosed (O : CellularAutomataAdmittedObject) : Prop :=
  O.shiftInvariantMeasures

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
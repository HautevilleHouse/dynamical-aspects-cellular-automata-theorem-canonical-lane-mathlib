import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure CellularAutomatonDynamicsPackage where
  space : Type u
  configuration : Type v
  localRule : Type w
  evolutionOperator : Type x
  shiftInvariant : Prop
  productTopology : Prop
  continuousEvolution : Prop

structure CellularAutomatonDynamicsEvidence (C : CellularAutomatonDynamicsPackage) where
  shiftInvariantClosed : C.shiftInvariant
  productTopologyClosed : C.productTopology
  continuousEvolutionClosed : C.continuousEvolution

def CellularAutomatonDynamicsClosed (C : CellularAutomatonDynamicsPackage) : Prop :=
  C.shiftInvariant ∧ C.productTopology ∧ C.continuousEvolution

theorem cellular_automaton_dynamics_closed_from_evidence
    (C : CellularAutomatonDynamicsPackage) (E : CellularAutomatonDynamicsEvidence C) :
    CellularAutomatonDynamicsClosed C := by
  exact And.intro E.shiftInvariantClosed
    (And.intro E.productTopologyClosed E.continuousEvolutionClosed)

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse

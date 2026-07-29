import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure CellularAutomatonSpace where
  stateSpace : Type u
  neighborhood : Type v
  transitionRule : stateSpace -> neighborhood -> stateSpace
  dimension : Nat
  localRuleUniform : Prop
  spatialHomogeneity : Prop
  transitionRuleUniformTerm : localRuleUniform
  spatialHomogeneityTerm : spatialHomogeneity

structure CellularAutomatonSpaceEvidence (C : CellularAutomatonSpace) where
  transitionRuleUniformClosed : C.localRuleUniform
  spatialHomogeneityClosed : C.spatialHomogeneity

def CellularAutomatonSpaceClosed (C : CellularAutomatonSpace) : Prop :=
  C.localRuleUniform ∧ C.spatialHomogeneity

theorem cellular_automaton_space_closed_from_evidence
    (C : CellularAutomatonSpace) (E : CellularAutomatonSpaceEvidence C) :
    CellularAutomatonSpaceClosed C := by
  exact And.intro E.transitionRuleUniformClosed E.spatialHomogeneityClosed

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
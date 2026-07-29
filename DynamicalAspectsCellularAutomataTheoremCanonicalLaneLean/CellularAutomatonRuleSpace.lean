import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonConfigSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure CellularAutomatonRuleSpace {C : CellularAutomatonConfigSpace} where
  localRule : Nat → C.alphabet → C.alphabet
  radius : Nat
  shiftCommutes : Prop
  continuityWrtProduct : Prop
  shiftCommutesTerm : shiftCommutes
  continuityWrtProductTerm : continuityWrtProduct

structure CellularAutomatonRuleSpaceEvidence {C : CellularAutomatonConfigSpace}
    (R : CellularAutomatonRuleSpace C) where
  shiftCommutesClosed : R.shiftCommutes
  continuityWrtProductClosed : R.continuityWrtProduct

def CellularAutomatonRuleSpaceClosed {C : CellularAutomatonConfigSpace}
    (R : CellularAutomatonRuleSpace C) : Prop :=
  R.shiftCommutes ∧ R.continuityWrtProduct

theorem cellular_automaton_rule_space_closed_from_evidence
    {C : CellularAutomatonConfigSpace} (R : CellularAutomatonRuleSpace C)
    (E : CellularAutomatonRuleSpaceEvidence R) : CellularAutomatonRuleSpaceClosed R := by
  exact And.intro E.shiftCommutesClosed E.continuityWrtProductClosed

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
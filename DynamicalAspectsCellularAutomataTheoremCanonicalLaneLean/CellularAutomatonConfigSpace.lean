import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure CellularAutomatonConfigSpace where
  alphabet : Type u
  dimension : Nat
  shiftSpace : Prop
  productTopologyOpens : Prop
  compactnessGuarantee : Prop
  shiftContinuity : Prop
  shiftSpaceTerm : shiftSpace
  productTopologyOpensTerm : productTopologyOpens
  compactnessGuaranteeTerm : compactnessGuarantee
  shiftContinuityTerm : shiftContinuity

structure CellularAutomatonConfigSpaceEvidence (C : CellularAutomatonConfigSpace) where
  shiftSpaceClosed : C.shiftSpace
  productTopologyOpensClosed : C.productTopologyOpens
  compactnessGuaranteeClosed : C.compactnessGuarantee
  shiftContinuityClosed : C.shiftContinuity

def CellularAutomatonConfigSpaceClosed (C : CellularAutomatonConfigSpace) : Prop :=
  C.shiftSpace ∧ C.productTopologyOpens ∧ C.compactnessGuarantee ∧ C.shiftContinuity

theorem cellular_automaton_config_space_closed_from_evidence
    (C : CellularAutomatonConfigSpace) (E : CellularAutomatonConfigSpaceEvidence C) :
    CellularAutomatonConfigSpaceClosed C := by
  exact And.intro E.shiftSpaceClosed
    (And.intro E.productTopologyOpensClosed
      (And.intro E.compactnessGuaranteeClosed E.shiftContinuityClosed))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure LimitSetShadowingPackage (C : CellularAutomatonSpace) where
  attractingSet : Type u
  repellingSet : Type v
  shadowingProperty : Prop
  limitSetIsChainRecurrent : Prop
  asymptoticPseudoOrbitTracing : Prop

structure LimitSetShadowingEvidence {C : CellularAutomatonSpace}
    (L : LimitSetShadowingPackage C) where
  shadowingPropertyClosed : L.shadowingProperty
  limitSetIsChainRecurrentClosed : L.limitSetIsChainRecurrent
  asymptoticPseudoOrbitTracingClosed : L.asymptoticPseudoOrbitTracing

def LimitSetShadowingClosed {C : CellularAutomatonSpace}
    (L : LimitSetShadowingPackage C) : Prop :=
  L.shadowingProperty ∧ L.limitSetIsChainRecurrent ∧
  L.asymptoticPseudoOrbitTracing

theorem limit_set_shadowing_closed_from_evidence
    {C : CellularAutomatonSpace}
    (L : LimitSetShadowingPackage C)
    (Ev : LimitSetShadowingEvidence L) :
    LimitSetShadowingClosed L := by
  exact And.intro Ev.shadowingPropertyClosed
    (And.intro Ev.limitSetIsChainRecurrentClosed
      Ev.asymptoticPseudoOrbitTracingClosed)

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
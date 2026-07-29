import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure ShadowingPropertyPackage {C : CellularAutomatonDynamicsPackage}
    (CD : CellularAutomatonDynamicsEvidence C) where
  shadowing : Prop
  limitShadowing : Prop
  shadowingImpliesChainRecurrence : Prop
  limitShadowingClosed : Prop

def ShadowingClosed {C : CellularAutomatonDynamicsPackage}
    {CD : CellularAutomatonDynamicsEvidence C} (S : ShadowingPropertyPackage CD) : Prop :=
  S.shadowing ∧ S.limitShadowing ∧ S.shadowingImpliesChainRecurrence ∧ S.limitShadowingClosed

theorem shadowing_closed_from_evidence {C : CellularAutomatonDynamicsPackage}
    {CD : CellularAutomatonDynamicsEvidence C} (S : ShadowingPropertyPackage CD) :
    ShadowingClosed S := by
  exact And.intro S.shadowing (And.intro S.limitShadowing
    (And.intro S.shadowingImpliesChainRecurrence S.limitShadowingClosed))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse

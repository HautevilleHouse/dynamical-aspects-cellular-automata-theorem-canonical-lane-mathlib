import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonRuleSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure SensitivityToInitialConditions {C : CellularAutomatonConfigSpace}
    {R : CellularAutomatonRuleSpace C} where
  lyapunovExponent : Prop
  divergenceRate : Prop
  positiveLyapunovExponent : Prop
  exponentialDivergence : Prop
  lyapunovExponentTerm : lyapunovExponent
  divergenceRateTerm : divergenceRate
  positiveLyapunovExponentTerm : positiveLyapunovExponent
  exponentialDivergenceTerm : exponentialDivergence

structure SensitivityToInitialConditionsEvidence {C : CellularAutomatonConfigSpace}
    {R : CellularAutomatonRuleSpace C} (S : SensitivityToInitialConditions R) where
  lyapunovExponentClosed : S.lyapunovExponent
  divergenceRateClosed : S.divergenceRate
  positiveLyapunovExponentClosed : S.positiveLyapunovExponent
  exponentialDivergenceClosed : S.exponentialDivergence

def SensitivityToInitialConditionsClosed {C : CellularAutomatonConfigSpace}
    {R : CellularAutomatonRuleSpace C} (S : SensitivityToInitialConditions R) : Prop :=
  S.lyapunovExponent ∧ S.divergenceRate ∧ S.positiveLyapunovExponent ∧ S.exponentialDivergence

theorem sensitivity_to_initial_conditions_closed_from_evidence
    {C : CellularAutomatonConfigSpace} {R : CellularAutomatonRuleSpace C}
    (S : SensitivityToInitialConditions R) (E : SensitivityToInitialConditionsEvidence S) :
    SensitivityToInitialConditionsClosed S := by
  exact And.intro E.lyapunovExponentClosed
    (And.intro E.divergenceRateClosed
      (And.intro E.positiveLyapunovExponentClosed E.exponentialDivergenceClosed))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
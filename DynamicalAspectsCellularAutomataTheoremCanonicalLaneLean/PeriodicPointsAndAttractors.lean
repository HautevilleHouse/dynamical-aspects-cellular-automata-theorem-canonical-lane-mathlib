import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonRuleSpace

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure PeriodicPointsAndAttractors {C : CellularAutomatonConfigSpace}
    {R : CellularAutomatonRuleSpace C} where
  periodicPointDensity : Prop
  attractorExistence : Prop
  basinOfAttraction : Prop
  periodicPointDensityTerm : periodicPointDensity
  attractorExistenceTerm : attractorExistence
  basinOfAttractionTerm : basinOfAttraction

structure PeriodicPointsAndAttractorsEvidence {C : CellularAutomatonConfigSpace}
    {R : CellularAutomatonRuleSpace C} (P : PeriodicPointsAndAttractors R) where
  periodicPointDensityClosed : P.periodicPointDensity
  attractorExistenceClosed : P.attractorExistence
  basinOfAttractionClosed : P.basinOfAttraction

def PeriodicPointsAndAttractorsClosed {C : CellularAutomatonConfigSpace}
    {R : CellularAutomatonRuleSpace C} (P : PeriodicPointsAndAttractors R) : Prop :=
  P.periodicPointDensity ∧ P.attractorExistence ∧ P.basinOfAttraction

theorem periodic_points_and_attractors_closed_from_evidence
    {C : CellularAutomatonConfigSpace} {R : CellularAutomatonRuleSpace C}
    (P : PeriodicPointsAndAttractors R) (E : PeriodicPointsAndAttractorsEvidence P) :
    PeriodicPointsAndAttractorsClosed P := by
  exact And.intro E.periodicPointDensityClosed
    (And.intro E.attractorExistenceClosed E.basinOfAttractionClosed)

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
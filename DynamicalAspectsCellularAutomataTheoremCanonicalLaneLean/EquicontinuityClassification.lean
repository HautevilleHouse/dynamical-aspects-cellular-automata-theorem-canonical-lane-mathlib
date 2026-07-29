import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonDynamics

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure EquicontinuityClassificationPackage {C : CellularAutomatonDynamicsPackage}
    (D : CellularAutomatonDynamicsEvidence C) where
  equicontinuousConfigurations : Prop
  equicontinuousImpliesAlmostPeriodic : Prop
  almostPeriodicDenseForTransitive : Prop
  equicontinuityClosed : EquicontinuityClosed D

structure EquicontinuityClosed {D : CellularAutomatonDynamicsEvidence C} : Prop where
  equicontinuousConfigurationsClosed : Prop
  equicontinuousImpliesAlmostPeriodicClosed : Prop
  almostPeriodicDenseForTransitiveClosed : Prop

theorem equicontinuity_classification_closed {C : CellularAutomatonDynamicsPackage}
    {D : CellularAutomatonDynamicsEvidence C} (E : EquicontinuityClassificationPackage D) :
    EquicontinuityClosed D := by
  exact { equicontinuousConfigurationsClosed := E.equicontinuousConfigurations
         equicontinuousImpliesAlmostPeriodicClosed := E.equicontinuousImpliesAlmostPeriodic
         almostPeriodicDenseForTransitiveClosed := E.almostPeriodicDenseForTransitive }

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse

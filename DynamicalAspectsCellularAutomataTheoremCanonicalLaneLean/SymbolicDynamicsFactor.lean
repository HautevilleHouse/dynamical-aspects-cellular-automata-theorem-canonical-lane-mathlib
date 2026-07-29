import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.CellularAutomatonSpace
import HautevilleHouse.DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean.EquicontinuityClassification

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure SymbolicDynamicsFactorPackage
    (C : CellularAutomatonSpace)
    (E : EquicontinuityClassificationPackage C) where
  shiftSpace : Type u
  factorMapContinuous : Prop
  factorMapSurjective : Prop
  shiftEquivariance : Prop
  topologicalConjugacyToShiftOnAttractor : Prop

structure SymbolicDynamicsFactorEvidence
    {C : CellularAutomatonSpace}
    {E : EquicontinuityClassificationPackage C}
    (S : SymbolicDynamicsFactorPackage C E) where
  factorMapContinuousClosed : S.factorMapContinuous
  factorMapSurjectiveClosed : S.factorMapSurjective
  shiftEquivarianceClosed : S.shiftEquivariance
  topologicalConjugacyToShiftOnAttractorClosed : S.topologicalConjugacyToShiftOnAttractor

def SymbolicDynamicsFactorClosed
    {C : CellularAutomatonSpace}
    {E : EquicontinuityClassificationPackage C}
    (S : SymbolicDynamicsFactorPackage C E) : Prop :=
  S.factorMapContinuous ∧ S.factorMapSurjective ∧
  S.shiftEquivariance ∧ S.topologicalConjugacyToShiftOnAttractor

theorem symbolic_dynamics_factor_closed_from_evidence
    {C : CellularAutomatonSpace}
    {E : EquicontinuityClassificationPackage C}
    (S : SymbolicDynamicsFactorPackage C E)
    (Ev : SymbolicDynamicsFactorEvidence S) :
    SymbolicDynamicsFactorClosed S := by
  exact And.intro Ev.factorMapContinuousClosed
    (And.intro Ev.factorMapSurjectiveClosed
      (And.intro Ev.shiftEquivarianceClosed
        Ev.topologicalConjugacyToShiftOnAttractorClosed))

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
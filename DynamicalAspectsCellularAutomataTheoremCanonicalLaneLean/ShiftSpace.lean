import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean

structure ShiftSpace where
  carrier : Type
  alphabet : Type
  alphabetFinite : Fintype alphabet
  topology : TopologicalSpace carrier
  shiftAction : carrier → carrier
  shiftContinuous : Continuous shiftAction
  shiftInvertible : Function.Bijective shiftAction

end DynamicalAspectsCellularAutomataTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Analysis.NormedSpace.Banach

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure CompactHausdorffSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  compact : IsCompact (Set.univ : Set carrier)
  hausdorff : T2Space carrier

structure CommutativeUnitalBanachAlgebra where
  carrier : Type u
  normedRing : NormedRing carrier
  normedAlgebra : NormedAlgebra ℝ carrier
  complete : CompleteSpace carrier
  commutative : ∀ x y : carrier, x * y = y * x
  unit : carrier
  unitMul : ∀ x : carrier, unit * x = x
  mulUnit : ∀ x : carrier, x * unit = x

structure ContinuousFunctionBanachAlgebra (X : CompactHausdorffSpace) where
  carrier : Type v
  normedRing : NormedRing carrier
  normedAlgebra : NormedAlgebra ℝ carrier
  complete : CompleteSpace carrier
  isCStar : Prop

structure BanachAlgebraAdmittedObject where
  algebra : CommutativeUnitalBanachAlgebra
  maxIdealSpace : CompactHausdorffSpace
  continuousFunctionAlgebra : ContinuousFunctionBanachAlgebra maxIdealSpace
  gelfandTransformIsIsometric : Prop
  gelfandTransformSurjective : Prop
  conclusion : gelfandTransformIsIsometric ∧ gelfandTransformSurjective

def BanachAlgebraWitnessClosed (O : BanachAlgebraAdmittedObject) : Prop :=
  O.conclusion

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
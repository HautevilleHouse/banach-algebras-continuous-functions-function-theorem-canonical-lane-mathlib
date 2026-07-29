import HautevilleHouse.BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.ContinuousFunctionAlgebra

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure FunctionTheoremPackage (X : CompactHausdorffSpace) (A : ContinuousFunctionAlgebra X) where
  isGelfandNaimark : Prop
  gelfandTransform : A.algebraType → ContinuousFunctionAlgebra (CompactHausdorffSpace.mk (A.algebraType) _ _ _)
  isIsometricStarAlgebra : Prop

theorem function_theorem_statement (X : CompactHausdorffSpace) (A : ContinuousFunctionAlgebra X) (P : FunctionTheoremPackage X A) : P.isGelfandNaimark :=
  P.isGelfandNaimark

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure BanachAlgebraObject where
  carrier : Type u
  norm : carrier → ℝ
  algebraStructure : Algebra ℝ carrier
  complete : Prop
  multiplicativity : Prop
  
structure GelfandNaimarkAdmittedObject (A : BanachAlgebraObject) where
  maximalIdealSpace : TopologicalSpace A.carrier
  compactHausdorff : Prop
  gelfandTransform : A.carrier → (maximalIdealSpace → ℂ)
  isometric : Prop
  conclusion : isometric

def AdmissibleClass (A : BanachAlgebraObject) : Type := GelfandNaimarkAdmittedObject A

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
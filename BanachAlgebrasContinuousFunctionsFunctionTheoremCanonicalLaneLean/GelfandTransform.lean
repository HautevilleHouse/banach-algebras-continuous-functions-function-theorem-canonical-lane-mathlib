import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.BanachAlgebraPackage
import HautevilleHouse.BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.ContinuousFunctionAlgebraPackage

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure GelfandTransformPackage {P : BanachAlgebraPackage}
    (C : ContinuousFunctionAlgebraPackage P) where
  maximalIdealSpace : TopologicalSpace (P.algebra)
  compactness : Prop
  transform : P.algebra → (maximalIdealSpace → ℂ)
  isHomomorphism : Prop
  isIsometric : Prop

structure GelfandTransformEvidence {P : BanachAlgebraPackage}
    {C : ContinuousFunctionAlgebraPackage P} (G : GelfandTransformPackage C) where
  compactnessClosed : G.compactness
  isHomomorphismClosed : G.isHomomorphism
  isIsometricClosed : G.isIsometric

def GelfandTransformClosed {P : BanachAlgebraPackage}
    {C : ContinuousFunctionAlgebraPackage P} (G : GelfandTransformPackage C) : Prop :=
  G.compactness ∧ G.isHomomorphism ∧ G.isIsometric

theorem gelfand_transform_closed_from_evidence {P : BanachAlgebraPackage}
    {C : ContinuousFunctionAlgebraPackage P} (G : GelfandTransformPackage C)
    (E : GelfandTransformEvidence G) : GelfandTransformClosed G := by
  exact And.intro E.compactnessClosed (And.intro E.isHomomorphismClosed E.isIsometricClosed)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
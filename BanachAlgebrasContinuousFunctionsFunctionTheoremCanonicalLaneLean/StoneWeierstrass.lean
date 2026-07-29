import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure StoneWeierstrassPackage (A : AdmissibleClass) where
  compactHausdorffSpace : Type u
  continuousFunctions : Type v
  subalgebra : Type w
  separatesPoints : Prop
  containsConstants : Prop
  closureEqualsAll : Prop

structure StoneWeierstrassEvidence {A : AdmissibleClass}
    (S : StoneWeierstrassPackage A) where
  separatesPointsClosed : S.separatesPoints
  containsConstantsClosed : S.containsConstants
  closureEqualsAllClosed : S.closureEqualsAll

def StoneWeierstrassClosed {A : AdmissibleClass}
    (S : StoneWeierstrassPackage A) : Prop :=
  S.separatesPoints ∧ S.containsConstants ∧ S.closureEqualsAll

theorem stone_weierstrass_closed_from_evidence
    {A : AdmissibleClass} (S : StoneWeierstrassPackage A)
    (E : StoneWeierstrassEvidence S) : StoneWeierstrassClosed S := by
  exact And.intro E.separatesPointsClosed
    (And.intro E.containsConstantsClosed E.closureEqualsAllClosed)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
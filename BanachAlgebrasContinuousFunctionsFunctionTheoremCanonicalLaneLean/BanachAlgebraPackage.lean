import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure BanachAlgebraPackage where
  algebra : Type u
  norm : algebra → ℝ
  normedRing : NormedRing algebra
  complete : CompleteSpace algebra
  commutative : Prop
  unital : Prop

structure BanachAlgebraEvidence (P : BanachAlgebraPackage) where
  completeClosed : P.complete
  commutativeClosed : P.commutative
  unitalClosed : P.unital

def BanachAlgebraClosed (P : BanachAlgebraPackage) : Prop :=
  P.complete ∧ P.commutative ∧ P.unital

theorem banach_algebra_closed_from_evidence (P : BanachAlgebraPackage)
    (E : BanachAlgebraEvidence P) : BanachAlgebraClosed P := by
  exact And.intro E.completeClosed (And.intro E.commutativeClosed E.unitalClosed)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
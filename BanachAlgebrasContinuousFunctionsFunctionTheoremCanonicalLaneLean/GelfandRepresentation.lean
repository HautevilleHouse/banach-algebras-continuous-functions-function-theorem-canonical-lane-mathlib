import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure GelfandRepresentationPackage (A : AdmissibleClass) where
  banachAlgebra : Type u
  commutative : Prop
  unital : Prop
  spectrum : Type v
  gelfandTransform : Type w
  isIsometricStarIsomorphism : Prop

structure GelfandRepresentationEvidence {A : AdmissibleClass}
    (G : GelfandRepresentationPackage A) where
  commutativeClosed : G.commutative
  unitalClosed : G.unital
  isIsometricStarIsomorphismClosed : G.isIsometricStarIsomorphism

def GelfandRepresentationClosed {A : AdmissibleClass}
    (G : GelfandRepresentationPackage A) : Prop :=
  G.commutative ∧ G.unital ∧ G.isIsometricStarIsomorphism

theorem gelfand_representation_closed_from_evidence
    {A : AdmissibleClass} (G : GelfandRepresentationPackage A)
    (E : GelfandRepresentationEvidence G) : GelfandRepresentationClosed G := by
  exact And.intro E.commutativeClosed
    (And.intro E.unitalClosed E.isIsometricStarIsomorphismClosed)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
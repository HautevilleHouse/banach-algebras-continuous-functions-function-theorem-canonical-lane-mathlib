import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure BanachAlgebraPackage where
  algebraType : Type u
  norm : algebraType → ℝ
  algebraStructure : Algebra ℝ algebraType
  complete : Prop
  multiplicative : Prop
  involution : Option (algebraType → algebraType)
  involutive : Prop

def BanachAlgebraWitnessClosed (B : BanachAlgebraPackage) : Prop :=
  B.complete ∧ B.multiplicative ∧ B.involutive

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  completeClosed : B.complete
  multiplicativeClosed : B.multiplicative
  involutiveClosed : B.involutive

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) : BanachAlgebraWitnessClosed B :=
  And.intro E.completeClosed (And.intro E.multiplicativeClosed E.involutiveClosed)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
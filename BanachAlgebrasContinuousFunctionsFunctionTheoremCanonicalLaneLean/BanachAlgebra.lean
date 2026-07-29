import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure BanachAlgebraPackage where
  carrier : Type u
  norm : carrier → ℝ
  algebra : Algebra ℝ carrier
  normedAlgebra : NormedAlgebra ℝ carrier
  complete : CompleteSpace carrier
  multiplicativeNorm : ∀ x y : carrier, ‖x*y‖ ≤ ‖x‖ * ‖y‖

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  completeClosed : B.complete
  multiplicativeNormClosed : B.multiplicativeNorm

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.complete ∧ B.multiplicativeNorm

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.completeClosed E.multiplicativeNormClosed

structure SpectrumCarrier where
  point : Type u
  topology : TopologicalSpace point

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
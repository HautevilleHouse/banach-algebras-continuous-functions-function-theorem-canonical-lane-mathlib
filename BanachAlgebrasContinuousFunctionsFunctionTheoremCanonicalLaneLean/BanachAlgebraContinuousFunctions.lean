import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure BanachAlgebraContinuousFunctions (X : Type) [TopologicalSpace X] [CompactSpace X] where
  carrier : Set (X → ℝ)
  norm : (X → ℝ) → ℝ
  algebraStructure : Algebra ℝ (X → ℝ)
  closedUnderSupNorm : Prop
  completeUnderSupNorm : Prop

def BanachAlgebraContinuousFunctionsClosed (B : BanachAlgebraContinuousFunctions X) : Prop :=
  B.closedUnderSupNorm ∧ B.completeUnderSupNorm

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.BanachAlgebraContinuousFunctions

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure BanachStonePackage (X Y : Type) [TopologicalSpace X] [CompactSpace X] [TopologicalSpace Y] [CompactSpace Y] where
  isometryBetweenAlgebras : Prop
  homeomorphismInduced : Prop
  conclusion : isometryBetweenAlgebras ↔ homeomorphismInduced

structure BanachStoneEvidence (P : BanachStonePackage X Y) where
  forwardDirection : P.isometryBetweenAlgebras → P.homeomorphismInduced
  backwardDirection : P.homeomorphismInduced → P.isometryBetweenAlgebras

def BanachStoneClosed (P : BanachStonePackage X Y) : Prop :=
  P.isometryBetweenAlgebras ∧ P.homeomorphismInduced ∧ P.conclusion

theorem banach_stone_closed_from_evidence (P : BanachStonePackage X Y) (E : BanachStoneEvidence P) :
    BanachStoneClosed P := by
  have hiso : P.isometryBetweenAlgebras := by
    refine E.backwardDirection ?_
    apply E.forwardDirection
    exact hiso
  have hhomeo : P.homeomorphismInduced := E.forwardDirection hiso
  exact And.intro hiso (And.intro hhomeo P.conclusion)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
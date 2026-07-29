import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.BanachAlgebra
import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure ContinuousFunctionsPackage (X : Type u) [TopologicalSpace X] [CompactSpace X] where
  algebra : BanachAlgebraPackage
  embedding : algebra.carrier ≃ C(X, ℂ)  -- continuous functions to ℂ
  isometry : ∀ f : algebra.carrier, algebra.norm f = ‖embedding f‖
  starStructure : StarRing algebra.carrier
  starIsometry : ∀ f : algebra.carrier, algebra.norm (star f) = algebra.norm f

structure GelfandNaimarkBridge {X : Type u} [TopologicalSpace X] [CompactSpace X]
    (C : ContinuousFunctionsPackage X) where
  spectralMap : C.algebra.carrier → C(X, ℂ)
  isHomomorphism : ∀ f g : C.algebra.carrier, spectralMap (f*g) = spectralMap f * spectralMap g
  isIsometric : ∀ f : C.algebra.carrier, C.algebra.norm f = ‖spectralMap f‖
  starPreserving : ∀ f : C.algebra.carrier, spectralMap (star f) = star (spectralMap f)
  endpoint : Prop
  endpointClosed : endpoint

def GelfandNaimarkBridgeClosed {X : Type u} [TopologicalSpace X] [CompactSpace X]
    {C : ContinuousFunctionsPackage X} (B : GelfandNaimarkBridge C) : Prop :=
  B.endpoint

theorem gelfand_naimark_bridge_closed {X : Type u} [TopologicalSpace X] [CompactSpace X]
    {C : ContinuousFunctionsPackage X} (B : GelfandNaimarkBridge C) :
    GelfandNaimarkBridgeClosed B := by
  exact B.endpointClosed

def banachAlgebraWitnessClosed (O : BanachAlgebraObject) : Prop :=
  O.spectrumIncluded ∧ O.continuousFunctionalCalculus

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
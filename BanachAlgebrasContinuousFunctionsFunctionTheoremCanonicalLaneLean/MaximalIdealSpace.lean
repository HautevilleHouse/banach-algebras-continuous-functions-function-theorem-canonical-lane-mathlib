import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure MaximalIdealSpacePackage (A : AdmissibleClass) where
  space : CompactHausdorffSpace
  continuousFunctionAlgebra : ContinuousFunctionBanachAlgebra space
  characterIdentification : Prop

structure MaximalIdealSpaceEvidence {A : AdmissibleClass} (M : MaximalIdealSpacePackage A) where
  characterIdentificationClosed : M.characterIdentification

def MaximalIdealSpaceClosed {A : AdmissibleClass} (M : MaximalIdealSpacePackage A) : Prop :=
  M.characterIdentification

theorem maximal_ideal_space_closed_from_evidence
    {A : AdmissibleClass} (M : MaximalIdealSpacePackage A)
    (E : MaximalIdealSpaceEvidence M) : MaximalIdealSpaceClosed M := by
  exact E.characterIdentificationClosed

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
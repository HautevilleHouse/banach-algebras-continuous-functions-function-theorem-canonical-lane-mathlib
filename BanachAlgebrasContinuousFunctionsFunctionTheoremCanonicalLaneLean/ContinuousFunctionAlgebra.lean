import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.BanachAlgebraPackage

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

structure ContinuousFunctionAlgebraPackage (P : BanachAlgebraPackage) where
  space : Type u
  topology : TopologicalSpace space
  compactHausdorff : Prop
  functions : space → ℂ
  supNorm : ℝ
  uniformComplete : Prop

structure ContinuousFunctionAlgebraEvidence {P : BanachAlgebraPackage}
    (C : ContinuousFunctionAlgebraPackage P) where
  compactHausdorffClosed : C.compactHausdorff
  uniformCompleteClosed : C.uniformComplete

def ContinuousFunctionAlgebraClosed {P : BanachAlgebraPackage}
    (C : ContinuousFunctionAlgebraPackage P) : Prop :=
  C.compactHausdorff ∧ C.uniformComplete

theorem continuous_function_algebra_closed_from_evidence
    {P : BanachAlgebraPackage} (C : ContinuousFunctionAlgebraPackage P)
    (E : ContinuousFunctionAlgebraEvidence C) : ContinuousFunctionAlgebraClosed C := by
  exact And.intro E.compactHausdorffClosed E.uniformCompleteClosed

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
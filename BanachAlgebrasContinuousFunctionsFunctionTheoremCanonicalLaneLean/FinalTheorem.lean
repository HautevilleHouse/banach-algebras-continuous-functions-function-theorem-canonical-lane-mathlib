import canonicalLaneMathlib.AdmissibleClass
import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.GelfandRepresentation
import BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean.StoneWeierstrass

namespace HautevilleHouse
namespace BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean

def ConstrainedBanachAlgebrasClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_banach_algebras_endgame (A : AdmissibleClass) :
    ConstrainedBanachAlgebrasClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAlgebrasContinuousFunctionsFunctionTheoremCanonicalLaneLean
end HautevilleHouse
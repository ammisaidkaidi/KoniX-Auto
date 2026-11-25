package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProtoEnumVerifierDpw implements EnumVerifier {
    static final EnumVerifier a = new ProtoEnumVerifierDpw();

    private ProtoEnumVerifierDpw() {
    }

    @Override // defpackage.EnumVerifier
    public final boolean a(int i) {
        return CommonObjectsAndPreconditionsUtil.a(NavInstructionTypeEnum) != 0;
    }
}

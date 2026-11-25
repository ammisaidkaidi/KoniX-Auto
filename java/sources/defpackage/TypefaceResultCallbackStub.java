package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TypefaceResultCallbackStub implements TypefaceResultCallbackInterface {
    private final /* synthetic */ int a;

    public TypefaceResultCallbackStub(int i) {
        this.a = i;
    }

    @Override // defpackage.TypefaceResultCallbackInterface
    public final /* synthetic */ int a(Object obj) {
        switch (this.a) {
            case 0:
                return ((FontFileConfigEntry) obj).b;
            default:
                return ((FontFileInfo) obj).c;
        }
    }

    @Override // defpackage.TypefaceResultCallbackInterface
    public final /* synthetic */ boolean b(Object obj) {
        switch (this.a) {
            case 0:
                return ((FontFileConfigEntry) obj).c;
            default:
                return ((FontFileInfo) obj).d;
        }
    }
}

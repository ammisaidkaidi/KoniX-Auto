package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FontResultCallbackAdapter implements SimpleCallbackInterfaceGc {
    final /* synthetic */ FontProviderQueryHelper_yc a;

    public FontResultCallbackAdapter(FontProviderQueryHelper_yc ycVar) {
        this.a = ycVar;
    }

    @Override // defpackage.SimpleCallbackInterfaceGc
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if (obj == null) {
            obj = new TypefaceHolder(-3);
        }
        this.a.a((TypefaceHolder) obj);
    }
}

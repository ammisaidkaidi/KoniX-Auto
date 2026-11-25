package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btc {
    public final bsa a;
    public final bsh b;

    public btc(Context context, bsh bshVar) {
        Boolean bool;
        Throwable th = new Throwable();
        brz brzVar = new brz(null);
        brzVar.a();
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        brzVar.a = context;
        brzVar.c = coc.e(th);
        brzVar.a();
        Context context2 = brzVar.a;
        if (context2 != null && (bool = brzVar.d) != null) {
            this.a = new bsa(context2, brzVar.b, brzVar.c, bool.booleanValue());
            this.b = bshVar;
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (brzVar.a == null) {
            sb.append(" context");
        }
        if (brzVar.d == null) {
            sb.append(" googlerOverridesCheckbox");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final String toString() {
        return "CollectionBasisLogVerifier{collectionBasisContext=" + this.a + ", basis=" + this.b + "}";
    }
}

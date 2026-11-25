package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesEventContext {
    public final PrimesConfig a;
    public final CollectionBasisVerifierHolder b;

    public PrimesEventContext(Context context, CollectionBasisVerifierHolder bshVar) {
        Boolean bool;
        Throwable th = new Throwable();
        PrimesContextConfig brzVar = new PrimesContextConfig(null);
        brzVar.a();
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        brzVar.a = context;
        brzVar.c = GuavaOptional.e(ActivityResultDispatchRunnable);
        brzVar.a();
        Context context2 = brzVar.a;
        if (context2 != null && (bool = brzVar.d) != null) {
            this.a = new PrimesConfig(context2, brzVar.b, brzVar.c, bool.booleanValue());
            this.b = bshVar;
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (brzVar.a == null) {
            StaggeredGridLayoutParams.append(" context");
        }
        if (brzVar.d == null) {
            StaggeredGridLayoutParams.append(" googlerOverridesCheckbox");
        }
        throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
    }

    public final String toString() {
        return "CollectionBasisLogVerifier{collectionBasisContext=" + this.a + ", basis=" + this.b + "}";
    }
}

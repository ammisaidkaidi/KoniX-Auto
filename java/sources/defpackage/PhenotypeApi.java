package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeApi {

    @Deprecated
    public static final ApiClientKey a;
    private static final GoogleSignatureVerifier b;

    static {
        PhenotypeSignatureChecker borVar = new PhenotypeSignatureChecker();
        b = borVar;
        a = new ApiClientKey("Phenotype.API", borVar, null);
    }

    public static GmsApiClientBase a(Context context) {
        return new GmsApiClientBase(context, a, bjw.a, bkb.a);
    }
}

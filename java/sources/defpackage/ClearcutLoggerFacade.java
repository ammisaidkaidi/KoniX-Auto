package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutLoggerFacade {

    @Deprecated
    public static final ApiClientKey a;
    public static final String[] b;
    public static final List c;
    public static volatile int d;
    public static final GoogleSignatureVerifier m;
    public final Context e;
    public final String f;
    public final EnumSet g;
    public final SamplingRulesProvider h;
    public final List i;
    public String j;
    public int k;
    final GmsApiClientBase l;

    static {
        ClearcutSignatureVerifier bifVar = new ClearcutSignatureVerifier();
        m = bifVar;
        a = new ApiClientKey("ClearcutLogger.API", bifVar, null);
        b = new String[0];
        c = new CopyOnWriteArrayList();
        d = -1;
    }

    public ClearcutLoggerFacade(Context context, String str) {
        this(context, str, bij.e, GmsApiClientBase.h(context), new LogSamplingRulesProvider(context));
    }

    public static String b(Iterable iterable) {
        return ex.x(iterable, ", ");
    }

    public static int[] d(ArrayList arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (NavInstructionTypeEnum < size) {
            iArr[i2] = ((Integer) arrayList.get(NavInstructionTypeEnum)).intValue();
            i++;
            i2++;
        }
        return iArr;
    }

    public final LogEventBuilder a(MessageLite derVar) {
        derVar.getClass();
        return new LogEventBuilder(this, new DerSyntheticLambdaHolder(derVar));
    }

    public final boolean c() {
        return this.g.equals(bij.f);
    }

    public ClearcutLoggerFacade(Context context, String str, EnumSet enumSet, GmsApiClientBase bkcVar, SamplingRulesProvider biiVar) {
        this.i = new CopyOnWriteArrayList();
        this.k = 1;
        if (!enumSet.contains(CollectionBasisVerifierType.ACCOUNT_NAME)) {
            ThreadAndNullChecksUtil.f(true, "Upload account name cannot be used with a deidentified or pseudonymous logger.");
        }
        if (enumSet.equals(bij.g) || enumSet.equals(bij.e) || enumSet.equals(bij.f)) {
            this.e = context.getApplicationContext();
            this.f = context.getPackageName();
            this.j = str;
            this.g = enumSet;
            this.l = bkcVar;
            this.k = 1;
            this.h = biiVar;
            return;
        }
        throw new IllegalArgumentException("piiLevelSet must be one ListPopupGlobalLayoutListener ZWIEBACK_ONLY, NO_RESTRICTIONS, or PIILevel.DEIDENTIFIED");
    }
}

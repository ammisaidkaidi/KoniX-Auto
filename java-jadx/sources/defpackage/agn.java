package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class agn {
    private static final String a = agr.b("InputMerger");

    public static agn b(String str) {
        try {
            return (agn) Class.forName(str).newInstance();
        } catch (Exception e) {
            agr.a();
            agr.e(a, "Trouble instantiating + ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    public abstract agk a(List list);
}

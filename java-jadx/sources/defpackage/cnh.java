package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cnh extends cni {
    static final cni a;

    static {
        cnh cnhVar = new cnh(new vi(0));
        if (cnhVar.b) {
            throw new IllegalStateException("Already frozen");
        }
        cnhVar.b = true;
        a = cnhVar;
    }

    private cnh(vi viVar) {
        super(viVar);
    }
}

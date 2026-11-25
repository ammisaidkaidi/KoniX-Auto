package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aaj {
    private final aag a;
    private final aed b;

    public aaj(aed aedVar, aag aagVar, byte[] bArr) {
        aedVar.getClass();
        aagVar.getClass();
        this.b = aedVar;
        this.a = aagVar;
    }

    public final aaf a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
        aaf aafVar = (aaf) this.b.a.get(concat);
        if (cls.isInstance(aafVar)) {
            Object obj = this.a;
            if ((obj instanceof aai ? (aai) obj : null) != null) {
                aafVar.getClass();
            }
            if (aafVar == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            }
        } else {
            aag aagVar = this.a;
            aafVar = aagVar instanceof aah ? ((aah) aagVar).b() : aagVar.a();
            aaf aafVar2 = (aaf) this.b.a.put(concat, aafVar);
            if (aafVar2 != null) {
                aafVar2.c();
            }
            aafVar.getClass();
        }
        return aafVar;
    }
}

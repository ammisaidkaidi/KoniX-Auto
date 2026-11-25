package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dei implements dep {
    private final dep[] a;

    public dei(dep... depVarArr) {
        this.a = depVarArr;
    }

    @Override // defpackage.dep
    public final deo a(Class cls) {
        dep[] depVarArr = this.a;
        for (int i = 0; i < 2; i++) {
            dep depVar = depVarArr[i];
            if (depVar.b(cls)) {
                return depVar.a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // defpackage.dep
    public final boolean b(Class cls) {
        dep[] depVarArr = this.a;
        for (int i = 0; i < 2; i++) {
            if (depVarArr[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}

package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dcx {
    public final der a;
    public final Object b;
    public final der c;
    public final ddj d;

    public dcx() {
    }

    public final dgc a() {
        return this.d.c;
    }

    public final void b() {
        boolean z = this.d.d;
    }

    public dcx(der derVar, Object obj, der derVar2, ddj ddjVar) {
        if (derVar == null) {
            throw new IllegalArgumentException("Null containingTypeDefaultInstance");
        }
        if (ddjVar.c == dgc.MESSAGE && derVar2 == null) {
            throw new IllegalArgumentException("Null messageDefaultInstance");
        }
        this.a = derVar;
        this.b = obj;
        this.c = derVar2;
        this.d = ddjVar;
    }
}

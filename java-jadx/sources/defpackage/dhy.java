package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dhy implements dhx, dgz {
    public final Object a;

    private dhy(Object obj) {
        this.a = obj;
    }

    public static dhx b(Object obj) {
        obj.getClass();
        return new dhy(obj);
    }

    @Override // defpackage.dny
    public final Object a() {
        return this.a;
    }
}

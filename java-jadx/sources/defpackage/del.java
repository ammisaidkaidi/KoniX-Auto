package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class del {
    public final dek a;

    private del(dgc dgcVar, Object obj, dgc dgcVar2, Object obj2) {
        this.a = new dek(dgcVar, obj, dgcVar2, obj2);
    }

    public static int a(dek dekVar, Object obj, Object obj2) {
        return ddb.a(dekVar.a, 1, obj) + ddb.a(dekVar.c, 2, obj2);
    }

    public static del b(dgc dgcVar, Object obj, dgc dgcVar2, Object obj2) {
        return new del(dgcVar, obj, dgcVar2, obj2);
    }

    static void c(dcu dcuVar, dek dekVar, Object obj, Object obj2) {
        ddb.g(dcuVar, dekVar.a, 1, obj);
        ddb.g(dcuVar, dekVar.c, 2, obj2);
    }
}

package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dej {
    private static final dep b = new deh(0);
    public final dep a;

    public dej() {
        dep depVar;
        dep[] depVarArr = new dep[2];
        depVarArr[0] = deh.a;
        try {
            depVar = (dep) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            depVar = b;
        }
        depVarArr[1] = depVar;
        dei deiVar = new dei(depVarArr);
        dds.i(deiVar, "messageInfoFactory");
        this.a = deiVar;
    }

    public static boolean a(deo deoVar) {
        return deoVar.c() == 1;
    }
}

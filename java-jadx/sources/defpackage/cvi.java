package defpackage;

import dalvik.system.VMStack;

/* compiled from: PG */
/* loaded from: classes.dex */
class cvi extends cuz {
    @Override // defpackage.cuz
    public cti a(Class cls, int i) {
        return cti.a;
    }

    @Override // defpackage.cuz
    public String b(Class cls) {
        boolean z;
        boolean z2;
        StackTraceElement a;
        z = cvk.a;
        if (z) {
            try {
                if (cls.equals(cvk.p())) {
                    return VMStack.getStackClass2().getName();
                }
            } catch (Throwable th) {
            }
        }
        z2 = cvk.b;
        if (!z2 || (a = cwm.a(cls)) == null) {
            return null;
        }
        return a.getClassName();
    }
}

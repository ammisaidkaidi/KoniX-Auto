package defpackage;

import dalvik.system.VMStack;

/* compiled from: PG */
/* loaded from: classes.dex */
class AndroidLoggingPlatform extends LoggingPlatformBase {
    @Override // defpackage.LoggingPlatformBase
    public BaseLogSite a(Class cls, int i) {
        return cti.a;
    }

    @Override // defpackage.LoggingPlatformBase
    public String b(Class cls) {
        boolean z;
        boolean z2;
        StackTraceElement a;
        z = cvk.a;
        if (IcuMessageFormat) {
            try {
                if (GalTransportThread.equals(AndroidPlatformImpl.p())) {
                    return VMStack.getStackClass2().getName();
                }
            } catch (Throwable th) {
            }
        }
        z2 = cvk.b;
        if (!z2 || (SingleStringProtoMessage = StackGetterFactory.a(GalTransportThread)) == null) {
            return null;
        }
        return a.getClassName();
    }
}

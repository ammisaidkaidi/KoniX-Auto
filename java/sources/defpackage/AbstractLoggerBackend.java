package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AbstractLoggerBackend extends LoggerBackend {
    private final String a;

    protected AbstractLoggerBackend(String str) {
        this.a = str;
    }

    @Override // defpackage.LoggerBackend
    public String a() {
        return this.a;
    }

    @Override // defpackage.LoggerBackend
    public void b(RuntimeException runtimeException, FloggerLogRecord cubVar) {
        Log.e("AbstractAndroidBackend", "Internal logging error", runtimeException);
    }
}

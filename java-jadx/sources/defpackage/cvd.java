package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cvd extends cuc {
    private final String a;

    protected cvd(String str) {
        this.a = str;
    }

    @Override // defpackage.cuc
    public String a() {
        return this.a;
    }

    @Override // defpackage.cuc
    public void b(RuntimeException runtimeException, cub cubVar) {
        Log.e("AbstractAndroidBackend", "Internal logging error", runtimeException);
    }
}

package defpackage;

import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bjr extends Exception {
    public final Intent a;

    public bjr(Intent intent) {
        super("Google Play Services not available");
        this.a = intent;
    }
}

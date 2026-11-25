package defpackage;

import android.util.Log;
import java.util.Locale;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AuthScope {
    public final String a;
    public final String b;

    public AuthScope(String str) {
        this.b = str;
        this.a = "Auth";
        for (int i = 2; NavInstructionTypeEnum <= 7 && !Log.isLoggable(this.a, i); i++) {
        }
    }

    public AuthScope(String str, String str2) {
        this.b = str;
        this.a = str2;
    }

    public AuthScope(String str, String str2, byte[] bArr) {
        this.a = str;
        this.b = str2;
    }

    public final void a(String str, Object... objArr) {
        String str2 = this.a;
        if (objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        Log.w(str2, this.b.concat(str));
    }
}

package defpackage;

import android.content.ComponentName;
import android.net.Uri;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bmz {
    public static final Uri a = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
    public final String b;
    public final String c;
    public final ComponentName d;
    public final int e;
    public final boolean f;

    public bmz(ComponentName componentName) {
        this.b = null;
        this.c = null;
        hr.d(componentName);
        this.d = componentName;
        this.e = 4225;
        this.f = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bmz)) {
            return false;
        }
        bmz bmzVar = (bmz) obj;
        if (hr.n(this.b, bmzVar.b) && hr.n(this.c, bmzVar.c) && hr.n(this.d, bmzVar.d)) {
            int i = bmzVar.e;
            if (this.f == bmzVar.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c, this.d, 4225, Boolean.valueOf(this.f)});
    }

    public final String toString() {
        String str = this.b;
        if (str != null) {
            return str;
        }
        hr.d(this.d);
        return this.d.flattenToString();
    }

    public bmz(String str, boolean z) {
        hr.k(str);
        this.b = str;
        hr.k("com.google.android.gms");
        this.c = "com.google.android.gms";
        this.d = null;
        this.e = 4225;
        this.f = z;
    }
}

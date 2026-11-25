package defpackage;

import android.content.ComponentName;
import android.net.Uri;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ChimeraModuleLoader {
    public static final Uri a = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();
    public final String b;
    public final String c;
    public final ComponentName d;
    public final int e;
    public final boolean f;

    public ChimeraModuleLoader(ComponentName componentName) {
        this.b = null;
        this.c = null;
        ThreadAndNullChecksUtil.d(componentName);
        this.d = componentName;
        this.e = 4225;
        this.f = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChimeraModuleLoader)) {
            return false;
        }
        ChimeraModuleLoader bmzVar = (ChimeraModuleLoader) obj;
        if (ThreadAndNullChecksUtil.n(this.b, bmzVar.b) && ThreadAndNullChecksUtil.n(this.c, bmzVar.c) && ThreadAndNullChecksUtil.n(this.d, bmzVar.d)) {
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
        ThreadAndNullChecksUtil.d(this.d);
        return this.d.flattenToString();
    }

    public ChimeraModuleLoader(String str, boolean z) {
        ThreadAndNullChecksUtil.k(str);
        this.b = str;
        ThreadAndNullChecksUtil.k("com.google.android.gms");
        this.c = "com.google.android.gms";
        this.d = null;
        this.e = 4225;
        this.f = z;
    }
}

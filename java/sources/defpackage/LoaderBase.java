package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public class LoaderBase {
    public int d;
    public LoaderInfoListener e;
    public final Context f;
    public boolean g = false;
    public boolean h = false;
    public boolean i = true;
    public boolean j = false;

    public LoaderBase(Context context) {
        this.f = context.getApplicationContext();
    }

    public static final String e(Object obj) {
        StringBuilder sb = new StringBuilder(64);
        if (obj == null) {
            StaggeredGridLayoutParams.append("null");
        } else {
            StaggeredGridLayoutParams.append(obj.getClass().getSimpleName());
            StaggeredGridLayoutParams.append("{");
            StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(obj)));
            StaggeredGridLayoutParams.append("}");
        }
        return StaggeredGridLayoutParams.toString();
    }

    public void d() {
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        StaggeredGridLayoutParams.append(getClass().getSimpleName());
        StaggeredGridLayoutParams.append("{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        StaggeredGridLayoutParams.append(" id=");
        StaggeredGridLayoutParams.append(this.d);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}

package defpackage;

import android.os.Handler;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemUiHideHelper {
    public final Handler a;
    public final View b;
    public final Runnable c = new Runnable() { // from class: bgf
        @Override // java.lang.Runnable
        public final void run() {
            SystemUiHideHelper.this.a();
        }
    };
    private final boolean d;

    public SystemUiHideHelper(View view, boolean z) {
        view.getClass();
        this.b = view;
        this.d = z;
        this.a = new Handler();
    }

    public final void a() {
        if (this.d) {
            View view = this.b;
            view.getClass();
            view.setSystemUiVisibility(3590);
        } else {
            View view2 = this.b;
            view2.getClass();
            view2.setSystemUiVisibility(2562);
        }
    }
}

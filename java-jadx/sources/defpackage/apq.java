package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class apq {
    public final Context a;
    public String b;
    public String c;
    public Drawable d;
    public Drawable e;
    public CharSequence g;
    public Drawable h;
    public apt i;
    public int f = -1;
    public apr j = apr.ALWAYS;
    public boolean k = true;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean o = true;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public int t = 0;

    public apq(Context context) {
        this.a = context.getApplicationContext();
    }

    public final apu a() {
        boolean z = this.p;
        if (z && (this.l || this.h == null)) {
            throw new IllegalStateException("Only simple icons can be activatable");
        }
        if (this.m && (this.l || z)) {
            throw new IllegalStateException("Unsupported options for a checkable MenuItem");
        }
        if (this.r && this.s) {
            throw new IllegalStateException("Can't have both a search and settings MenuItem");
        }
        if (z && this.j == apr.NEVER) {
            throw new IllegalStateException("Activatable MenuItems not supported as Overflow");
        }
        if (this.r && (!this.b.contentEquals(this.g) || !this.d.equals(this.h) || this.m || this.p || !this.k || this.l || this.j != apr.ALWAYS)) {
            throw new IllegalStateException("Invalid search MenuItem");
        }
        if (!this.s || (this.c.contentEquals(this.g) && this.e.equals(this.h) && !this.m && !this.p && this.k && !this.l && this.j == apr.ALWAYS)) {
            return new apu(this);
        }
        throw new IllegalStateException("Invalid settings MenuItem");
    }
}

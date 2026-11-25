package defpackage;

import android.graphics.drawable.Drawable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aoe extends aoj {
    public Drawable a;
    public amo b;
    public final aob c;
    public boolean e;
    public boolean g;
    public aod h;
    public arh i;
    public boolean f = true;
    public final aoc d = aoc.STANDARD;

    public aoe(aob aobVar) {
        this.c = aobVar;
    }

    public final void a(boolean z) {
        if (z == this.e) {
            return;
        }
        if (this.c == aob.CHECK_BOX || this.c == aob.SWITCH || this.c == aob.RADIO_BUTTON) {
            this.e = z;
            aod aodVar = this.h;
            if (aodVar != null) {
                aodVar.a(this, z);
            }
        }
    }

    public final void b(CharSequence charSequence) {
        this.b = new amo(new cqr(charSequence), null);
    }

    public final void c() {
        aob aobVar = aob.ICON;
    }
}

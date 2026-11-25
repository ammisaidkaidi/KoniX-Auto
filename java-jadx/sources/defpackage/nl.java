package defpackage;

import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* compiled from: PG */
/* loaded from: classes.dex */
final class nl {
    private final CompoundButton a;
    private boolean b;

    public nl(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005a A[Catch: all -> 0x007e, TryCatch #1 {all -> 0x007e, blocks: (B:3:0x001c, B:5:0x0023, B:8:0x0029, B:9:0x0052, B:11:0x005a, B:12:0x0063, B:14:0x006b, B:21:0x0039, B:23:0x003f, B:25:0x0045), top: B:2:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b A[Catch: all -> 0x007e, TRY_LEAVE, TryCatch #1 {all -> 0x007e, blocks: (B:3:0x001c, B:5:0x0023, B:8:0x0029, B:9:0x0052, B:11:0x005a, B:12:0x0063, B:14:0x006b, B:21:0x0039, B:23:0x003f, B:25:0x0045), top: B:2:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void a(AttributeSet attributeSet, int i) {
        int f;
        int f2;
        sm q = sm.q(this.a.getContext(), attributeSet, ki.l, i);
        CompoundButton compoundButton = this.a;
        hs.L(compoundButton, compoundButton.getContext(), ki.l, attributeSet, q.b, i);
        try {
            if (q.p(1) && (f2 = q.f(1, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.a;
                    compoundButton2.setButtonDrawable(kj.b(compoundButton2.getContext(), f2));
                } catch (Resources.NotFoundException e) {
                }
                if (q.p(2)) {
                    this.a.setButtonTintList(q.g(2));
                }
                if (q.p(3)) {
                    this.a.setButtonTintMode(pc.a(q.c(3, -1), null));
                }
            }
            if (q.p(0) && (f = q.f(0, 0)) != 0) {
                CompoundButton compoundButton3 = this.a;
                compoundButton3.setButtonDrawable(kj.b(compoundButton3.getContext(), f));
            }
            if (q.p(2)) {
            }
            if (q.p(3)) {
            }
        } finally {
            q.n();
        }
    }

    final void b() {
        if (this.b) {
            this.b = false;
        } else {
            this.b = true;
            this.a.getButtonDrawable();
        }
    }
}

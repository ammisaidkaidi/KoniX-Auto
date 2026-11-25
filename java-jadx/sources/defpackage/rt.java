package defpackage;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public class rt extends gh {
    final RecyclerView b;
    public final rs c;

    public rt(RecyclerView recyclerView) {
        this.b = recyclerView;
        gh k = k();
        if (k == null || !(k instanceof rs)) {
            this.c = new rs(this);
        } else {
            this.c = (rs) k;
        }
    }

    @Override // defpackage.gh
    public final void b(View view, AccessibilityEvent accessibilityEvent) {
        ra raVar;
        super.b(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || l() || (raVar = ((RecyclerView) view).l) == null) {
            return;
        }
        raVar.R(accessibilityEvent);
    }

    @Override // defpackage.gh
    public final void c(View view, ik ikVar) {
        ra raVar;
        super.c(view, ikVar);
        if (l() || (raVar = this.b.l) == null) {
            return;
        }
        RecyclerView recyclerView = raVar.r;
        rh rhVar = recyclerView.c;
        ro roVar = recyclerView.H;
        if (recyclerView.canScrollVertically(-1) || raVar.r.canScrollHorizontally(-1)) {
            ikVar.a(8192);
            ikVar.d();
        }
        if (raVar.r.canScrollVertically(1) || raVar.r.canScrollHorizontally(1)) {
            ikVar.a(4096);
            ikVar.d();
        }
        ikVar.a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(raVar.b(rhVar, roVar), raVar.a(rhVar, roVar), false, 0));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x007f, code lost:
    
        if (r5 != 0) goto L34;
     */
    @Override // defpackage.gh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(View view, int i, Bundle bundle) {
        ra raVar;
        int at;
        int ar;
        if (super.i(view, i, bundle)) {
            return true;
        }
        int i2 = 0;
        if (l() || (raVar = this.b.l) == null) {
            return false;
        }
        RecyclerView recyclerView = raVar.r;
        rh rhVar = recyclerView.c;
        ro roVar = recyclerView.H;
        if (recyclerView != null) {
            switch (i) {
                case 4096:
                    at = recyclerView.canScrollVertically(1) ? (raVar.E - raVar.at()) - raVar.aq() : 0;
                    if (raVar.r.canScrollHorizontally(1)) {
                        ar = (raVar.D - raVar.ar()) - raVar.as();
                        break;
                    }
                    ar = 0;
                    break;
                case 8192:
                    at = recyclerView.canScrollVertically(-1) ? -((raVar.E - raVar.at()) - raVar.aq()) : 0;
                    if (raVar.r.canScrollHorizontally(-1)) {
                        ar = -((raVar.D - raVar.ar()) - raVar.as());
                        break;
                    }
                    ar = 0;
                    break;
                default:
                    ar = 0;
                    at = 0;
                    break;
            }
            if (at != 0) {
                i2 = at;
            }
            raVar.r.an(ar, i2, true);
            return true;
        }
        return false;
    }

    public gh k() {
        return this.c;
    }

    final boolean l() {
        return this.b.ai();
    }
}

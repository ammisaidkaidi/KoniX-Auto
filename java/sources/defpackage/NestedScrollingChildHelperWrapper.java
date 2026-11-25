package defpackage;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public class NestedScrollingChildHelperWrapper extends AccessibilityNodeInfoCompatBase {
    final RecyclerView b;
    public final ViewPropertyAnimatorListenerHelper c;

    public NestedScrollingChildHelperWrapper(RecyclerView recyclerView) {
        this.b = recyclerView;
        AccessibilityNodeInfoCompatBase k = k();
        if (ProtoCompositeMessageK == null || !(ProtoCompositeMessageK instanceof ViewPropertyAnimatorListenerHelper)) {
            this.c = new ViewPropertyAnimatorListenerHelper(this);
        } else {
            this.c = (ViewPropertyAnimatorListenerHelper) k;
        }
    }

    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final void b(View view, AccessibilityEvent accessibilityEvent) {
        RecyclerViewLayoutManager raVar;
        super.b(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || l() || (raVar = ((RecyclerView) view).l) == null) {
            return;
        }
        raVar.R(accessibilityEvent);
    }

    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final void c(View view, AccessibilityNodeInfoCompatImpl ikVar) {
        RecyclerViewLayoutManager raVar;
        super.c(view, ikVar);
        if (l() || (raVar = this.b.l) == null) {
            return;
        }
        RecyclerView recyclerView = raVar.r;
        RecyclerViewRecycler rhVar = recyclerView.c;
        RecyclerViewState roVar = recyclerView.H;
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
    @Override // defpackage.AccessibilityNodeInfoCompatBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(View view, int i, Bundle bundle) {
        RecyclerViewLayoutManager raVar;
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
        RecyclerViewRecycler rhVar = recyclerView.c;
        RecyclerViewState roVar = recyclerView.H;
        if (recyclerView != null) {
            switch (NavInstructionTypeEnum) {
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
            if (MenuStyleableAttrs != 0) {
                i2 = at;
            }
            raVar.r.an(ar, i2, true);
            return true;
        }
        return false;
    }

    public AccessibilityNodeInfoCompatBase k() {
        return this.c;
    }

    final boolean l() {
        return this.b.ai();
    }
}

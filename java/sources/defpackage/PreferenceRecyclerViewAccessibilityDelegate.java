package defpackage;

import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public final class PreferenceRecyclerViewAccessibilityDelegate extends NestedScrollingChildHelperWrapper {
    final RecyclerView d;
    final AccessibilityNodeInfoCompatBase e;
    final AccessibilityNodeInfoCompatBase f;

    public PreferenceRecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        super(recyclerView);
        this.e = ((NestedScrollingChildHelperWrapper) this).c;
        this.f = new PreferenceAccessibilityItemDelegate(this);
        this.d = recyclerView;
    }

    @Override // defpackage.NestedScrollingChildHelperWrapper
    public final AccessibilityNodeInfoCompatBase k() {
        return this.f;
    }
}

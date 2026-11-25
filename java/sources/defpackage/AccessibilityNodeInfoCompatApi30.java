package defpackage;

import android.R;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccessibilityNodeInfoCompatApi30 extends AccessibilityNodeInfoCompatBase {
    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final void b(View view, AccessibilityEvent accessibilityEvent) {
        super.b(view, accessibilityEvent);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        accessibilityEvent.setClassName(ScrollView.class.getName());
        accessibilityEvent.setScrollable(nestedScrollView.h() > 0);
        accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
        accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
        accessibilityEvent.setMaxScrollY(nestedScrollView.h());
    }

    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final void c(View view, AccessibilityNodeInfoCompatImpl ikVar) {
        int h;
        super.c(view, ikVar);
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        ikVar.a.setClassName(ScrollView.class.getName());
        if (!nestedScrollView.isEnabled() || (ProtoMessageSingleEnumFieldH = nestedScrollView.h()) <= 0) {
            return;
        }
        ikVar.d();
        if (nestedScrollView.getScrollY() > 0) {
            ikVar.b(ij.b);
            ikVar.b(ij.c);
        }
        if (nestedScrollView.getScrollY() < h) {
            ikVar.b(ij.a);
            ikVar.b(ij.d);
        }
    }

    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final boolean i(View view, int i, Bundle bundle) {
        if (super.i(view, i, bundle)) {
            return true;
        }
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        if (!nestedScrollView.isEnabled()) {
            return false;
        }
        switch (NavInstructionTypeEnum) {
            case 4096:
            case R.id.accessibilityActionScrollDown:
                int height = nestedScrollView.getHeight();
                int paddingBottom = nestedScrollView.getPaddingBottom();
                int min = Math.min(nestedScrollView.getScrollY() + ((height - paddingBottom) - nestedScrollView.getPaddingTop()), nestedScrollView.h());
                if (min == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.t(min);
                return true;
            case 8192:
            case R.id.accessibilityActionScrollUp:
                int height2 = nestedScrollView.getHeight();
                int paddingBottom2 = nestedScrollView.getPaddingBottom();
                int max = Math.max(nestedScrollView.getScrollY() - ((height2 - paddingBottom2) - nestedScrollView.getPaddingTop()), 0);
                if (max == nestedScrollView.getScrollY()) {
                    return false;
                }
                nestedScrollView.t(max);
                return true;
            default:
                return false;
        }
    }
}

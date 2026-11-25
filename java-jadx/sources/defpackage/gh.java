package defpackage;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import com.google.android.embedded.projection.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class gh {
    private static final View.AccessibilityDelegate b = new View.AccessibilityDelegate();
    public final View.AccessibilityDelegate a;
    private final View.AccessibilityDelegate c;

    public gh() {
        this(b);
    }

    static List a(View view) {
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        return list == null ? Collections.emptyList() : list;
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        this.c.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void c(View view, ik ikVar) {
        this.c.onInitializeAccessibilityNodeInfo(view, ikVar.a);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.c.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void e(View view, int i) {
        this.c.sendAccessibilityEvent(view, i);
    }

    public void f(View view, AccessibilityEvent accessibilityEvent) {
        this.c.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public boolean g(View view, AccessibilityEvent accessibilityEvent) {
        return this.c.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean h(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.c.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean i(View view, int i, Bundle bundle) {
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List a = a(view);
        for (int i2 = 0; i2 < a.size() && ((ij) a.get(i2)).a() != i; i2++) {
        }
        boolean performAccessibilityAction = this.c.performAccessibilityAction(view, i, bundle);
        if (performAccessibilityAction || i != R.id.accessibility_action_clickable_span) {
            return performAccessibilityAction;
        }
        int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (WeakReference) sparseArray.get(i3)) == null || (clickableSpan = (ClickableSpan) weakReference.get()) == null) {
            return false;
        }
        CharSequence text = view.createAccessibilityNodeInfo().getText();
        ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
        for (int i4 = 0; clickableSpanArr != null && i4 < clickableSpanArr.length; i4++) {
            if (clickableSpan.equals(clickableSpanArr[i4])) {
                clickableSpan.onClick(view);
                return true;
            }
        }
        return false;
    }

    public czd j(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.c.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new czd(accessibilityNodeProvider);
        }
        return null;
    }

    public gh(View.AccessibilityDelegate accessibilityDelegate) {
        this.c = accessibilityDelegate;
        this.a = new gg(this);
    }
}

package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessibilityDelegateCompatBase extends View.AccessibilityDelegate {
    final AccessibilityNodeInfoCompatBase a;

    public AccessibilityDelegateCompatBase(AccessibilityNodeInfoCompatBase ghVar) {
        this.a = ghVar;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.a.g(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        QuadIntValue j = this.a.j(view);
        if (ProtoMessageTwoIntsAndFlagValue != null) {
            return (AccessibilityNodeProvider) j.a;
        }
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.a.b(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        AccessibilityNodeInfoCompatImpl ikVar = new AccessibilityNodeInfoCompatImpl(accessibilityNodeInfo);
        ikVar.a.setScreenReaderFocusable(ViewCompatAccessibilityStatics.H(view));
        Boolean bool = (Boolean) new ViewTagPropertyAccessorDelta(Boolean.class).b(view);
        ikVar.a.setHeading(bool != null && bool.booleanValue());
        ikVar.a.setPaneTitle(ViewCompatAccessibilityStatics.o(view));
        CharSequence charSequence = (CharSequence) ViewCompatAccessibilityStatics.k().b(view);
        if (Build.VERSION.SDK_INT >= 30) {
            ikVar.a.setStateDescription(charSequence);
        } else {
            ikVar.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
        this.a.c(view, ikVar);
        accessibilityNodeInfo.getText();
        List a = AccessibilityNodeInfoCompatBase.a(view);
        for (int i = 0; NavInstructionTypeEnum < a.size(); i++) {
            ikVar.b((TextAccessibilityHelper) a.get(NavInstructionTypeEnum));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.a.d(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.a.h(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return this.a.i(view, i, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEvent(View view, int i) {
        this.a.e(view, i);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.a.f(view, accessibilityEvent);
    }
}

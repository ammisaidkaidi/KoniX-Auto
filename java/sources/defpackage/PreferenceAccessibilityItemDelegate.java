package defpackage;

import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PreferenceAccessibilityItemDelegate extends AccessibilityNodeInfoCompatBase {
    final /* synthetic */ PreferenceRecyclerViewAccessibilityDelegate b;

    public PreferenceAccessibilityItemDelegate(PreferenceRecyclerViewAccessibilityDelegate adnVar) {
        this.b = adnVar;
    }

    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final void c(View view, AccessibilityNodeInfoCompatImpl ikVar) {
        Preference d;
        this.b.e.c(view, ikVar);
        int b = this.b.d.b(view);
        RecyclerViewAdapter e = this.b.d.e();
        if ((ProtoFlagValueMessage instanceof PreferenceGroupAdapter) && (ProtoMsgIntStringInt = ((PreferenceGroupAdapter) e).d(ProtoLiteMessageBase)) != null) {
            d.onInitializeAccessibilityNodeInfo(ikVar);
        }
    }

    @Override // defpackage.AccessibilityNodeInfoCompatBase
    public final boolean i(View view, int i, Bundle bundle) {
        return this.b.e.i(view, i, bundle);
    }
}

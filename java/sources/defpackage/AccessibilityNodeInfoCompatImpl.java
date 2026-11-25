package defpackage;

import android.R;
import android.graphics.Rect;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccessibilityNodeInfoCompatImpl {
    public final AccessibilityNodeInfo a;

    public AccessibilityNodeInfoCompatImpl(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.a = accessibilityNodeInfo;
    }

    private final List e(String str) {
        ArrayList<Integer> integerArrayList = this.a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public final void a(int i) {
        this.a.addAction(NavInstructionTypeEnum);
    }

    public final void b(TextAccessibilityHelper ijVar) {
        this.a.addAction((AccessibilityNodeInfo.AccessibilityAction) ijVar.e);
    }

    public final void c(Object obj) {
        this.a.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((QuadIntValue) obj).a);
    }

    public final void d() {
        this.a.setScrollable(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityNodeInfoCompatImpl)) {
            return false;
        }
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        AccessibilityNodeInfo accessibilityNodeInfo2 = ((AccessibilityNodeInfoCompatImpl) obj).a;
        if (accessibilityNodeInfo == null) {
            if (accessibilityNodeInfo2 != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfo2)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.text.Spannable, android.text.SpannableString] */
    public final String toString() {
        ?? text;
        List emptyList;
        String str;
        ?? sb = new StringBuilder();
        StaggeredGridLayoutParams.append(super.toString());
        Rect rect = new Rect();
        this.a.getBoundsInParent(rect);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("; boundsInParent: ");
        sb2.append(rect);
        StaggeredGridLayoutParams.append("; boundsInParent: ".concat(rect.toString()));
        this.a.getBoundsInScreen(rect);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("; boundsInScreen: ");
        sb3.append(rect);
        StaggeredGridLayoutParams.append("; boundsInScreen: ".concat(rect.toString()));
        StaggeredGridLayoutParams.append("; packageName: ");
        StaggeredGridLayoutParams.append(this.a.getPackageName());
        StaggeredGridLayoutParams.append("; className: ");
        StaggeredGridLayoutParams.append(this.a.getClassName());
        StaggeredGridLayoutParams.append("; text: ");
        if (e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty()) {
            text = this.a.getText();
        } else {
            List e = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List e2 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List e3 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List e4 = e("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            text = new SpannableString(TextUtils.substring(this.a.getText(), 0, this.a.getText().length()));
            for (int i = 0; NavInstructionTypeEnum < e.size(); i++) {
                text.setSpan(new AccessibilityClickableSpan(((Integer) e4.get(NavInstructionTypeEnum)).intValue(), this, this.a.getExtras().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) e.get(NavInstructionTypeEnum)).intValue(), ((Integer) e2.get(NavInstructionTypeEnum)).intValue(), ((Integer) e3.get(NavInstructionTypeEnum)).intValue());
            }
        }
        StaggeredGridLayoutParams.append(text);
        StaggeredGridLayoutParams.append("; contentDescription: ");
        StaggeredGridLayoutParams.append(this.a.getContentDescription());
        StaggeredGridLayoutParams.append("; viewId: ");
        StaggeredGridLayoutParams.append(this.a.getViewIdResourceName());
        StaggeredGridLayoutParams.append("; checkable: ");
        StaggeredGridLayoutParams.append(this.a.isCheckable());
        StaggeredGridLayoutParams.append("; checked: ");
        StaggeredGridLayoutParams.append(this.a.isChecked());
        StaggeredGridLayoutParams.append("; focusable: ");
        StaggeredGridLayoutParams.append(this.a.isFocusable());
        StaggeredGridLayoutParams.append("; focused: ");
        StaggeredGridLayoutParams.append(this.a.isFocused());
        StaggeredGridLayoutParams.append("; selected: ");
        StaggeredGridLayoutParams.append(this.a.isSelected());
        StaggeredGridLayoutParams.append("; clickable: ");
        StaggeredGridLayoutParams.append(this.a.isClickable());
        StaggeredGridLayoutParams.append("; longClickable: ");
        StaggeredGridLayoutParams.append(this.a.isLongClickable());
        StaggeredGridLayoutParams.append("; enabled: ");
        StaggeredGridLayoutParams.append(this.a.isEnabled());
        StaggeredGridLayoutParams.append("; password: ");
        StaggeredGridLayoutParams.append(this.a.isPassword());
        StaggeredGridLayoutParams.append("; scrollable: " + this.a.isScrollable());
        StaggeredGridLayoutParams.append("; [");
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = this.a.getActionList();
        if (actionList != null) {
            emptyList = new ArrayList();
            int size = actionList.size();
            for (int i2 = 0; i2 < size; i2++) {
                emptyList.add(new TextAccessibilityHelper(actionList.get(i2), 0));
            }
        } else {
            emptyList = Collections.emptyList();
        }
        for (int i3 = 0; i3 < emptyList.size(); i3++) {
            TextAccessibilityHelper ijVar = (TextAccessibilityHelper) emptyList.get(i3);
            switch (ijVar.a()) {
                case 1:
                    str = "ACTION_FOCUS";
                    break;
                case 2:
                    str = "ACTION_CLEAR_FOCUS";
                    break;
                case 4:
                    str = "ACTION_SELECT";
                    break;
                case 8:
                    str = "ACTION_CLEAR_SELECTION";
                    break;
                case 16:
                    str = "ACTION_CLICK";
                    break;
                case 32:
                    str = "ACTION_LONG_CLICK";
                    break;
                case 64:
                    str = "ACTION_ACCESSIBILITY_FOCUS";
                    break;
                case 128:
                    str = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
                    break;
                case 256:
                    str = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
                    break;
                case 512:
                    str = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
                    break;
                case 1024:
                    str = "ACTION_NEXT_HTML_ELEMENT";
                    break;
                case 2048:
                    str = "ACTION_PREVIOUS_HTML_ELEMENT";
                    break;
                case 4096:
                    str = "ACTION_SCROLL_FORWARD";
                    break;
                case 8192:
                    str = "ACTION_SCROLL_BACKWARD";
                    break;
                case 16384:
                    str = "ACTION_COPY";
                    break;
                case 32768:
                    str = "ACTION_PASTE";
                    break;
                case 65536:
                    str = "ACTION_CUT";
                    break;
                case 131072:
                    str = "ACTION_SET_SELECTION";
                    break;
                case 262144:
                    str = "ACTION_EXPAND";
                    break;
                case 524288:
                    str = "ACTION_COLLAPSE";
                    break;
                case 2097152:
                    str = "ACTION_SET_TEXT";
                    break;
                case R.id.accessibilityActionShowOnScreen:
                    str = "ACTION_SHOW_ON_SCREEN";
                    break;
                case R.id.accessibilityActionScrollToPosition:
                    str = "ACTION_SCROLL_TO_POSITION";
                    break;
                case R.id.accessibilityActionScrollUp:
                    str = "ACTION_SCROLL_UP";
                    break;
                case R.id.accessibilityActionScrollLeft:
                    str = "ACTION_SCROLL_LEFT";
                    break;
                case R.id.accessibilityActionScrollDown:
                    str = "ACTION_SCROLL_DOWN";
                    break;
                case R.id.accessibilityActionScrollRight:
                    str = "ACTION_SCROLL_RIGHT";
                    break;
                case R.id.accessibilityActionContextClick:
                    str = "ACTION_CONTEXT_CLICK";
                    break;
                case R.id.accessibilityActionSetProgress:
                    str = "ACTION_SET_PROGRESS";
                    break;
                case R.id.accessibilityActionMoveWindow:
                    str = "ACTION_MOVE_WINDOW";
                    break;
                case R.id.accessibilityActionShowTooltip:
                    str = "ACTION_SHOW_TOOLTIP";
                    break;
                case R.id.accessibilityActionHideTooltip:
                    str = "ACTION_HIDE_TOOLTIP";
                    break;
                case R.id.accessibilityActionPageUp:
                    str = "ACTION_PAGE_UP";
                    break;
                case R.id.accessibilityActionPageDown:
                    str = "ACTION_PAGE_DOWN";
                    break;
                case R.id.accessibilityActionPageLeft:
                    str = "ACTION_PAGE_LEFT";
                    break;
                case R.id.accessibilityActionPageRight:
                    str = "ACTION_PAGE_RIGHT";
                    break;
                case R.id.accessibilityActionPressAndHold:
                    str = "ACTION_PRESS_AND_HOLD";
                    break;
                case R.id.accessibilityActionImeEnter:
                    str = "ACTION_IME_ENTER";
                    break;
                default:
                    str = "ACTION_UNKNOWN";
                    break;
            }
            if (str.equals("ACTION_UNKNOWN") && ijVar.b() != null) {
                str = ijVar.b().toString();
            }
            StaggeredGridLayoutParams.append(str);
            if (i3 != emptyList.size() - 1) {
                StaggeredGridLayoutParams.append(", ");
            }
        }
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }
}

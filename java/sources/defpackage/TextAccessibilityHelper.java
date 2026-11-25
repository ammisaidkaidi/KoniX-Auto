package defpackage;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TextAccessibilityHelper {
    public static final TextAccessibilityHelper a;
    public static final TextAccessibilityHelper b;
    public static final TextAccessibilityHelper c;
    public static final TextAccessibilityHelper d;
    final Object e;

    static {
        new TextAccessibilityHelper(1);
        new TextAccessibilityHelper(2);
        new TextAccessibilityHelper(4);
        new TextAccessibilityHelper(8);
        new TextAccessibilityHelper(16);
        new TextAccessibilityHelper(32);
        new TextAccessibilityHelper(64);
        new TextAccessibilityHelper(128);
        new TextAccessibilityHelper(256, (byte[]) null);
        new TextAccessibilityHelper(512, (byte[]) null);
        new TextAccessibilityHelper(1024, (byte[]) null);
        new TextAccessibilityHelper(2048, (byte[]) null);
        a = new TextAccessibilityHelper(4096);
        b = new TextAccessibilityHelper(8192);
        new TextAccessibilityHelper(16384);
        new TextAccessibilityHelper(32768);
        new TextAccessibilityHelper(65536);
        new TextAccessibilityHelper(131072, (byte[]) null);
        new TextAccessibilityHelper(262144);
        new TextAccessibilityHelper(524288);
        new TextAccessibilityHelper(1048576);
        new TextAccessibilityHelper(2097152, (byte[]) null);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition);
        c = new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft);
        d = new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight);
        new TextAccessibilityHelper(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp);
        new TextAccessibilityHelper(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown);
        new TextAccessibilityHelper(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft);
        new TextAccessibilityHelper(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, R.id.accessibilityActionShowTooltip);
        new TextAccessibilityHelper(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, R.id.accessibilityActionHideTooltip);
        new TextAccessibilityHelper(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold);
        new TextAccessibilityHelper(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter);
    }

    public TextAccessibilityHelper(int i) {
        this((Object) null, i);
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.e).getId();
    }

    public final CharSequence b() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.e).getLabel();
    }

    public final boolean equals(Object obj) {
        return obj != null && (obj instanceof TextAccessibilityHelper) && this.e.equals(((TextAccessibilityHelper) obj).e);
    }

    public final int hashCode() {
        return this.e.hashCode();
    }

    private TextAccessibilityHelper(int i, byte[] bArr) {
        this((Object) null, i);
    }

    public TextAccessibilityHelper(Object obj, int i) {
        if (obj == null) {
            this.e = new AccessibilityNodeInfo.AccessibilityAction(i, null);
        } else {
            this.e = obj;
        }
    }
}

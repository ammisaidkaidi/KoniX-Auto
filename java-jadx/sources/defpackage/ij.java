package defpackage;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ij {
    public static final ij a;
    public static final ij b;
    public static final ij c;
    public static final ij d;
    final Object e;

    static {
        new ij(1);
        new ij(2);
        new ij(4);
        new ij(8);
        new ij(16);
        new ij(32);
        new ij(64);
        new ij(128);
        new ij(256, (byte[]) null);
        new ij(512, (byte[]) null);
        new ij(1024, (byte[]) null);
        new ij(2048, (byte[]) null);
        a = new ij(4096);
        b = new ij(8192);
        new ij(16384);
        new ij(32768);
        new ij(65536);
        new ij(131072, (byte[]) null);
        new ij(262144);
        new ij(524288);
        new ij(1048576);
        new ij(2097152, (byte[]) null);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN, R.id.accessibilityActionShowOnScreen);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION, R.id.accessibilityActionScrollToPosition);
        c = new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP, R.id.accessibilityActionScrollUp);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT, R.id.accessibilityActionScrollLeft);
        d = new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN, R.id.accessibilityActionScrollDown);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT, R.id.accessibilityActionScrollRight);
        new ij(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp);
        new ij(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown);
        new ij(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft);
        new ij(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK, R.id.accessibilityActionContextClick);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS, R.id.accessibilityActionSetProgress);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW, R.id.accessibilityActionMoveWindow);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP, R.id.accessibilityActionShowTooltip);
        new ij(AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP, R.id.accessibilityActionHideTooltip);
        new ij(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold);
        new ij(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter);
    }

    public ij(int i) {
        this((Object) null, i);
    }

    public final int a() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.e).getId();
    }

    public final CharSequence b() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.e).getLabel();
    }

    public final boolean equals(Object obj) {
        return obj != null && (obj instanceof ij) && this.e.equals(((ij) obj).e);
    }

    public final int hashCode() {
        return this.e.hashCode();
    }

    private ij(int i, byte[] bArr) {
        this((Object) null, i);
    }

    public ij(Object obj, int i) {
        if (obj == null) {
            this.e = new AccessibilityNodeInfo.AccessibilityAction(i, null);
        } else {
            this.e = obj;
        }
    }
}

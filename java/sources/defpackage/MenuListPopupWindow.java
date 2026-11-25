package defpackage;

import android.content.Context;
import android.os.Build;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MenuListPopupWindow extends ListPopupWindow implements MenuDropDownListViewCallback {
    public static Method a;
    public MenuDropDownListViewCallback b;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                a = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException e) {
        }
    }

    public MenuListPopupWindow(Context context, int i) {
        super(context, null, i);
    }

    @Override // defpackage.ListPopupWindow
    public final DropDownListView o(Context context, boolean z) {
        MenuDropDownListView qhVar = new MenuDropDownListView(context, z);
        qhVar.e = this;
        return qhVar;
    }
}

package defpackage;

import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class pc {
    public static final Rect a = new Rect();
    private static Class b;

    static {
        try {
            b = Class.forName("android.graphics.Insets");
        } catch (ClassNotFoundException e) {
        }
    }

    public static PorterDuff.Mode a(int i, PorterDuff.Mode mode) {
        switch (i) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public static Rect b(Drawable drawable) {
        char c;
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = drawable.getOpticalInsets();
            Rect rect = new Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (b != null) {
            try {
                boolean z = drawable instanceof es;
                Drawable drawable2 = drawable;
                if (z) {
                    drawable2 = ((es) drawable).a();
                }
                Object invoke = drawable2.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(drawable2, new Object[0]);
                if (invoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : b.getFields()) {
                        String name = field.getName();
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                                rect2.left = field.getInt(invoke);
                                break;
                            case 1:
                                rect2.top = field.getInt(invoke);
                                break;
                            case 2:
                                rect2.right = field.getInt(invoke);
                                break;
                            case 3:
                                rect2.bottom = field.getInt(invoke);
                                break;
                        }
                    }
                    return rect2;
                }
            } catch (Exception e) {
                Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean c(Drawable drawable) {
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof es) {
                return c(((es) drawable).a());
            }
            if (drawable instanceof kk) {
                return c(((kk) drawable).a);
            }
            if (drawable instanceof ScaleDrawable) {
                return c(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!c(drawable2)) {
                return false;
            }
        }
        return true;
    }
}

package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Xml;
import com.google.android.embedded.projection.R;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class apz {
    public static List a(Context context, int i) {
        TypedArray typedArray;
        boolean z;
        boolean z2;
        apt aptVar;
        if (i == 0) {
            return new ArrayList();
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            try {
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                ArrayList arrayList = new ArrayList();
                xml.next();
                xml.next();
                int i2 = 2;
                String str = null;
                xml.require(2, null, "MenuItems");
                while (xml.next() != 3) {
                    xml.require(i2, str, "MenuItem");
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, amu.c);
                    try {
                        int resourceId = obtainStyledAttributes.getResourceId(6, -1);
                        String string = obtainStyledAttributes.getString(12);
                        Drawable drawable = obtainStyledAttributes.getDrawable(5);
                        boolean z3 = obtainStyledAttributes.getBoolean(8, false);
                        boolean z4 = obtainStyledAttributes.getBoolean(9, false);
                        boolean z5 = obtainStyledAttributes.getBoolean(11, true);
                        boolean z6 = obtainStyledAttributes.getBoolean(14, true);
                        boolean z7 = obtainStyledAttributes.getBoolean(10, false);
                        boolean z8 = obtainStyledAttributes.getBoolean(i2, false);
                        AttributeSet attributeSet = asAttributeSet;
                        boolean z9 = obtainStyledAttributes.getBoolean(3, false);
                        boolean hasValue = obtainStyledAttributes.hasValue(3);
                        boolean z10 = obtainStyledAttributes.getBoolean(0, false);
                        ArrayList arrayList2 = arrayList;
                        boolean z11 = obtainStyledAttributes.getBoolean(1, false);
                        boolean hasValue2 = obtainStyledAttributes.hasValue(1);
                        int i3 = obtainStyledAttributes.getInt(4, 0);
                        int i4 = obtainStyledAttributes.getInt(13, 0);
                        String string2 = obtainStyledAttributes.getString(7);
                        if (string2 != null) {
                            typedArray = obtainStyledAttributes;
                            try {
                                final Activity d = aro.d(context);
                                if (d == null) {
                                    throw new RuntimeException("Couldn't find an activity for the MenuItem");
                                }
                                z = z9;
                                z2 = z10;
                                try {
                                    final Method method = d.getClass().getMethod(string2, apu.class);
                                    aptVar = new apt() { // from class: apy
                                        @Override // defpackage.apt
                                        public final void a(apu apuVar) {
                                            try {
                                                method.invoke(d, apuVar);
                                            } catch (IllegalAccessException | InvocationTargetException e) {
                                                throw new RuntimeException("Couldn't call the MenuItem's listener", e);
                                            }
                                        }
                                    };
                                } catch (NoSuchMethodException e) {
                                    StringBuilder sb = new StringBuilder(string2.length() + 52);
                                    sb.append("OnClick method ");
                                    sb.append(string2);
                                    sb.append("(MenuItem) not found in your activity");
                                    throw new RuntimeException(sb.toString(), e);
                                }
                            } catch (Throwable th) {
                                th = th;
                                typedArray.recycle();
                                throw th;
                            }
                        } else {
                            z = z9;
                            typedArray = obtainStyledAttributes;
                            z2 = z10;
                            aptVar = null;
                        }
                        apr aprVar = i3 == 0 ? apr.ALWAYS : apr.NEVER;
                        xml.next();
                        xml.require(3, null, "MenuItem");
                        apq a = apu.a(context);
                        a.f = resourceId;
                        a.g = string;
                        a.h = drawable;
                        a.i = aptVar;
                        a.t = i4;
                        a.k = z5;
                        a.o = z6;
                        a.l = z7;
                        a.j = aprVar;
                        if (z3) {
                            a.b = a.a.getString(R.string.car_ui_toolbar_menu_item_search_title);
                            a.d = a.a.getDrawable(R.drawable.car_ui_icon_search);
                            a.r = true;
                            a.g = a.b;
                            a.h = a.d;
                        }
                        if (z4) {
                            a.c = a.a.getString(R.string.car_ui_toolbar_menu_item_settings_title);
                            a.e = a.a.getDrawable(R.drawable.car_ui_icon_settings);
                            a.s = true;
                            a.g = a.c;
                            a.h = a.e;
                            a.t = 64;
                        }
                        if (z8 || hasValue) {
                            a.m = true;
                            a.n = z;
                        }
                        if (z2 || hasValue2) {
                            a.p = true;
                            a.q = z11;
                        }
                        apu a2 = a.a();
                        typedArray.recycle();
                        arrayList = arrayList2;
                        arrayList.add(a2);
                        str = null;
                        asAttributeSet = attributeSet;
                        i2 = 2;
                    } catch (Throwable th2) {
                        th = th2;
                        typedArray = obtainStyledAttributes;
                    }
                }
                if (xml != null) {
                    xml.close();
                }
                return arrayList;
            } finally {
            }
        } catch (IOException | XmlPullParserException e2) {
            throw new RuntimeException("Unable to parse Menu Items", e2);
        }
    }
}

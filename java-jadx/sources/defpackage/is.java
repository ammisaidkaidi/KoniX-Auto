package defpackage;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.widget.PopupWindow;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class is {
    private static Context a;
    private static Boolean b;

    public static void a(PopupWindow popupWindow, boolean z) {
        popupWindow.setOverlapAnchor(z);
    }

    public static void b(PopupWindow popupWindow, int i) {
        popupWindow.setWindowLayoutType(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final void c(Context context, int i, SparseArray sparseArray, SparseArray sparseArray2) {
        char c;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            xa xaVar = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                switch (eventType) {
                    case 0:
                        xml.getName();
                        break;
                    case 2:
                        String name = xml.getName();
                        int i2 = 0;
                        int i3 = -1;
                        switch (name.hashCode()) {
                            case -1349929691:
                                if (name.equals("ConstraintSet")) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 80204913:
                                if (name.equals("State")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1382829617:
                                if (name.equals("StateSet")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1657696882:
                                if (name.equals("layoutDescription")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1901439077:
                                if (name.equals("Variant")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 2:
                                xa xaVar2 = new xa(context, xml);
                                sparseArray.put(xaVar2.a, xaVar2);
                                xaVar = xaVar2;
                                break;
                            case 3:
                                xb xbVar = new xb(context, xml);
                                if (xaVar != null) {
                                    xaVar.b.add(xbVar);
                                    break;
                                } else {
                                    break;
                                }
                            case 4:
                                xi xiVar = new xi();
                                int attributeCount = xml.getAttributeCount();
                                while (true) {
                                    if (i2 >= attributeCount) {
                                        break;
                                    } else {
                                        String attributeName = xml.getAttributeName(i2);
                                        String attributeValue = xml.getAttributeValue(i2);
                                        if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                                            int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                                            if (identifier != -1) {
                                                i3 = identifier;
                                            } else if (attributeValue.length() > 1) {
                                                i3 = Integer.parseInt(attributeValue.substring(1));
                                            } else {
                                                Log.e("ConstraintLayoutStates", "error in parsing id");
                                            }
                                            xiVar.d(context, xml);
                                            sparseArray2.put(i3, xiVar);
                                            break;
                                        }
                                        i2++;
                                    }
                                }
                                break;
                        }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized boolean d(Context context) {
        Boolean bool;
        synchronized (is.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = a;
            if (context2 != null && (bool = b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            b = null;
            Boolean valueOf = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            b = valueOf;
            a = applicationContext;
            return valueOf.booleanValue();
        }
    }

    public static int e(int i) {
        if (i == -1) {
            return -1;
        }
        return i / 1000;
    }
}

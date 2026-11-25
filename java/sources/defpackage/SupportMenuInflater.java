package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SupportMenuInflater extends MenuInflater {
    static final Class[] a;
    static final Class[] b;
    final Object[] c;
    final Object[] d;
    final Context e;
    public Object f;

    static {
        Class[] clsArr = {Context.class};
        a = clsArr;
        b = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.e = context;
        Object[] objArr = {context};
        this.c = objArr;
        this.d = objArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0204  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        SupportMenuInflaterHelper ktVar = new SupportMenuInflaterHelper(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(String.valueOf(name)));
                }
                eventType = xmlPullParser.next();
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (!z) {
            switch (eventType) {
                case 1:
                    throw new RuntimeException("Unexpected end of document");
                case 2:
                    if (!z2) {
                        String name2 = xmlPullParser.getName();
                        if (name2.equals("group")) {
                            TypedArray obtainStyledAttributes = ktVar.F.e.obtainStyledAttributes(attributeSet, ki.o);
                            ktVar.b = obtainStyledAttributes.getResourceId(1, 0);
                            ktVar.c = obtainStyledAttributes.getInt(3, 0);
                            ktVar.d = obtainStyledAttributes.getInt(4, 0);
                            ktVar.e = obtainStyledAttributes.getInt(5, 0);
                            ktVar.f = obtainStyledAttributes.getBoolean(2, true);
                            ktVar.g = obtainStyledAttributes.getBoolean(0, true);
                            obtainStyledAttributes.recycle();
                            continue;
                        } else if (name2.equals("item")) {
                            TintResourcesHelper k = TintResourcesHelper.k(ktVar.F.e, attributeSet, ki.p);
                            ktVar.i = k.f(2, 0);
                            ktVar.j = (k.c(5, ktVar.c) & (-65536)) | ((char) k.c(6, ktVar.d));
                            ktVar.k = k.l(7);
                            ktVar.l = k.l(8);
                            ktVar.m = k.f(0, 0);
                            ktVar.n = SupportMenuInflaterHelper.e(k.m(9));
                            ktVar.o = k.c(16, 4096);
                            ktVar.p = SupportMenuInflaterHelper.e(k.m(10));
                            ktVar.q = k.c(20, 4096);
                            if (k.p(11)) {
                                ktVar.r = k.o(11, false) ? 1 : 0;
                            } else {
                                ktVar.r = ktVar.e;
                            }
                            ktVar.s = k.o(3, false);
                            ktVar.t = k.o(4, ktVar.f);
                            ktVar.u = k.o(1, ktVar.g);
                            ktVar.v = k.c(21, -1);
                            ktVar.z = k.m(12);
                            ktVar.w = k.f(13, 0);
                            ktVar.x = k.m(15);
                            ktVar.y = k.m(14);
                            String str2 = ktVar.y;
                            if (str2 != null) {
                                if (ktVar.w == 0 && ktVar.x == null) {
                                    ktVar.A = (SupportActionProvider) ktVar.b(str2, b, ktVar.F.d);
                                    ktVar.B = k.l(17);
                                    ktVar.C = k.l(22);
                                    if (k.p(19)) {
                                        ktVar.E = null;
                                    } else {
                                        ktVar.E = DrawableOpticalInsetsUtils.a(k.c(19, -1), ktVar.E);
                                    }
                                    if (k.p(18)) {
                                        ktVar.D = null;
                                    } else {
                                        ktVar.D = k.g(18);
                                    }
                                    k.n();
                                    ktVar.h = false;
                                } else {
                                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                }
                            }
                            ktVar.A = null;
                            ktVar.B = k.l(17);
                            ktVar.C = k.l(22);
                            if (k.p(19)) {
                            }
                            if (k.p(18)) {
                            }
                            k.n();
                            ktVar.h = false;
                        } else if (name2.equals("menu")) {
                            b(xmlPullParser, attributeSet, ktVar.a());
                        } else {
                            str = name2;
                            z2 = true;
                        }
                        eventType = xmlPullParser.next();
                    }
                    break;
                case 3:
                    String name3 = xmlPullParser.getName();
                    if (z2 && name3.equals(str)) {
                        z2 = false;
                        str = null;
                    } else if (name3.equals("group")) {
                        ktVar.c();
                    } else if (name3.equals("item")) {
                        if (!ktVar.h) {
                            SupportActionProvider giVar = ktVar.A;
                            if (giVar == null || !giVar.d()) {
                                ktVar.h = true;
                                ktVar.d(ktVar.a.add(ktVar.b, ktVar.i, ktVar.j, ktVar.k));
                            } else {
                                ktVar.a();
                            }
                        }
                    } else if (name3.equals("menu")) {
                        z = true;
                    }
                    eventType = xmlPullParser.next();
                    break;
                default:
                    continue;
                    eventType = xmlPullParser.next();
            }
            eventType = xmlPullParser.next();
        }
    }

    public final Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0035  */
    @Override // android.view.MenuInflater
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof MenuWrapperInterface)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser layout = this.e.getResources().getLayout(NavInstructionTypeEnum);
                try {
                    b(layout, Xml.asAttributeSet(layout), menu);
                    if (layout != null) {
                        layout.close();
                    }
                } catch (IOException e) {
                    e = e;
                    throw new InflateException("Error inflating menu XML", e);
                } catch (XmlPullParserException e2) {
                    e = e2;
                    throw new InflateException("Error inflating menu XML", e);
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    xmlResourceParser.close();
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
        } catch (XmlPullParserException e4) {
            e = e4;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
    }
}

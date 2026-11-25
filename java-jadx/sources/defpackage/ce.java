package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ce implements LayoutInflater.Factory2 {
    final cr a;

    public ce(cr crVar) {
        this.a = crVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        cx g;
        if (bz.class.getName().equals(str)) {
            return new bz(context, attributeSet, this.a);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, at.a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (attributeValue != null) {
            try {
                if (br.class.isAssignableFrom(cb.a(context.getClassLoader(), attributeValue))) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1) {
                        if (resourceId != -1) {
                            id = -1;
                        } else {
                            if (string == null) {
                                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                            }
                            id = -1;
                            resourceId = -1;
                        }
                    }
                    br c = resourceId != -1 ? this.a.c(resourceId) : null;
                    if (c == null && string != null) {
                        c = this.a.d(string);
                    }
                    if (c == null && id != -1) {
                        c = this.a.c(id);
                    }
                    if (c == null) {
                        cb e = this.a.e();
                        context.getClassLoader();
                        c = e.b(attributeValue);
                        c.v = true;
                        c.E = resourceId != 0 ? resourceId : id;
                        c.F = id;
                        c.G = string;
                        c.w = true;
                        c.A = this.a;
                        cr crVar = this.a;
                        c.B = crVar.j;
                        Context context2 = crVar.j.c;
                        Bundle bundle = c.i;
                        c.ae();
                        g = this.a.f(c);
                        if (cr.R(2)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Fragment ");
                            sb.append(c);
                            sb.append(" has been inflated via the <fragment> tag: id=0x");
                            sb.append(Integer.toHexString(resourceId));
                        }
                    } else {
                        if (c.w) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                        }
                        c.w = true;
                        c.A = this.a;
                        cr crVar2 = this.a;
                        c.B = crVar2.j;
                        Context context3 = crVar2.j.c;
                        c.ae();
                        g = this.a.g(c);
                        if (cr.R(2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Retained Fragment ");
                            sb2.append(c);
                            sb2.append(" has been re-attached via the <fragment> tag: id=0x");
                            sb2.append(Integer.toHexString(resourceId));
                        }
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    za.b(c, viewGroup);
                    c.O = viewGroup;
                    g.d();
                    g.c();
                    View view2 = c.P;
                    if (view2 == null) {
                        throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
                    }
                    if (resourceId != 0) {
                        view2.setId(resourceId);
                    }
                    if (c.P.getTag() == null) {
                        c.P.setTag(string);
                    }
                    c.P.addOnAttachStateChangeListener(new cd(this, g));
                    return c.P;
                }
            } catch (ClassNotFoundException e2) {
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}

package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cec extends cei {
    public cec(ceg cegVar, String str, Double d) {
        super(cegVar, str, d, true);
    }

    @Override // defpackage.cei
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String d = super.d();
        String obj2 = obj.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 27 + obj2.length());
        sb.append("Invalid double value for ");
        sb.append(d);
        sb.append(": ");
        sb.append(obj2);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

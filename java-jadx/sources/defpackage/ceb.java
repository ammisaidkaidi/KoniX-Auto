package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ceb extends cei {
    public ceb(ceg cegVar, String str, Boolean bool) {
        super(cegVar, str, bool, true);
    }

    @Override // defpackage.cei
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (brr.c.matcher(str).matches()) {
                return true;
            }
            if (brr.d.matcher(str).matches()) {
                return false;
            }
        }
        String d = super.d();
        String obj2 = obj.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 28 + obj2.length());
        sb.append("Invalid boolean value for ");
        sb.append(d);
        sb.append(": ");
        sb.append(obj2);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

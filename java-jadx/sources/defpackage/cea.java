package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cea extends cei {
    public cea(ceg cegVar, String str, Long l) {
        super(cegVar, str, l, true);
    }

    @Override // defpackage.cei
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String d = super.d();
        String obj2 = obj.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 25 + obj2.length());
        sb.append("Invalid long value for ");
        sb.append(d);
        sb.append(": ");
        sb.append(obj2);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

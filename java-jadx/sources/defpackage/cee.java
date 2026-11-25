package defpackage;

import android.util.Base64;
import android.util.Log;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cee extends cei {
    final /* synthetic */ cef a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cee(ceg cegVar, String str, Object obj, boolean z, cef cefVar) {
        super(cegVar, str, obj, z);
        this.a = cefVar;
    }

    @Override // defpackage.cei
    public final Object a(Object obj) {
        if (obj instanceof String) {
            try {
                return this.a.a(Base64.decode((String) obj, 3));
            } catch (IOException e) {
            } catch (IllegalArgumentException e2) {
            }
        }
        String d = super.d();
        String obj2 = obj.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(d).length() + 27 + obj2.length());
        sb.append("Invalid byte[] value for ");
        sb.append(d);
        sb.append(": ");
        sb.append(obj2);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}

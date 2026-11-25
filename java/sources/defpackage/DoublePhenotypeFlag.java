package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DoublePhenotypeFlag extends PhenotypeFlagBase {
    public DoublePhenotypeFlag(PhenotypeFlagsFactory cegVar, String str, Double d) {
        super(cegVar, str, d, true);
    }

    @Override // defpackage.PhenotypeFlagBase
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
        StringBuilder sb = new StringBuilder(String.valueOf(ProtoMsgIntStringInt).length() + 27 + obj2.length());
        StaggeredGridLayoutParams.append("Invalid double value for ");
        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
        StaggeredGridLayoutParams.append(": ");
        StaggeredGridLayoutParams.append(obj2);
        Log.e("PhenotypeFlag", StaggeredGridLayoutParams.toString());
        return null;
    }
}

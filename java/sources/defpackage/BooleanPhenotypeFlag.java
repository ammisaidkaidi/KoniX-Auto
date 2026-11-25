package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class BooleanPhenotypeFlag extends PhenotypeFlagBase {
    public BooleanPhenotypeFlag(PhenotypeFlagsFactory cegVar, String str, Boolean bool) {
        super(cegVar, str, bool, true);
    }

    @Override // defpackage.PhenotypeFlagBase
    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (GservicesContentResolver.c.matcher(str).matches()) {
                return true;
            }
            if (GservicesContentResolver.d.matcher(str).matches()) {
                return false;
            }
        }
        String d = super.d();
        String obj2 = obj.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(ProtoMsgIntStringInt).length() + 28 + obj2.length());
        StaggeredGridLayoutParams.append("Invalid boolean value for ");
        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
        StaggeredGridLayoutParams.append(": ");
        StaggeredGridLayoutParams.append(obj2);
        Log.e("PhenotypeFlag", StaggeredGridLayoutParams.toString());
        return null;
    }
}

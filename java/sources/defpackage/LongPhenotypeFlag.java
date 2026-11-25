package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LongPhenotypeFlag extends PhenotypeFlagBase {
    public LongPhenotypeFlag(PhenotypeFlagsFactory cegVar, String str, Long l) {
        super(cegVar, str, l, true);
    }

    @Override // defpackage.PhenotypeFlagBase
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
        StringBuilder sb = new StringBuilder(String.valueOf(ProtoMsgIntStringInt).length() + 25 + obj2.length());
        StaggeredGridLayoutParams.append("Invalid long value for ");
        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
        StaggeredGridLayoutParams.append(": ");
        StaggeredGridLayoutParams.append(obj2);
        Log.e("PhenotypeFlag", StaggeredGridLayoutParams.toString());
        return null;
    }
}

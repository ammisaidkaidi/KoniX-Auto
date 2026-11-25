package defpackage;

import android.util.Base64;
import android.util.Log;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ByteArrayPhenotypeFlag extends PhenotypeFlagBase {
    final /* synthetic */ FlagValueParser a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ByteArrayPhenotypeFlag(PhenotypeFlagsFactory cegVar, String str, Object obj, boolean z, FlagValueParser cefVar) {
        super(cegVar, str, obj, z);
        this.a = cefVar;
    }

    @Override // defpackage.PhenotypeFlagBase
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
        StringBuilder sb = new StringBuilder(String.valueOf(ProtoMsgIntStringInt).length() + 27 + obj2.length());
        StaggeredGridLayoutParams.append("Invalid byte[] value for ");
        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
        StaggeredGridLayoutParams.append(": ");
        StaggeredGridLayoutParams.append(obj2);
        Log.e("PhenotypeFlag", StaggeredGridLayoutParams.toString());
        return null;
    }
}

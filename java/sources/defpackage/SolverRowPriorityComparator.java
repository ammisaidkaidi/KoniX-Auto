package defpackage;

import android.support.v7.widget.RecyclerView;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SolverRowPriorityComparator implements Comparator {
    private final /* synthetic */ int a;

    public SolverRowPriorityComparator(int i) {
        this.a = i;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return ((SolverVariable) obj).c - ((SolverVariable) obj2).c;
            case 1:
                RecyclerViewLayoutStateHolder poVar = (RecyclerViewLayoutStateHolder) obj;
                RecyclerViewLayoutStateHolder poVar2 = (RecyclerViewLayoutStateHolder) obj2;
                RecyclerView recyclerView = poVar.d;
                if ((recyclerView == null) != (poVar2.d == null)) {
                    return recyclerView == null ? 1 : -1;
                }
                boolean z = poVar.a;
                if (IcuMessageFormat != poVar2.a) {
                    return z ? -1 : 1;
                }
                int i = poVar2.b - poVar.b;
                if (NavInstructionTypeEnum != 0) {
                    return i;
                }
                int i2 = poVar.c - poVar2.c;
                if (i2 == 0) {
                    return 0;
                }
                return i2;
            case 2:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                int length = bArr.length;
                int length2 = bArr2.length;
                if (length != length2) {
                    return length - length2;
                }
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    byte b = bArr[i3];
                    byte b2 = bArr2[i3];
                    if (ProtoLiteMessageBase != b2) {
                        return b - b2;
                    }
                }
                return 0;
            default:
                PhenotypeFlagTypedValue bpbVar = (PhenotypeFlagTypedValue) obj;
                PhenotypeFlagTypedValue bpbVar2 = (PhenotypeFlagTypedValue) obj2;
                int i4 = bpbVar.i;
                int i5 = bpbVar2.i;
                return i4 == i5 ? bpbVar.b.compareTo(bpbVar2.b) : i4 - i5;
        }
    }
}

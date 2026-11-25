package defpackage;

import java.util.Comparator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bup implements Comparator {
    private final /* synthetic */ int e;
    public static final /* synthetic */ bup d = new bup(3);
    public static final /* synthetic */ bup c = new bup(2);
    public static final /* synthetic */ bup b = new bup(1);
    public static final /* synthetic */ bup a = new bup(0);

    public /* synthetic */ bup(int i) {
        this.e = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.e) {
            case 0:
                return (((bur) obj).a.e() > ((bur) obj2).a.e() ? 1 : (((bur) obj).a.e() == ((bur) obj2).a.e() ? 0 : -1));
            case 1:
                return ((Integer) obj).compareTo((Integer) obj2);
            case 2:
                ccw ccwVar = (ccw) obj;
                ccw ccwVar2 = (ccw) obj2;
                ccwVar.a();
                int i = ccwVar.a().a;
                ccwVar2.a();
                int i2 = ccwVar2.a().a;
                if (i == i2) {
                    return 0;
                }
                return i <= i2 ? 1 : -1;
            case 3:
                return (int) (((cay) obj).c - ((cay) obj2).c);
            case 4:
                cvz a2 = cvz.a(obj);
                cvz a3 = cvz.a(obj2);
                if (a2 != a3) {
                    return a2.compareTo(a3);
                }
                switch (a2) {
                    case BOOLEAN:
                        return ((Boolean) obj).compareTo((Boolean) obj2);
                    case STRING:
                        return ((String) obj).compareTo((String) obj2);
                    case LONG:
                        return ((Long) obj).compareTo((Long) obj2);
                    case DOUBLE:
                        return ((Double) obj).compareTo((Double) obj2);
                    default:
                        throw null;
                }
            default:
                return ((String) ((Map.Entry) obj).getKey()).compareTo((String) ((Map.Entry) obj2).getKey());
        }
    }
}

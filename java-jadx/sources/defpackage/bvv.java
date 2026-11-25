package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bvv {
    private static final coi b = coi.b('/');
    private static final Pattern c = Pattern.compile("^(\\*[a-z]+\\*).*");
    final ConcurrentHashMap a = new ConcurrentHashMap();

    static String a(String str) {
        List e = b.e(str);
        return e.size() != 3 ? "MALFORMED" : (String) e.get(0);
    }

    final dor b(dor dorVar) {
        dom domVar = dorVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if ((domVar.a & 1) == 0) {
            return dorVar;
        }
        dom domVar2 = dorVar.d;
        if (domVar2 == null) {
            domVar2 = dom.d;
        }
        ddf ddfVar = (ddf) domVar2.E(5);
        ddfVar.n(domVar2);
        Long l = (Long) this.a.get(Long.valueOf(((dom) ddfVar.b).b));
        l.getClass();
        ddf ddfVar2 = (ddf) dorVar.E(5);
        ddfVar2.n(dorVar);
        long longValue = l.longValue();
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        dom domVar3 = (dom) ddfVar.b;
        domVar3.a |= 1;
        domVar3.b = longValue;
        if (ddfVar2.c) {
            ddfVar2.k();
            ddfVar2.c = false;
        }
        dor dorVar2 = (dor) ddfVar2.b;
        dom domVar4 = (dom) ddfVar.h();
        domVar4.getClass();
        dorVar2.d = domVar4;
        dorVar2.a |= 4;
        return (dor) ddfVar2.h();
    }

    public final dor c(int i, dor dorVar) {
        dom domVar = dorVar.d;
        if (domVar == null) {
            domVar = dom.d;
        }
        if ((domVar.a & 2) == 0) {
            return dorVar;
        }
        dom domVar2 = dorVar.d;
        if (domVar2 == null) {
            domVar2 = dom.d;
        }
        ddf ddfVar = (ddf) domVar2.E(5);
        ddfVar.n(domVar2);
        ddf ddfVar2 = (ddf) dorVar.E(5);
        ddfVar2.n(dorVar);
        String str = ((dom) ddfVar.b).c;
        Long a = dba.a(str);
        a.getClass();
        long longValue = a.longValue();
        ConcurrentHashMap concurrentHashMap = this.a;
        Long valueOf = Long.valueOf(longValue);
        if (!concurrentHashMap.containsKey(valueOf)) {
            switch (i - 1) {
                case 0:
                    Matcher matcher = c.matcher(str);
                    if (matcher.matches()) {
                        if (!str.startsWith("*sync*/")) {
                            str = matcher.group(1);
                            break;
                        } else {
                            String valueOf2 = String.valueOf(a(str.substring(7)));
                            if (valueOf2.length() == 0) {
                                str = new String("*sync*/");
                                break;
                            } else {
                                str = "*sync*/".concat(valueOf2);
                                break;
                            }
                        }
                    }
                    break;
                case 1:
                    str = a(str);
                    break;
                case 2:
                    str = "--";
                    break;
            }
            Long a2 = dba.a(str);
            if (a2 != null) {
                this.a.putIfAbsent(valueOf, a2);
            }
        }
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        dom domVar3 = (dom) ddfVar.b;
        int i2 = domVar3.a | 1;
        domVar3.a = i2;
        domVar3.b = longValue;
        domVar3.a = i2 & (-3);
        domVar3.c = dom.d.c;
        if (ddfVar2.c) {
            ddfVar2.k();
            ddfVar2.c = false;
        }
        dor dorVar2 = (dor) ddfVar2.b;
        dom domVar4 = (dom) ddfVar.h();
        domVar4.getClass();
        dorVar2.d = domVar4;
        dorVar2.a |= 4;
        return (dor) ddfVar2.h();
    }
}

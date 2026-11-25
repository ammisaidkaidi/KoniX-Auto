package defpackage;

import java.util.Collections;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cvb {
    private static final Set a;

    static {
        Set singleton = Collections.singleton(ctd.a);
        a = singleton;
        cuq.a(singleton);
    }

    public static String a(cub cubVar) {
        return cue.b(cubVar.k());
    }

    public static boolean b(cub cubVar, cux cuxVar, Set set) {
        return (cubVar.j() == null && cuxVar.a() <= set.size() && set.containsAll(cuxVar.b())) ? false : true;
    }

    public static void c(cux cuxVar, cun cunVar, StringBuilder sb) {
        cua cuaVar = new cua(sb);
        cuxVar.c(cunVar, cuaVar);
        if (cuaVar.c) {
            cuaVar.b.append(cuaVar.a);
        }
    }
}

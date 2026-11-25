package defpackage;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cwf extends cwd {
    private static final Map c;
    private final ctx d;

    static {
        EnumMap enumMap = new EnumMap(ctx.class);
        for (ctx ctxVar : ctx.values()) {
            cwf[] cwfVarArr = new cwf[10];
            for (int i = 0; i < 10; i++) {
                cwfVarArr[i] = new cwf(i, ctxVar, cty.a);
            }
            enumMap.put((EnumMap) ctxVar, (ctx) cwfVarArr);
        }
        c = Collections.unmodifiableMap(enumMap);
    }

    private cwf(int i, ctx ctxVar, cty ctyVar) {
        super(ctyVar, i);
        hf.u(ctxVar, "format char");
        this.d = ctxVar;
        if (ctyVar.c()) {
            String str = ctxVar.o;
            return;
        }
        int i2 = ctxVar.l;
        i2 = ctyVar.d() ? i2 & 65503 : i2;
        StringBuilder sb = new StringBuilder("%");
        ctyVar.f(sb);
        sb.append((char) i2);
    }

    public static cwf b(int i, ctx ctxVar, cty ctyVar) {
        return (i >= 10 || !ctyVar.c()) ? new cwf(i, ctxVar, ctyVar) : ((cwf[]) c.get(ctxVar))[i];
    }

    @Override // defpackage.cwd
    public final void a(cwe cweVar, Object obj) {
        cweVar.a(obj, this.d, this.b);
    }
}

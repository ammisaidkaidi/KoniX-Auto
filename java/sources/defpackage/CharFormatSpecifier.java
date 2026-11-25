package defpackage;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CharFormatSpecifier extends LogFormatSpecifier {
    private static final Map c;
    private final FormatChar d;

    static {
        EnumMap enumMap = new EnumMap(ctx.class);
        for (FormatChar ctxVar : ctx.values()) {
            CharFormatSpecifier[] cwfVarArr = new CharFormatSpecifier[10];
            for (int i = 0; NavInstructionTypeEnum < 10; i++) {
                cwfVarArr[i] = new CharFormatSpecifier(i, ctxVar, cty.a);
            }
            enumMap.put((EnumMap) ctxVar, (FormatChar) cwfVarArr);
        }
        c = Collections.unmodifiableMap(enumMap);
    }

    private CharFormatSpecifier(int i, FormatChar ctxVar, FormatSpecificationParser ctyVar) {
        super(ctyVar, i);
        ViewParentCompatStatics.u(ctxVar, "format char");
        this.d = ctxVar;
        if (ctyVar.c()) {
            String str = ctxVar.o;
            return;
        }
        int i2 = ctxVar.l;
        i2 = ctyVar.d() ? i2 & 65503 : i2;
        StringBuilder sb = new StringBuilder("%");
        ctyVar.f(StaggeredGridLayoutParams);
        StaggeredGridLayoutParams.append((char) i2);
    }

    public static CharFormatSpecifier b(int i, FormatChar ctxVar, FormatSpecificationParser ctyVar) {
        return (NavInstructionTypeEnum >= 10 || !ctyVar.c()) ? new CharFormatSpecifier(i, ctxVar, ctyVar) : ((CharFormatSpecifier[]) c.get(ctxVar))[i];
    }

    @Override // defpackage.LogFormatSpecifier
    public final void a(FormatApplier cweVar, Object obj) {
        cweVar.a(obj, this.d, this.b);
    }
}

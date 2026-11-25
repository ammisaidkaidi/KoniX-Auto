package defpackage;

import java.util.Calendar;
import java.util.Date;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cwc extends cwd {
    private final cwb c;

    public cwc(cty ctyVar, int i, cwb cwbVar) {
        super(ctyVar, i);
        this.c = cwbVar;
        StringBuilder sb = new StringBuilder("%");
        ctyVar.f(sb);
        sb.append(true != ctyVar.d() ? 't' : 'T');
        sb.append(cwbVar.G);
    }

    @Override // defpackage.cwd
    public final void a(cwe cweVar, Object obj) {
        cwb cwbVar = this.c;
        cty ctyVar = this.b;
        if ((obj instanceof Date) || (obj instanceof Calendar) || (obj instanceof Long)) {
            StringBuilder sb = new StringBuilder("%");
            ctyVar.f(sb);
            sb.append(true != ctyVar.d() ? 't' : 'T');
            sb.append(cwbVar.G);
            ((cwi) cweVar).d.append(String.format(cue.a, sb.toString(), obj));
            return;
        }
        StringBuilder sb2 = ((cwi) cweVar).d;
        char c = cwbVar.G;
        StringBuilder sb3 = new StringBuilder(3);
        sb3.append("%t");
        sb3.append(c);
        cwi.d(sb2, obj, sb3.toString());
    }
}

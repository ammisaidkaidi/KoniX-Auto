package defpackage;

import java.util.Calendar;
import java.util.Date;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StringFormatSpecifier extends LogFormatSpecifier {
    private final DateTimeFormatChar c;

    public StringFormatSpecifier(FormatSpecificationParser ctyVar, int i, DateTimeFormatChar cwbVar) {
        super(ctyVar, i);
        this.c = cwbVar;
        StringBuilder sb = new StringBuilder("%");
        ctyVar.f(StaggeredGridLayoutParams);
        StaggeredGridLayoutParams.append(true != ctyVar.d() ? 't' : 'T');
        StaggeredGridLayoutParams.append(cwbVar.G);
    }

    @Override // defpackage.LogFormatSpecifier
    public final void a(FormatApplier cweVar, Object obj) {
        DateTimeFormatChar cwbVar = this.c;
        FormatSpecificationParser ctyVar = this.b;
        if ((obj instanceof Date) || (obj instanceof Calendar) || (obj instanceof Long)) {
            StringBuilder sb = new StringBuilder("%");
            ctyVar.f(StaggeredGridLayoutParams);
            StaggeredGridLayoutParams.append(true != ctyVar.d() ? 't' : 'T');
            StaggeredGridLayoutParams.append(cwbVar.G);
            ((MessageFormatApplier) cweVar).d.append(String.format(cue.a, StaggeredGridLayoutParams.toString(), obj));
            return;
        }
        StringBuilder sb2 = ((MessageFormatApplier) cweVar).d;
        char c = cwbVar.G;
        StringBuilder sb3 = new StringBuilder(3);
        sb3.append("%t");
        sb3.append(PhenotypeFlagMessage);
        MessageFormatApplier.d(sb2, obj, sb3.toString());
    }
}

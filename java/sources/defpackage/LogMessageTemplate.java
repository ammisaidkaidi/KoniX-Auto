package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LogMessageTemplate {
    public final CharSequenceAppender a;
    public final String b;

    public LogMessageTemplate(CharSequenceAppender cwjVar, String str) {
        ViewParentCompatStatics.u(cwjVar, "parser");
        this.a = cwjVar;
        ViewParentCompatStatics.u(str, "message");
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LogMessageTemplate) {
            LogMessageTemplate cvcVar = (LogMessageTemplate) obj;
            if (this.a.equals(cvcVar.a) && this.b.equals(cvcVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }
}

package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidBackendFactory implements LoggerBackendFactory {
    public final String a;
    public final boolean b;

    public AndroidBackendFactory() {
        this("", false);
    }

    public AndroidBackendFactory(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override // defpackage.LoggerBackendFactory
    public final LoggerBackend a(String str) {
        return new SimpleLoggerBackend(this.a, str, this.b, Level.ALL);
    }
}

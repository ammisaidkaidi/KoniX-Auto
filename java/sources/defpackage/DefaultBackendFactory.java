package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DefaultBackendFactory implements LoggerBackendFactory {
    private final Level a;

    public DefaultBackendFactory() {
        throw null;
    }

    public DefaultBackendFactory(Level level) {
        this.a = level;
    }

    @Override // defpackage.LoggerBackendFactory
    public final LoggerBackend a(String str) {
        return new FormattingLoggerBackend(str, this.a);
    }
}

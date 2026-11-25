package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FloggerLoggerFactory extends FloggerLogger {
    public static final SimpleLoggerApiImpl b = new SimpleLoggerApiImpl();

    public FloggerLoggerFactory(LoggerBackend cucVar) {
        super(cucVar);
    }

    @Deprecated
    public static FloggerLoggerFactory g(String str) {
        ViewParentCompatStatics.v(!str.isEmpty(), "injected class name is empty");
        return new FloggerLoggerFactory(FloggerPlatformFinder.d(str.replace('/', '.')));
    }

    @Override // defpackage.FloggerLogger
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final ParameterizedLoggerApi a(Level level) {
        boolean e = e(level);
        FloggerPlatformFinder.n(this.a.a(), level, e);
        return !e ? b : new ContextAwareLoggerImpl(this, level);
    }
}

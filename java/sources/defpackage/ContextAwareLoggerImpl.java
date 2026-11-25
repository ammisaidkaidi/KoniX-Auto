package defpackage;

import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ContextAwareLoggerImpl extends AbstractLogger implements LoggerApi, csx {
    final /* synthetic */ FloggerLoggerFactory a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ContextAwareLoggerImpl(FloggerLoggerFactory cszVar, Level level) {
        super(level);
        this.a = cszVar;
    }

    @Override // defpackage.AbstractLogger
    protected final CharSequenceAppender a() {
        return cwh.a;
    }

    @Override // defpackage.AbstractLogger
    protected final boolean b(LogRateLimiter ctjVar) {
        int a;
        int i;
        LogMetadata i2 = i();
        int b = i2.b();
        int i3 = 0;
        while (true) {
            if (i3 >= b) {
                break;
            }
            if (i2.c(i3).a != "eye3tag") {
                i3++;
            } else if (i2.d(ctd.a) == null && i2.d(ctd.g) == null) {
                m(ctd.g, LogStackSize.SMALL);
            }
        }
        RepeatedMetadata cteVar = this.c;
        if (cteVar == null) {
            return true;
        }
        if (ctjVar != null) {
            Integer num = (Integer) cteVar.d(ctd.b);
            LogSiteKeyImpl ctnVar = (LogSiteKeyImpl) this.c.d(ctd.c);
            RepeatedMetadata cteVar2 = this.c;
            RateLimitRegistry ctlVar = cto.a;
            Object obj = ctlVar.a.get(ctjVar);
            if (obj == null) {
                obj = new GlobalRateLimitCounters();
                Object putIfAbsent = ctlVar.a.putIfAbsent(ctjVar, obj);
                if (putIfAbsent != null) {
                    obj = putIfAbsent;
                } else {
                    int i4 = cteVar2.b;
                    RateLimitResetRunnable ctkVar = null;
                    for (int i5 = 0; i5 < i4; i5++) {
                        if (FloggerContextKeySet.d.equals(cteVar2.c(i5))) {
                            Object e = cteVar2.e(i5);
                            if (ProtoFlagValueMessage instanceof RateLimiterFactory) {
                                if (ctkVar == null) {
                                    ctkVar = new RateLimitResetRunnable(ctlVar, ctjVar);
                                }
                                ((RateLimiterFactory) e).a();
                            }
                        }
                    }
                }
            }
            GlobalRateLimitCounters ctoVar = (GlobalRateLimitCounters) obj;
            if (num != null) {
                if (ctoVar.b.getAndIncrement() % num.intValue() != 0) {
                    return false;
                }
            }
            if (ctnVar != null) {
                ctoVar.c.get();
                throw null;
            }
        }
        LogStackSize ctvVar = (LogStackSize) this.c.d(ctd.g);
        if (ctvVar != null) {
            MetadataKey cttVar = ctd.g;
            RepeatedMetadata cteVar3 = this.c;
            if (cteVar3 != null && (SingleStringProtoMessage = cteVar3.a(cttVar)) >= 0) {
                int i6 = a + a;
                int i7 = i6 + 2;
                while (true) {
                    i = cteVar3.b;
                    if (i7 >= i + i) {
                        break;
                    }
                    Object obj2 = cteVar3.a[i7];
                    if (!obj2.equals(cttVar)) {
                        Object[] objArr = cteVar3.a;
                        objArr[i6] = obj2;
                        objArr[i6 + 1] = objArr[i7 + 1];
                        i6 += 2;
                    }
                    i7 += 2;
                }
                cteVar3.b = i - ((i7 - i6) >> 1);
                while (i6 < i7) {
                    cteVar3.a[i6] = null;
                    i6++;
                }
            }
            m(ctd.a, new LogSiteInjectionException((Throwable) i().d(ctd.a), ctvVar, StackGetterFactory.b(AbstractLogger.class, ctvVar.f)));
        }
        return true;
    }

    @Override // defpackage.AbstractLogger
    protected final /* synthetic */ FloggerLogger c() {
        return this.a;
    }

    @Override // defpackage.AbstractLogger
    protected final /* bridge */ /* synthetic */ LoggerApi d() {
        return this;
    }
}

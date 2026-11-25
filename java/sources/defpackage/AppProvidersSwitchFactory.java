package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppProvidersSwitchFactory implements DaggerProvider {
    private final /* synthetic */ int a;

    public AppProvidersSwitchFactory(int i) {
        this.a = i;
    }

    public static ListeningScheduledExecutorService b() {
        ListeningScheduledExecutorService l = ViewCompatApi19Statics.l(Executors.newSingleThreadScheduledExecutor());
        CommonObjectsAndPreconditionsUtil.m(ProtoMessageSingleStringL);
        return l;
    }

    public static final NetworkInterfaceUtil c() {
        return new NetworkInterfaceUtil();
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.a) {
            case 0:
                return new Object() { // from class: atw
                };
            case 1:
                return new OverflowCheckedLongArrayUtil();
            case 2:
                ez.A("certificate", "credentials/client.pem");
                ez.A("root_certificate", "credentials/ca.pem");
                ez.A("key", "credentials/private.key");
                return ImmutableMapFromEntries.a(3, new Object[]{"certificate", "credentials/client.pem", "root_certificate", "credentials/ca.pem", "key", "credentials/private.key"});
            case 3:
                ImmutableListBuilder j = ImmutableList.j();
                j.h(AaReceiverFlagsDisFacade.a.a().a().a);
                j.g("/system/etc/aar");
                ImmutableList f = j.f();
                CommonObjectsAndPreconditionsUtil.m(NavManeuverTypeEnum);
                return f;
            case 4:
                return new MediaPlaybackStateHolder();
            case 5:
                return true;
            case 6:
                return TraceConfigurations.c().a();
            case 7:
                return new ViewCompatApi19Statics();
            case 8:
                return bbs.a;
            case 9:
                return bbt.a;
            case 10:
                return bbu.a;
            case 11:
                return new AlertDialogAndInsetsApiHelper();
            case 12:
                FutureTaskFactory dauVar = new FutureTaskFactory();
                FutureTaskFactory.a("Background #%d", 0);
                dauVar.a = "Background #%d";
                dauVar.b = true;
                String str = dauVar.a;
                ListeningScheduledExecutorService l = ViewCompatApi19Statics.l(Executors.newScheduledThreadPool(1, new NamedThreadFactory(Executors.defaultThreadFactory(), str, str != null ? new AtomicLong(0L) : null, dauVar.b)));
                CommonObjectsAndPreconditionsUtil.m(ProtoMessageSingleStringL);
                return l;
            case 13:
                throw null;
            case 14:
                return new WirelessSocketProvider();
            case 15:
                throw null;
            case 16:
                return new UsbSerialProvider();
            case 17:
                return new Object() { // from class: bhg
                };
            case 18:
                return new PrimesDebugEventsHelper();
            case 19:
                return new PrimesShutdownHookRegistry();
            default:
                return new ThreadStateTracker();
        }
    }
}

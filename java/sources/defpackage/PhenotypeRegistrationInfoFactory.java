package defpackage;

import android.car.CarAppFocusManager;
import android.car.drivingstate.CarUxRestrictionsManager;
import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.projection.protocol.AudioSink;
import com.google.android.projection.protocol.MediaPlaybackStatus;
import j$.util.Optional;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationInfoFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final /* synthetic */ int b;

    public PhenotypeRegistrationInfoFactory(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.b) {
            case 0:
                GalServiceEndpoint n = OverflowCheckedLongArrayUtil.n(((AudioStreamConstants) this.a.a()).d);
                CommonObjectsAndPreconditionsUtil.m(ProtoLiteTimestampField);
                return n;
            case 1:
                AudioSink audioSink = ((AudioStreamConstants) this.a.a()).a.f;
                CommonObjectsAndPreconditionsUtil.m(audioSink);
                return audioSink;
            case 2:
                AudioSink audioSink2 = ((AudioStreamConstants) this.a.a()).c.f;
                CommonObjectsAndPreconditionsUtil.m(audioSink2);
                return audioSink2;
            case 3:
                return new VoiceSessionAppFocusManager((CarAppFocusManager) this.a.a());
            case 4:
                return new MediaPlaybackStatus(((MediaPlaybackStateHolder) this.a.a()).d);
            case 5:
                return new ExperimentFlagDumper((PhenotypeDatabaseApi) this.a.a());
            case 6:
                return new PhenotypeRegistrationParser((PackageManager) this.a.a());
            case 7:
                Optional optional = (Optional) this.a.a();
                if (!optional.isPresent() || (((ProtoMsgManyMixedFields) optional.get()).a & 8) == 0) {
                    ((ParameterizedLoggerApi) PhenotypePrivateModuleTag.a.c().h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesApplicationProperties", 72, "PhenotypeRegistrationInfoModule.java")).n("There were no params found in the current registration");
                    return Optional.empty();
                }
                try {
                    ProtoMsgHoldingMessageAndBool n2 = GoogleAuthServiceBinder.b.n();
                    ByteString dclVar = ((ProtoMsgManyMixedFields) optional.get()).i;
                    ExtensionRegistryLite b = ExtensionRegistryLite.b();
                    try {
                        try {
                            CodedInputStreamReaderBase l = dclVar.l();
                            n2.m(l, b);
                            l.z(0);
                            return Optional.of((GoogleAuthServiceBinder) n2.h());
                        } catch (InvalidProtocolBufferException e) {
                            throw e;
                        }
                    } catch (IOException e2) {
                        String name = n2.getClass().getName();
                        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 70);
                        StaggeredGridLayoutParams.append("Reading ");
                        StaggeredGridLayoutParams.append(name);
                        StaggeredGridLayoutParams.append(" from a ");
                        StaggeredGridLayoutParams.append("ByteString");
                        StaggeredGridLayoutParams.append(" threw PluralRuleParser IOException (should never happen).");
                        throw new RuntimeException(StaggeredGridLayoutParams.toString(), e2);
                    }
                } catch (InvalidProtocolBufferException e3) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) PhenotypePrivateModuleTag.a.c().g(e3)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeRegistrationInfoModule", "providesApplicationProperties", 82, "PhenotypeRegistrationInfoModule.java")).n("Couldn't parse application properties");
                    return Optional.empty();
                }
            case 8:
                ReleaseChannelEnum dgqVar = (ReleaseChannelEnum) ((Optional) this.a.a()).map(awq.f).orElse(ReleaseChannelEnum.UNKNOWN);
                CommonObjectsAndPreconditionsUtil.m(dgqVar);
                return dgqVar;
            case 9:
                boolean booleanValue = ((Boolean) this.a.a()).booleanValue();
                MemoryConfigurationsBuilder c = MemoryConfigurations.c();
                c.b(AaReceiverFlags45353773Facade.a.a().d());
                c.c(AaReceiverFlags45353773Facade.a.a().e() && booleanValue);
                return c.a();
            case 10:
                boolean booleanValue2 = ((Boolean) this.a.a()).booleanValue();
                TraceConfigurationsBuilder c2 = CrashConfigurations.c();
                c2.d(AaReceiverFlags45353773Facade.a.a().a() && booleanValue2);
                return c2.c();
            case 11:
                boolean booleanValue3 = ((Boolean) this.a.a()).booleanValue();
                JankConfigurationsBuilder c3 = JankConfigurations.c();
                c3.b(AaReceiverFlags45353773Facade.a.a().c() && booleanValue3);
                return c3.a();
            case 12:
                boolean booleanValue4 = ((Boolean) this.a.a()).booleanValue();
                NetworkConfigurationsBuilder c4 = NetworkConfigurations.c();
                c4.b(AaReceiverFlags45353773Facade.a.a().f() && booleanValue4);
                return c4.a();
            case 13:
                boolean booleanValue5 = ((Boolean) this.a.a()).booleanValue();
                StorageConfigurationsBuilder c5 = StorageConfigurations.c();
                c5.b(AaReceiverFlags45353773Facade.a.a().g() && booleanValue5);
                return c5.a();
            case 14:
                boolean booleanValue6 = ((Boolean) this.a.a()).booleanValue();
                TimerConfigurationsBuilder c6 = TimerConfigurations.c();
                c6.b(AaReceiverFlags45353773Facade.a.a().h() && booleanValue6);
                return c6.a();
            case 15:
                return new DrivingStateSensorFeed((CarUxRestrictionsManager) this.a.a());
            case 16:
                return new LocationSensorFeed(((AppContextProviderFactory) this.a).a());
            case 17:
                return new ConfigurationSensorFeed(((AppContextProviderFactory) this.a).a());
            case 18:
                LifecycleRegistry znVar = ((ProjectionSession) ((SingleCheckProvider) this.a).a).F;
                CommonObjectsAndPreconditionsUtil.m(znVar);
                return znVar;
            case 19:
                return new OemSettingsImpl(((AppContextProviderFactory) this.a).a());
            default:
                Context a = ((AppContextProviderFactory) this.a).a();
                ClearcutProviders.c();
                return new SqLiteDeviceRegistry(SingleStringProtoMessage);
        }
    }
}

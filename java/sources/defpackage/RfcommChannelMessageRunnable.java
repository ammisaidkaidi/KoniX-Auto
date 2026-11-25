package defpackage;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.apps.auto.aareceiver.ui.ErrorMessageActivity;
import com.google.android.apps.auto.aareceiver.ui.WaitingForConnectionActivity;
import com.google.android.embedded.projection.R;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class RfcommChannelMessageRunnable implements Runnable {
    public final /* synthetic */ RfcommChannel a;
    private final /* synthetic */ int b;

    public /* synthetic */ avm(RfcommChannel avpVar, int i) {
        this.b = i;
        this.a = avpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final RfcommMessageFrame avoVar;
        switch (this.b) {
            case 0:
                this.a.g.a();
                break;
            case 1:
                final RfcommChannel avpVar = this.a;
                while (!avpVar.d) {
                    int i = 0;
                    int i2 = 4;
                    try {
                        ByteBuffer a = avpVar.a(4);
                        short s = a.getShort();
                        short s2 = a.getShort();
                        byte[] array = avpVar.a(IcuMessageArgTypeHolder).array();
                        switch (s2) {
                            case 1:
                                i2 = 1;
                                break;
                            case 2:
                                i2 = 2;
                                break;
                            case 3:
                                i2 = 3;
                                break;
                            case 4:
                                break;
                            case 5:
                                i2 = 5;
                                break;
                            case 6:
                                i2 = 6;
                                break;
                            case 7:
                                i2 = 7;
                                break;
                            default:
                                i2 = 0;
                                break;
                        }
                        if (i2 == 0) {
                            ((ParameterizedLoggerApi) RfcommChannel.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel$RawMessage", "create", 177, "RfcommChannel.java")).x(s2);
                            avoVar = null;
                        } else {
                            avoVar = new RfcommMessageFrame(i2, array);
                        }
                        if (avoVar != null) {
                            avpVar.e.execute(new Runnable() { // from class: avl
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Activity activity;
                                    final Activity activity2;
                                    RfcommChannel avpVar2 = RfcommChannel.this;
                                    RfcommMessageFrame avoVar2 = avoVar;
                                    RfcommServerFailureCallback avuVar = avpVar2.g;
                                    int i3 = avoVar2.b;
                                    byte[] bArr = avoVar2.a;
                                    WirelessDiscoveryDeviceCallback awaVar = avuVar.c.d;
                                    String str = avuVar.a;
                                    WirelessDiscoveryController awhVar = awaVar.a;
                                    WirelessDeviceConnectionState awgVar = (WirelessDeviceConnectionState) awhVar.b.get(str);
                                    if (awgVar == null) {
                                        ((ParameterizedLoggerApi) WirelessDiscoveryController.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "onMessageReceived", 452, "WirelessDiscoveryController.java")).p("Device %s not registered. Message ignored.", str);
                                    }
                                    switch (i3) {
                                        case 1:
                                            if (!awhVar.h()) {
                                                if (!awhVar.f.k()) {
                                                    ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiStartRequest", 633, "WirelessDiscoveryController.java")).n("Access point is not started yet.");
                                                    String a2 = awgVar.a();
                                                    ProtoMsgHoldingMessageAndBool n = WifiStatusMessage.e.n();
                                                    if (n.c) {
                                                        n.k();
                                                        n.c = false;
                                                    }
                                                    WifiStatusMessage cleVar = (WifiStatusMessage) n.b;
                                                    cleVar.d = -6;
                                                    cleVar.a |= 4;
                                                    awhVar.j(a2, 7, n.h());
                                                    awhVar.f.j();
                                                    break;
                                                } else {
                                                    awgVar.b = 7;
                                                    awhVar.c.startActivity(ProjectionIntentHelper.d(awhVar.c, awhVar.d.c(awgVar.a), ProjectionTransportType.WIRELESS, ProjectionStartReason.USER_REQUEST));
                                                    break;
                                                }
                                            } else {
                                                String a3 = awgVar.a();
                                                ProtoMsgHoldingMessageAndBool n2 = WifiStatusMessage.e.n();
                                                if (n2.c) {
                                                    n2.k();
                                                    n2.c = false;
                                                }
                                                WifiStatusMessage cleVar2 = (WifiStatusMessage) n2.b;
                                                cleVar2.d = -4;
                                                cleVar2.a |= 4;
                                                awhVar.j(a3, 7, n2.h());
                                                break;
                                            }
                                        case 2:
                                            awhVar.f.i(new WirelessVersionRequestCallback(awhVar, awgVar));
                                            awhVar.f.j();
                                            break;
                                        case 3:
                                        case 4:
                                        default:
                                            ((ParameterizedLoggerApi) WirelessDiscoveryController.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "onMessageReceived", 474, "WirelessDiscoveryController.java")).o("Unexpected WifiMessageType %d", i3);
                                            break;
                                        case 5:
                                            try {
                                                WifiStateMessage clgVar = (WifiStateMessage) GeneratedMessageLite.r(clg.f, bArr, ExtensionRegistryLite.b());
                                                WirelessDiscoveryController.a(clgVar);
                                                awhVar.h.removeMessages(2, awgVar);
                                                int g = StartupTraceTracker.g(clgVar.e);
                                                r2 = g != 0 ? g : 13;
                                                String str2 = null;
                                                String str3 = (clgVar.a & 4) != 0 ? clgVar.d : null;
                                                if (!"unknown".equals(str3) && !TextUtils.isEmpty(str3)) {
                                                    str2 = str3;
                                                }
                                                if (r2 == 12) {
                                                    DeviceTracker bahVar = awhVar.d;
                                                    BluetoothDevice bluetoothDevice = awgVar.a;
                                                    ProjectionDeviceNotificationInfo f = bahVar.f(bluetoothDevice);
                                                    if (str2 != null && !str2.equals(f.g.e())) {
                                                        f.g = bahVar.a(bluetoothDevice, str2);
                                                    }
                                                    bahVar.o(f, ProjectionTransportType.WIRELESS);
                                                    awgVar.b = 5;
                                                    ProjectionDevice c = awhVar.d.c(awgVar.a);
                                                    if (!AaReceiverFlags45356796Facade.a.a().d()) {
                                                        BluetoothDevice bluetoothDevice2 = awgVar.a;
                                                        if (!awhVar.h()) {
                                                            ProjectionDevice c2 = awhVar.d.c(bluetoothDevice2);
                                                            if (c2.b() == ProjectionVisibilityState.BACKGROUND && !c2.f()) {
                                                                awhVar.e(c2, ProjectionStartReason.AUTO_LAUNCH);
                                                                break;
                                                            }
                                                        }
                                                    } else if (awhVar.d.z(PhenotypeFlagMessage)) {
                                                        awhVar.e(c, ProjectionStartReason.AUTO_LAUNCH);
                                                        break;
                                                    }
                                                } else {
                                                    ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleVersionResponse", 570, "WirelessDiscoveryController.java")).t("%s rejected our protocol version: %s", awgVar, WirelessDiscoveryController.a(clgVar));
                                                    awgVar.b = 4;
                                                    break;
                                                }
                                            } catch (InvalidProtocolBufferException e) {
                                                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) WirelessDiscoveryController.a.b().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleVersionResponse", 553, "WirelessDiscoveryController.java")).n("Failed to decode WifiVersionResponse message");
                                                return;
                                            }
                                            break;
                                        case 6:
                                            awhVar.f(awgVar);
                                            DeviceTracker bahVar2 = awhVar.d;
                                            bahVar2.q(bahVar2.c(awgVar.a), false);
                                            try {
                                                WifiConnectStatusMessage clbVar = (WifiConnectStatusMessage) GeneratedMessageLite.r(clb.c, bArr, ExtensionRegistryLite.a());
                                                int g2 = StartupTraceTracker.g(clbVar.a);
                                                if (g2 == 0 || g2 != 12) {
                                                    if (awhVar.n != null) {
                                                        int g3 = StartupTraceTracker.g(clbVar.a);
                                                        String string = (g3 != 0 && g3 == 3) ? awhVar.c.getString(R.string.instruct_user_to_check_phone) : clbVar.b;
                                                        if (!string.isEmpty() && (activity = (Activity) awhVar.n.a.get()) != null) {
                                                            Intent intent = new Intent(activity, (Class<?>) ErrorMessageActivity.class);
                                                            intent.addFlags(268566528);
                                                            intent.putExtra("extra_message", string);
                                                            activity.startActivity(intent);
                                                            activity.finish();
                                                            break;
                                                        }
                                                    }
                                                } else {
                                                    awhVar.k.c();
                                                    break;
                                                }
                                            } catch (InvalidProtocolBufferException e2) {
                                                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) WirelessDiscoveryController.a.b().g(e2)).h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleConnectStatus", 499, "WirelessDiscoveryController.java")).n("Unable to parse WifiConnectStatus");
                                                return;
                                            }
                                            break;
                                        case 7:
                                            awhVar.g(awgVar);
                                            try {
                                                WifiStatusMessage cleVar3 = (WifiStatusMessage) GeneratedMessageLite.r(cle.e, bArr, ExtensionRegistryLite.b());
                                                if ((cleVar3.a & 4) != 0) {
                                                    int g4 = StartupTraceTracker.g(cleVar3.d);
                                                    if (g4 != 0) {
                                                        r2 = g4;
                                                    }
                                                } else {
                                                    r2 = 0;
                                                }
                                                if (r2 == 0) {
                                                    ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiResponseStart", 666, "WirelessDiscoveryController.java")).n("Received start response without status");
                                                    r2 = 0;
                                                }
                                                if (r2 != 0 && r2 != 12) {
                                                    ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiResponseStart", 670, "WirelessDiscoveryController.java")).o("WifiStartResponse: received unsuccessful status: %d", r2 - 12);
                                                    if (AaReceiverFlags45356796Facade.a.a().c()) {
                                                        DeviceTracker bahVar3 = awhVar.d;
                                                        bahVar3.q(bahVar3.c(awgVar.a), false);
                                                        awhVar.f(awgVar);
                                                        WeakViewAnimator bewVar = awhVar.n;
                                                        if (bewVar != null && (activity2 = (Activity) bewVar.a.get()) != null) {
                                                            WaitingForConnectionActivity.a(activity2);
                                                            activity2.runOnUiThread(new Runnable() { // from class: bev
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    activity2.finish();
                                                                }
                                                            });
                                                        }
                                                    } else {
                                                        awhVar.d.k(awgVar.a);
                                                    }
                                                    awhVar.c();
                                                    awgVar.b = 9;
                                                    break;
                                                } else {
                                                    awgVar.b = 10;
                                                    break;
                                                }
                                            } catch (InvalidProtocolBufferException e3) {
                                                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) WirelessDiscoveryController.a.b().g(e3)).h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiResponseStart", 661, "WirelessDiscoveryController.java")).n("Unable to parse start response");
                                                return;
                                            }
                                            break;
                                    }
                                }
                            });
                        }
                    } catch (IOException e) {
                        if (avpVar.d) {
                            return;
                        }
                        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) RfcommChannel.a.c().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel", "readMessagesLoop", 91, "RfcommChannel.java")).n("Failed to read RFCOMM message");
                        avpVar.e.execute(new RfcommChannelMessageRunnable(avpVar, i));
                        return;
                    }
                }
                break;
            default:
                this.a.g.a();
                break;
        }
    }
}

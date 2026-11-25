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
public final /* synthetic */ class avm implements Runnable {
    public final /* synthetic */ avp a;
    private final /* synthetic */ int b;

    public /* synthetic */ avm(avp avpVar, int i) {
        this.b = i;
        this.a = avpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final avo avoVar;
        switch (this.b) {
            case 0:
                this.a.g.a();
                break;
            case 1:
                final avp avpVar = this.a;
                while (!avpVar.d) {
                    int i = 0;
                    int i2 = 4;
                    try {
                        ByteBuffer a = avpVar.a(4);
                        short s = a.getShort();
                        short s2 = a.getShort();
                        byte[] array = avpVar.a(s).array();
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
                            ((csx) avp.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel$RawMessage", "create", 177, "RfcommChannel.java")).x(s2);
                            avoVar = null;
                        } else {
                            avoVar = new avo(i2, array);
                        }
                        if (avoVar != null) {
                            avpVar.e.execute(new Runnable() { // from class: avl
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Activity activity;
                                    final Activity activity2;
                                    avp avpVar2 = avp.this;
                                    avo avoVar2 = avoVar;
                                    avu avuVar = avpVar2.g;
                                    int i3 = avoVar2.b;
                                    byte[] bArr = avoVar2.a;
                                    awa awaVar = avuVar.c.d;
                                    String str = avuVar.a;
                                    awh awhVar = awaVar.a;
                                    awg awgVar = (awg) awhVar.b.get(str);
                                    if (awgVar == null) {
                                        ((csx) awh.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "onMessageReceived", 452, "WirelessDiscoveryController.java")).p("Device %s not registered. Message ignored.", str);
                                    }
                                    switch (i3) {
                                        case 1:
                                            if (!awhVar.h()) {
                                                if (!awhVar.f.k()) {
                                                    ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiStartRequest", 633, "WirelessDiscoveryController.java")).n("Access point is not started yet.");
                                                    String a2 = awgVar.a();
                                                    ddf n = cle.e.n();
                                                    if (n.c) {
                                                        n.k();
                                                        n.c = false;
                                                    }
                                                    cle cleVar = (cle) n.b;
                                                    cleVar.d = -6;
                                                    cleVar.a |= 4;
                                                    awhVar.j(a2, 7, n.h());
                                                    awhVar.f.j();
                                                    break;
                                                } else {
                                                    awgVar.b = 7;
                                                    awhVar.c.startActivity(hh.d(awhVar.c, awhVar.d.c(awgVar.a), awp.WIRELESS, cla.USER_REQUEST));
                                                    break;
                                                }
                                            } else {
                                                String a3 = awgVar.a();
                                                ddf n2 = cle.e.n();
                                                if (n2.c) {
                                                    n2.k();
                                                    n2.c = false;
                                                }
                                                cle cleVar2 = (cle) n2.b;
                                                cleVar2.d = -4;
                                                cleVar2.a |= 4;
                                                awhVar.j(a3, 7, n2.h());
                                                break;
                                            }
                                        case 2:
                                            awhVar.f.i(new awf(awhVar, awgVar));
                                            awhVar.f.j();
                                            break;
                                        case 3:
                                        case 4:
                                        default:
                                            ((csx) awh.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "onMessageReceived", 474, "WirelessDiscoveryController.java")).o("Unexpected WifiMessageType %d", i3);
                                            break;
                                        case 5:
                                            try {
                                                clg clgVar = (clg) ddk.r(clg.f, bArr, dcz.b());
                                                awh.a(clgVar);
                                                awhVar.h.removeMessages(2, awgVar);
                                                int g = bzv.g(clgVar.e);
                                                r2 = g != 0 ? g : 13;
                                                String str2 = null;
                                                String str3 = (clgVar.a & 4) != 0 ? clgVar.d : null;
                                                if (!"unknown".equals(str3) && !TextUtils.isEmpty(str3)) {
                                                    str2 = str3;
                                                }
                                                if (r2 == 12) {
                                                    bah bahVar = awhVar.d;
                                                    BluetoothDevice bluetoothDevice = awgVar.a;
                                                    baf f = bahVar.f(bluetoothDevice);
                                                    if (str2 != null && !str2.equals(f.g.e())) {
                                                        f.g = bahVar.a(bluetoothDevice, str2);
                                                    }
                                                    bahVar.o(f, awp.WIRELESS);
                                                    awgVar.b = 5;
                                                    awo c = awhVar.d.c(awgVar.a);
                                                    if (!dih.a.a().d()) {
                                                        BluetoothDevice bluetoothDevice2 = awgVar.a;
                                                        if (!awhVar.h()) {
                                                            awo c2 = awhVar.d.c(bluetoothDevice2);
                                                            if (c2.b() == bcq.BACKGROUND && !c2.f()) {
                                                                awhVar.e(c2, cla.AUTO_LAUNCH);
                                                                break;
                                                            }
                                                        }
                                                    } else if (awhVar.d.z(c)) {
                                                        awhVar.e(c, cla.AUTO_LAUNCH);
                                                        break;
                                                    }
                                                } else {
                                                    ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleVersionResponse", 570, "WirelessDiscoveryController.java")).t("%s rejected our protocol version: %s", awgVar, awh.a(clgVar));
                                                    awgVar.b = 4;
                                                    break;
                                                }
                                            } catch (ddu e) {
                                                ((csx) ((csx) awh.a.b().g(e)).h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleVersionResponse", 553, "WirelessDiscoveryController.java")).n("Failed to decode WifiVersionResponse message");
                                                return;
                                            }
                                            break;
                                        case 6:
                                            awhVar.f(awgVar);
                                            bah bahVar2 = awhVar.d;
                                            bahVar2.q(bahVar2.c(awgVar.a), false);
                                            try {
                                                clb clbVar = (clb) ddk.r(clb.c, bArr, dcz.a());
                                                int g2 = bzv.g(clbVar.a);
                                                if (g2 == 0 || g2 != 12) {
                                                    if (awhVar.n != null) {
                                                        int g3 = bzv.g(clbVar.a);
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
                                            } catch (ddu e2) {
                                                ((csx) ((csx) awh.a.b().g(e2)).h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleConnectStatus", 499, "WirelessDiscoveryController.java")).n("Unable to parse WifiConnectStatus");
                                                return;
                                            }
                                            break;
                                        case 7:
                                            awhVar.g(awgVar);
                                            try {
                                                cle cleVar3 = (cle) ddk.r(cle.e, bArr, dcz.b());
                                                if ((cleVar3.a & 4) != 0) {
                                                    int g4 = bzv.g(cleVar3.d);
                                                    if (g4 != 0) {
                                                        r2 = g4;
                                                    }
                                                } else {
                                                    r2 = 0;
                                                }
                                                if (r2 == 0) {
                                                    ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiResponseStart", 666, "WirelessDiscoveryController.java")).n("Received start response without status");
                                                    r2 = 0;
                                                }
                                                if (r2 != 0 && r2 != 12) {
                                                    ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiResponseStart", 670, "WirelessDiscoveryController.java")).o("WifiStartResponse: received unsuccessful status: %d", r2 - 12);
                                                    if (dih.a.a().c()) {
                                                        bah bahVar3 = awhVar.d;
                                                        bahVar3.q(bahVar3.c(awgVar.a), false);
                                                        awhVar.f(awgVar);
                                                        bew bewVar = awhVar.n;
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
                                            } catch (ddu e3) {
                                                ((csx) ((csx) awh.a.b().g(e3)).h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "handleWifiResponseStart", 661, "WirelessDiscoveryController.java")).n("Unable to parse start response");
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
                        ((csx) ((csx) avp.a.c().g(e)).h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommChannel", "readMessagesLoop", 91, "RfcommChannel.java")).n("Failed to read RFCOMM message");
                        avpVar.e.execute(new avm(avpVar, i));
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

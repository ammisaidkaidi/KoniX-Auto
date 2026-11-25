package defpackage;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.android.projection.protocol.GalReceiver;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aul {
    private static final csz a = csz.g("com/google/android/apps/auto/aareceiver/audio/AudioUtils");

    static long a(Message message) {
        return (message.arg1 << 32) | (message.arg2 & 4294967295L);
    }

    static Bundle b() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("android.car.media.AUDIOFOCUS_EXTRA_RECEIVE_DUCKING_EVENTS", true);
        return bundle;
    }

    static String c(int i) {
        switch (i) {
            case -3:
                return "LOSS_TRANSIENT_CAN_DUCK";
            case -2:
                return "LOSS_TRANSIENT";
            case -1:
                return "LOSS";
            case 0:
            default:
                ((csx) a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioUtils", "platformFocusToString", 110, "AudioUtils.java")).o("Unknown platform focus: %s", i);
                return "";
            case 1:
                return "GAIN";
            case 2:
                return "GAIN_TRANSIENT";
            case 3:
                return "GAIN_TRANSIENT_MAY_DUCK";
            case 4:
                return "GAIN_TRANSIENT_EXCLUSIVE";
        }
    }

    public static String d(String str, String str2) {
        return str.startsWith(str2) ? str.substring(str2.length()) : str;
    }

    static String e(int i) {
        switch (i) {
            case 1:
                return "MEDIA";
            case 12:
                return "GUIDANCE";
            case 16:
                return "ASSISTANT";
            default:
                ((csx) a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioUtils", "usageToString", 124, "AudioUtils.java")).o("Unknown usage: %d", i);
                return "";
        }
    }

    public static Message f(Handler handler, long j, Object obj) {
        return handler.obtainMessage(4, (int) (j >> 32), (int) j, obj);
    }

    static int g(int i) {
        int i2 = GalReceiver.a;
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 3;
        }
        if (i == 3) {
            return 4;
        }
        if (i == 4) {
            return 1;
        }
        ((csx) a.b().h("com/google/android/apps/auto/aareceiver/audio/AudioUtils", "mapGalToFocusType", 84, "AudioUtils.java")).o("Invalid audio focus: %d", i);
        return 1;
    }
}

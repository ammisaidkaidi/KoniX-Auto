package defpackage;

import android.net.Uri;

/* compiled from: PG */
/* loaded from: classes.dex */
public class bxr {
    public static int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            default:
                return 0;
        }
    }

    public static /* synthetic */ String b(int i) {
        switch (i) {
            case 1:
                return "AUDIO_STREAM_GUIDANCE";
            case 2:
                return "AUDIO_STREAM_SYSTEM_AUDIO";
            default:
                return "AUDIO_STREAM_MEDIA";
        }
    }

    public static Uri d(Uri uri, String str) {
        Uri.Builder buildUpon = uri.buildUpon();
        String valueOf = String.valueOf(uri.getPath());
        return buildUpon.path(str.length() != 0 ? valueOf.concat(str) : new String(valueOf)).build();
    }
}

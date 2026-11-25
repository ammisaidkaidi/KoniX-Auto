package defpackage;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaSessionCompatCore {
    static int a;
    public final MediaSessionImplInterface b;
    public final MediaSessionCompatUtil c;
    private final ArrayList d = new ArrayList();

    public MediaSessionCompatCore(Context context) {
        ComponentName componentName;
        if (TextUtils.isEmpty("AAPMediaSession")) {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        PendingIntent pendingIntent = null;
        if (queryBroadcastReceivers.size() == 1) {
            ResolveInfo resolveInfo = queryBroadcastReceivers.get(0);
            componentName = new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        } else if (queryBroadcastReceivers.size() > 1) {
            Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
            componentName = null;
        } else {
            componentName = null;
        }
        if (componentName == null) {
            Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
        }
        if (componentName != null) {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
            intent2.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(context, 0, intent2, true != SqliteContentValuesHelper.c() ? 0 : 33554432);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.b = new AapMediaSessionImplLatest(context);
        } else {
            this.b = new AapMediaSessionImplApi29(context);
        }
        f(new MediaSessionCompatInnerHelper(), new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
        this.b.f(pendingIntent);
        this.c = new MediaSessionCompatUtil(context, this);
        if (SingleStringProtoMessage == 0) {
            a = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
        }
    }

    public static Bundle a(Bundle bundle) {
        c(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException e) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public static void c(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompatCore.class.getClassLoader());
        }
    }

    public final MediaSessionCompat$Token b() {
        return this.b.b();
    }

    public final void d(boolean z) {
        this.b.d(IcuMessageFormat);
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((MediaSessionActionCallbackInterface) arrayList.get(NavInstructionTypeEnum)).a();
        }
    }

    public final void e(MediaSessionCompatInnerHelper fnVar) {
        f(fnVar, null);
    }

    public final void f(MediaSessionCompatInnerHelper fnVar, Handler handler) {
        if (fnVar == null) {
            this.b.e(null, null);
            return;
        }
        MediaSessionImplInterface foVar = this.b;
        if (handler == null) {
            handler = new Handler();
        }
        foVar.e(fnVar, handler);
    }

    public final void g(MediaMetadataCompat mediaMetadataCompat) {
        this.b.g(mediaMetadataCompat);
    }

    public final void h(PlaybackStateCompat playbackStateCompat) {
        this.b.h(playbackStateCompat);
    }

    public final boolean i() {
        return this.b.k();
    }
}

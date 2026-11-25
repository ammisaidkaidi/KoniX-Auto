package defpackage;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NotificationCompatBuilder {
    public final Context a;
    CharSequence e;
    CharSequence f;
    public PendingIntent g;
    public int h;
    NotificationCompatStyle i;
    Bundle k;
    public String l;
    public final Notification m;

    @Deprecated
    public final ArrayList n;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    final ArrayList d = new ArrayList();
    public boolean j = false;

    @Deprecated
    public NotificationCompatBuilder(Context context) {
        Notification notification = new Notification();
        this.m = notification;
        this.a = context;
        this.l = null;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.h = 0;
        this.n = new ArrayList();
    }

    public static CharSequence c(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return charSequence.length() > 5120 ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification a() {
        Bundle bundle;
        new ArrayList();
        Bundle bundle2 = new Bundle();
        Notification.Builder builder = new Notification.Builder(this.a, this.l);
        Notification notification = this.m;
        builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(this.e).setContentText(this.f).setContentInfo(null).setContentIntent(this.g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon((Bitmap) null).setNumber(0).setProgress(0, 0, false);
        builder.setSubText(null).setUsesChronometer(false).setPriority(this.h);
        ArrayList arrayList = this.b;
        if (arrayList.size() > 0) {
            throw null;
        }
        Bundle bundle3 = this.k;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        builder.setShowWhen(true);
        builder.setLocalOnly(this.j).setGroup(null).setGroupSummary(false).setSortKey(null);
        builder.setCategory(null).setColor(0).setVisibility(0).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
        ArrayList arrayList2 = this.n;
        if (!arrayList2.isEmpty()) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                builder.addPerson((String) it.next());
            }
        }
        if (this.d.size() > 0) {
            Bundle bundle4 = b().getBundle("android.car.EXTENSIONS");
            if (bundle4 == null) {
                bundle4 = new Bundle();
            }
            Bundle bundle5 = new Bundle(bundle4);
            Bundle bundle6 = new Bundle();
            if (this.d.size() > 0) {
                Integer.toString(0);
                new Bundle();
                throw null;
            }
            bundle4.putBundle("invisible_actions", bundle6);
            bundle5.putBundle("invisible_actions", bundle6);
            b().putBundle("android.car.EXTENSIONS", bundle4);
            bundle2.putBundle("android.car.EXTENSIONS", bundle5);
        }
        builder.setExtras(this.k).setRemoteInputHistory(null);
        builder.setBadgeIconType(0).setSettingsText(null).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(0);
        if (!TextUtils.isEmpty(this.l)) {
            builder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        ArrayList arrayList3 = this.c;
        if (arrayList3.size() > 0) {
            throw null;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setAllowSystemGeneratedContextualActions(true);
            builder.setBubbleMetadata(null);
        }
        SqliteContentValuesHelper.c();
        NotificationCompatStyle dhVar = this.i;
        if (dhVar != null) {
            new Notification.BigTextStyle(builder).setBigContentTitle(null).bigText(((NotificationBigTextStyle) dhVar).a);
        }
        Notification build = builder.build();
        if (dhVar != null && (bundle = build.extras) != null) {
            bundle.putString("android.support.v4.app.extra.COMPAT_TEMPLATE", "android.support.v4.app.NotificationCompat$BigTextStyle");
        }
        return build;
    }

    public final Bundle b() {
        if (this.k == null) {
            this.k = new Bundle();
        }
        return this.k;
    }

    public final void d(CharSequence charSequence) {
        this.f = c(charSequence);
    }

    public final void e(CharSequence charSequence) {
        this.e = c(charSequence);
    }

    public final void f(int i) {
        Notification notification = this.m;
        notification.flags = i | notification.flags;
    }

    public final void g(int i) {
        this.m.icon = i;
    }

    public final void h(NotificationCompatStyle dhVar) {
        if (this.i != dhVar) {
            this.i = dhVar;
            if (dhVar == null || dhVar.b == this) {
                return;
            }
            dhVar.b = this;
            NotificationCompatBuilder dgVar = dhVar.b;
            if (dgVar != null) {
                dgVar.h(dhVar);
            }
        }
    }

    public final void i(CharSequence charSequence) {
        this.m.tickerText = c(charSequence);
    }
}

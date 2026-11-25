package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.Messenger;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat$Token;

/* compiled from: PG */
/* loaded from: classes.dex */
class abh extends MediaBrowserService {
    final /* synthetic */ abi a;

    public abh(abi abiVar, Context context) {
        this.a = abiVar;
        attachBaseContext(context);
    }

    @Override // android.service.media.MediaBrowserService
    public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        Bundle bundle2;
        int i2;
        abc abcVar;
        fu.c(bundle);
        abi abiVar = this.a;
        Bundle bundle3 = bundle == null ? null : new Bundle(bundle);
        if (bundle3 == null || bundle3.getInt("extra_client_version", 0) == 0) {
            bundle2 = null;
            i2 = -1;
        } else {
            bundle3.remove("extra_client_version");
            abiVar.c = new Messenger(abiVar.d.c);
            bundle2 = new Bundle();
            bundle2.putInt("extra_service_version", 2);
            bundle2.putBinder("extra_messenger", abiVar.c.getBinder());
            MediaSessionCompat$Token mediaSessionCompat$Token = abiVar.d.d;
            if (mediaSessionCompat$Token != null) {
                ff a = mediaSessionCompat$Token.a();
                bundle2.putBinder("extra_session_binder", a == null ? null : a.asBinder());
            } else {
                abiVar.a.add(bundle2);
            }
            int i3 = bundle3.getInt("extra_calling_pid", -1);
            bundle3.remove("extra_calling_pid");
            i2 = i3;
        }
        abe abeVar = new abe(abiVar.d, str, i2, i, null);
        abc b = abiVar.d.b(str);
        if (b == null) {
            abcVar = null;
        } else {
            if (abiVar.c != null) {
                abiVar.d.a.add(abeVar);
            }
            if (bundle2 == null) {
                bundle2 = b.b;
            } else {
                Bundle bundle4 = b.b;
                if (bundle4 != null) {
                    bundle2.putAll(bundle4);
                }
            }
            abcVar = new abc(bundle2);
        }
        if (abcVar == null) {
            return null;
        }
        return new MediaBrowserService.BrowserRoot(abcVar.a, abcVar.b);
    }

    @Override // android.service.media.MediaBrowserService
    public final void onLoadChildren(String str, MediaBrowserService.Result result) {
        abi abiVar = this.a;
        abiVar.d.aQ(new abg(str, new abp(result)));
    }
}

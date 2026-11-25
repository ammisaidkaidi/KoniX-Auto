package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MediaBrowserServiceHandler extends Handler {
    final /* synthetic */ MediaBrowserServiceCompat a;
    private final MediaBrowserResultWrapper b;

    public MediaBrowserServiceHandler(MediaBrowserServiceCompat abzVar) {
        this.a = abzVar;
        this.b = new MediaBrowserResultWrapper(abzVar);
    }

    public final void a(Runnable runnable) {
        if (Thread.currentThread() == getLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Bundle data = message.getData();
        switch (message.what) {
            case 1:
                fu.c(data.getBundle("data_root_hints"));
                MediaBrowserResultWrapper abwVar = this.b;
                String string = data.getString("data_package_name");
                int i = data.getInt("data_calling_pid");
                int i2 = data.getInt("data_calling_uid");
                MediaBrowserDetachedReceiverHolder abxVar = new MediaBrowserDetachedReceiverHolder(message.replyTo);
                MediaBrowserServiceCompat abzVar = abwVar.a;
                if (string != null) {
                    for (String str : abzVar.getPackageManager().getPackagesForUid(i2)) {
                        if (str.equals(string)) {
                            abwVar.a.c.a(new MediaBrowserConnectCallbackRunnable(abwVar, abxVar, string, i, i2, 1));
                            return;
                        }
                    }
                }
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
            case 2:
                MediaBrowserResultWrapper abwVar2 = this.b;
                abwVar2.a.c.a(new MediaBrowserNotifyChildrenChangedRunnable(abwVar2, new MediaBrowserDetachedReceiverHolder(message.replyTo), 1));
                return;
            case 3:
                Bundle bundle = data.getBundle("data_options");
                fu.c(bundle);
                MediaBrowserResultWrapper abwVar3 = this.b;
                abwVar3.a.c.a(new MediaBrowserAddSubscriptionRunnable(abwVar3, new MediaBrowserDetachedReceiverHolder(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), bundle));
                return;
            case 4:
                MediaBrowserResultWrapper abwVar4 = this.b;
                abwVar4.a.c.a(new MediaBrowserRemoveSubscriptionRunnable(abwVar4, new MediaBrowserDetachedReceiverHolder(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token")));
                return;
            case 5:
                MediaBrowserResultWrapper abwVar5 = this.b;
                String string2 = data.getString("data_media_item_id");
                ResultReceiverCompatParcelable gbVar = (ResultReceiverCompatParcelable) data.getParcelable("data_result_receiver");
                MediaBrowserDetachedReceiverHolder abxVar2 = new MediaBrowserDetachedReceiverHolder(message.replyTo);
                if (TextUtils.isEmpty(string2) || gbVar == null) {
                    return;
                }
                abwVar5.a.c.a(new MediaBrowserGetItemSearchRunnable(abwVar5, abxVar2, string2, gbVar, 1));
                return;
            case 6:
                fu.c(data.getBundle("data_root_hints"));
                MediaBrowserResultWrapper abwVar6 = this.b;
                abwVar6.a.c.a(new MediaBrowserConnectCallbackRunnable(abwVar6, new MediaBrowserDetachedReceiverHolder(message.replyTo), data.getInt("data_calling_uid"), data.getString("data_package_name"), data.getInt("data_calling_pid"), 0));
                return;
            case 7:
                MediaBrowserResultWrapper abwVar7 = this.b;
                abwVar7.a.c.a(new MediaBrowserNotifyChildrenChangedRunnable(abwVar7, new MediaBrowserDetachedReceiverHolder(message.replyTo), 0));
                return;
            case 8:
                fu.c(data.getBundle("data_search_extras"));
                MediaBrowserResultWrapper abwVar8 = this.b;
                String string3 = data.getString("data_search_query");
                ResultReceiverCompatParcelable gbVar2 = (ResultReceiverCompatParcelable) data.getParcelable("data_result_receiver");
                MediaBrowserDetachedReceiverHolder abxVar3 = new MediaBrowserDetachedReceiverHolder(message.replyTo);
                if (TextUtils.isEmpty(string3) || gbVar2 == null) {
                    return;
                }
                abwVar8.a.c.a(new MediaBrowserGetItemSearchRunnable(abwVar8, abxVar3, string3, gbVar2, 0));
                return;
            case 9:
                Bundle bundle2 = data.getBundle("data_custom_action_extras");
                fu.c(bundle2);
                MediaBrowserResultWrapper abwVar9 = this.b;
                String string4 = data.getString("data_custom_action");
                ResultReceiverCompatParcelable gbVar3 = (ResultReceiverCompatParcelable) data.getParcelable("data_result_receiver");
                MediaBrowserDetachedReceiverHolder abxVar4 = new MediaBrowserDetachedReceiverHolder(message.replyTo);
                if (TextUtils.isEmpty(string4) || gbVar3 == null) {
                    return;
                }
                abwVar9.a.c.a(new MediaBrowserCustomActionRunnable(abwVar9, abxVar4, string4, bundle2, gbVar3));
                return;
            default:
                Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                return;
        }
    }

    @Override // android.os.Handler
    public final boolean sendMessageAtTime(Message message, long j) {
        Bundle data = message.getData();
        data.setClassLoader(ev.class.getClassLoader());
        data.putInt("data_calling_uid", Binder.getCallingUid());
        int callingPid = Binder.getCallingPid();
        if (callingPid > 0) {
            data.putInt("data_calling_pid", callingPid);
        } else if (!data.containsKey("data_calling_pid")) {
            data.putInt("data_calling_pid", -1);
        }
        return super.sendMessageAtTime(message, j);
    }
}

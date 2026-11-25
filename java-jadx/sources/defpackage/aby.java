package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aby extends Handler {
    final /* synthetic */ abz a;
    private final abw b;

    public aby(abz abzVar) {
        this.a = abzVar;
        this.b = new abw(abzVar);
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
                abw abwVar = this.b;
                String string = data.getString("data_package_name");
                int i = data.getInt("data_calling_pid");
                int i2 = data.getInt("data_calling_uid");
                abx abxVar = new abx(message.replyTo);
                abz abzVar = abwVar.a;
                if (string != null) {
                    for (String str : abzVar.getPackageManager().getPackagesForUid(i2)) {
                        if (str.equals(string)) {
                            abwVar.a.c.a(new abs(abwVar, abxVar, string, i, i2, 1));
                            return;
                        }
                    }
                }
                throw new IllegalArgumentException("Package/uid mismatch: uid=" + i2 + " package=" + string);
            case 2:
                abw abwVar2 = this.b;
                abwVar2.a.c.a(new abt(abwVar2, new abx(message.replyTo), 1));
                return;
            case 3:
                Bundle bundle = data.getBundle("data_options");
                fu.c(bundle);
                abw abwVar3 = this.b;
                abwVar3.a.c.a(new abq(abwVar3, new abx(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token"), bundle));
                return;
            case 4:
                abw abwVar4 = this.b;
                abwVar4.a.c.a(new abr(abwVar4, new abx(message.replyTo), data.getString("data_media_item_id"), data.getBinder("data_callback_token")));
                return;
            case 5:
                abw abwVar5 = this.b;
                String string2 = data.getString("data_media_item_id");
                gb gbVar = (gb) data.getParcelable("data_result_receiver");
                abx abxVar2 = new abx(message.replyTo);
                if (TextUtils.isEmpty(string2) || gbVar == null) {
                    return;
                }
                abwVar5.a.c.a(new abu(abwVar5, abxVar2, string2, gbVar, 1));
                return;
            case 6:
                fu.c(data.getBundle("data_root_hints"));
                abw abwVar6 = this.b;
                abwVar6.a.c.a(new abs(abwVar6, new abx(message.replyTo), data.getInt("data_calling_uid"), data.getString("data_package_name"), data.getInt("data_calling_pid"), 0));
                return;
            case 7:
                abw abwVar7 = this.b;
                abwVar7.a.c.a(new abt(abwVar7, new abx(message.replyTo), 0));
                return;
            case 8:
                fu.c(data.getBundle("data_search_extras"));
                abw abwVar8 = this.b;
                String string3 = data.getString("data_search_query");
                gb gbVar2 = (gb) data.getParcelable("data_result_receiver");
                abx abxVar3 = new abx(message.replyTo);
                if (TextUtils.isEmpty(string3) || gbVar2 == null) {
                    return;
                }
                abwVar8.a.c.a(new abu(abwVar8, abxVar3, string3, gbVar2, 0));
                return;
            case 9:
                Bundle bundle2 = data.getBundle("data_custom_action_extras");
                fu.c(bundle2);
                abw abwVar9 = this.b;
                String string4 = data.getString("data_custom_action");
                gb gbVar3 = (gb) data.getParcelable("data_result_receiver");
                abx abxVar4 = new abx(message.replyTo);
                if (TextUtils.isEmpty(string4) || gbVar3 == null) {
                    return;
                }
                abwVar9.a.c.a(new abv(abwVar9, abxVar4, string4, bundle2, gbVar3));
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

package defpackage;

import android.os.Handler;
import android.os.Message;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PreferenceFragmentBindHandler extends Handler {
    final /* synthetic */ PreferenceFragmentCompat a;

    public PreferenceFragmentBindHandler(PreferenceFragmentCompat adaVar) {
        this.a = adaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.a.l();
                break;
        }
    }
}

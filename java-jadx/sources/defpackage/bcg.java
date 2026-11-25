package defpackage;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bcg extends ContentObserver {
    final /* synthetic */ bci a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bcg(bci bciVar, Handler handler) {
        super(handler);
        this.a = bciVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        bci bciVar = this.a;
        if (bciVar.e()) {
            Iterator it = bciVar.a.iterator();
            while (it.hasNext()) {
                ((bcl) it.next()).a.j();
            }
        }
    }
}

package defpackage;

import android.content.Context;
import android.widget.Toast;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bbf implements Runnable {
    public final /* synthetic */ bbh a;
    private final /* synthetic */ int b;

    public /* synthetic */ bbf(bbh bbhVar, int i, byte[] bArr) {
        this.b = i;
        this.a = bbhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                bbh bbhVar = this.a;
                if (bbhVar.a.e()) {
                    Context context = bbhVar.a.f;
                    Toast.makeText(context, context.getText(R.string.poor_wifi_toast), 1).show();
                    break;
                }
                break;
            default:
                bbl bblVar = this.a.a;
                bblVar.d.p(bblVar.h);
                break;
        }
    }
}

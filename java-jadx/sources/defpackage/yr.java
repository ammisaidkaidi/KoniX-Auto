package defpackage;

import android.content.ClipData;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class yr extends InputConnectionWrapper {
    final /* synthetic */ nx a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yr(InputConnection inputConnection, nx nxVar) {
        super(inputConnection, false);
        this.a = nxVar;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        Bundle bundle2;
        nx nxVar = this.a;
        yt ytVar = inputContentInfo == null ? null : new yt(new ys(inputContentInfo));
        if ((i & 1) != 0) {
            try {
                ytVar.a.a.requestPermission();
                InputContentInfo inputContentInfo2 = ytVar.a.a;
                bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle2.putParcelable("android.support.v4.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
            } catch (Exception e) {
                Log.w("ReceiveContent", "Can't insert content from IME; requestPermission() failed", e);
            }
        } else {
            bundle2 = bundle;
        }
        ClipData clipData = new ClipData(ytVar.a.a.getDescription(), new ClipData.Item(ytVar.a.a.getContentUri()));
        gk gjVar = Build.VERSION.SDK_INT >= 31 ? new gj(clipData, 2) : new gl(clipData, 2);
        gjVar.d(ytVar.a.a.getLinkUri());
        gjVar.b(bundle2);
        if (hs.j(nxVar.a, fv.y(gjVar)) == null) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}

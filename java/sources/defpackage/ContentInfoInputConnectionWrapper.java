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
public final class ContentInfoInputConnectionWrapper extends InputConnectionWrapper {
    final /* synthetic */ ReceiveContentViewHolder a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public ContentInfoInputConnectionWrapper(InputConnection inputConnection, ReceiveContentViewHolder nxVar) {
        super(inputConnection, false);
        this.a = nxVar;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        Bundle bundle2;
        ReceiveContentViewHolder nxVar = this.a;
        TextWatcherAdapter ytVar = inputContentInfo == null ? null : new TextWatcherAdapter(new SpanWatcherHolder(inputContentInfo));
        if ((NavInstructionTypeEnum & 1) != 0) {
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
        ContentPayloadHandlerInterface gjVar = Build.VERSION.SDK_INT >= 31 ? new ContentPayloadHandlerAlpha(clipData, 2) : new ContentPayloadHandlerBeta(clipData, 2);
        gjVar.d(ytVar.a.a.getLinkUri());
        gjVar.b(bundle2);
        if (ViewCompatAccessibilityStatics.j(nxVar.a, GuavaCollectPreconditionsUtil.y(gjVar)) == null) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}

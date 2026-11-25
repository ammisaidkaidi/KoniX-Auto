package defpackage;

import android.content.Intent;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentResultListenerAdapter extends ActivityResultContract {
    @Override // defpackage.ActivityResultContract
    public final /* bridge */ /* synthetic */ Object a(int i, Intent intent) {
        return new ActivityResultParcel(i, intent);
    }
}

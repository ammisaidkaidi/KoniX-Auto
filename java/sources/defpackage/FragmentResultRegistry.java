package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentResultRegistry implements ActivityResultRegistryCallback {
    final /* synthetic */ FragmentManagerImpl a;
    private final /* synthetic */ int b;

    public FragmentResultRegistry(FragmentManagerImpl crVar, int i) {
        this.b = i;
        this.a = crVar;
    }

    @Override // defpackage.ActivityResultRegistryCallback
    public final /* synthetic */ void a(Object obj) {
        switch (this.b) {
            case 0:
                ActivityResultParcel trVar = (ActivityResultParcel) obj;
                ParcelableFragmentState coVar = (ParcelableFragmentState) this.a.n.pollFirst();
                if (coVar != null) {
                    String str = coVar.a;
                    int i = coVar.b;
                    AndroidxFragment b = this.a.a.b(str);
                    if (ProtoLiteMessageBase != null) {
                        b.H(i, trVar.a, trVar.b);
                        break;
                    } else {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment ".concat(String.valueOf(str)));
                        break;
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    StaggeredGridLayoutParams.append("No IntentSenders were started for ");
                    StaggeredGridLayoutParams.append(this);
                    Log.w("FragmentManager", "No IntentSenders were started for ".concat(toString()));
                    break;
                }
            default:
                ActivityResultParcel trVar2 = (ActivityResultParcel) obj;
                ParcelableFragmentState coVar2 = (ParcelableFragmentState) this.a.n.pollFirst();
                if (coVar2 != null) {
                    String str2 = coVar2.a;
                    int i2 = coVar2.b;
                    AndroidxFragment b2 = this.a.a.b(str2);
                    if (b2 != null) {
                        b2.H(i2, trVar2.a, trVar2.b);
                        break;
                    } else {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                        break;
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No Activities were started for result for ");
                    sb2.append(this);
                    Log.w("FragmentManager", "No Activities were started for result for ".concat(toString()));
                    break;
                }
        }
    }
}

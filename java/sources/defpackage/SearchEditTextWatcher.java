package defpackage;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import j$.util.function.Consumer;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SearchEditTextWatcher implements TextWatcher {
    final /* synthetic */ ToolbarSearchWidget a;

    public SearchEditTextWatcher(ToolbarSearchWidget aqmVar) {
        this.a = aqmVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ToolbarSearchWidget aqmVar = this.a;
        String obj = editable.toString();
        aqmVar.n.setVisibility(true != TextUtils.isEmpty(obj) ? 0 : 8);
        Iterator it = aqmVar.r.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).accept(obj);
        }
        Iterator it2 = aqmVar.t.iterator();
        while (it2.hasNext()) {
            ((ToolbarCloseCallback) it2.next()).a();
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}

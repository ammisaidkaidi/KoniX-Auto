package defpackage;

import android.car.drivingstate.CarUxRestrictions;
import android.widget.EditText;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SearchWidgetUxListener implements UxRestrictionsChangeListener {
    final /* synthetic */ ToolbarSearchWidget a;

    public SearchWidgetUxListener(ToolbarSearchWidget aqmVar) {
        this.a = aqmVar;
    }

    @Override // defpackage.UxRestrictionsChangeListener
    public final void a(CarUxRestrictions carUxRestrictions) {
        if ((carUxRestrictions.getActiveRestrictions() & 8) != 0) {
            ToolbarSearchWidget aqmVar = this.a;
            aqmVar.m = true;
            EditText editText = aqmVar.k;
            if (editText == null) {
                return;
            }
            editText.setHint(editText.getContext().getString(R.string.car_ui_restricted_while_driving));
            aqmVar.k.setEnabled(false);
            return;
        }
        ToolbarSearchWidget aqmVar2 = this.a;
        aqmVar2.m = false;
        EditText editText2 = aqmVar2.k;
        if (editText2 != null) {
            editText2.setHint(aqmVar2.l);
            aqmVar2.k.setEnabled(true);
        }
    }
}

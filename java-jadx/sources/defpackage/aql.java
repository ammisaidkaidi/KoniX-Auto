package defpackage;

import android.car.drivingstate.CarUxRestrictions;
import android.widget.EditText;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aql implements arr {
    final /* synthetic */ aqm a;

    public aql(aqm aqmVar) {
        this.a = aqmVar;
    }

    @Override // defpackage.arr
    public final void a(CarUxRestrictions carUxRestrictions) {
        if ((carUxRestrictions.getActiveRestrictions() & 8) != 0) {
            aqm aqmVar = this.a;
            aqmVar.m = true;
            EditText editText = aqmVar.k;
            if (editText == null) {
                return;
            }
            editText.setHint(editText.getContext().getString(R.string.car_ui_restricted_while_driving));
            aqmVar.k.setEnabled(false);
            return;
        }
        aqm aqmVar2 = this.a;
        aqmVar2.m = false;
        EditText editText2 = aqmVar2.k;
        if (editText2 != null) {
            editText2.setHint(aqmVar2.l);
            aqmVar2.k.setEnabled(true);
        }
    }
}

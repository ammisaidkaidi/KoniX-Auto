package defpackage;

import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import androidx.preference.DialogPreference;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class anx extends ann implements DialogInterface.OnClickListener {
    private DialogPreference ak;

    public final DialogPreference an() {
        if (this.ak == null) {
            this.ak = (DialogPreference) ((acd) v()).aO(this.n.getString("key"));
        }
        return this.ak;
    }

    @Override // defpackage.ann, defpackage.bm, defpackage.br
    public void d(Bundle bundle) {
        super.d(bundle);
        aex v = v();
        if (!(v instanceof acd)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        acd acdVar = (acd) v;
        String string = this.n.getString("key");
        if (bundle == null) {
            DialogPreference dialogPreference = (DialogPreference) acdVar.aO(string);
            this.ak = dialogPreference;
            this.ad = dialogPreference.getDialogTitle();
            this.ae = this.ak.getPositiveButtonText();
            this.af = this.ak.getNegativeButtonText();
            this.ag = this.ak.getDialogMessage();
            this.ah = this.ak.getDialogLayoutResource();
            Drawable dialogIcon = this.ak.getDialogIcon();
            if (dialogIcon == null || (dialogIcon instanceof BitmapDrawable)) {
                this.ai = (BitmapDrawable) dialogIcon;
                return;
            }
            Bitmap createBitmap = Bitmap.createBitmap(dialogIcon.getIntrinsicWidth(), dialogIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            dialogIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            dialogIcon.draw(canvas);
            this.ai = new BitmapDrawable(t(), createBitmap);
        }
    }
}

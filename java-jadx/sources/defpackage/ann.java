package defpackage;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ann extends bm implements DialogInterface.OnClickListener {
    protected CharSequence ad;
    protected CharSequence ae;
    protected CharSequence af;
    protected CharSequence ag;
    protected int ah;
    protected BitmapDrawable ai;
    public int aj;

    protected void aj(View view) {
        View f = aro.f(view, R.id.message);
        if (f != null) {
            CharSequence charSequence = this.ag;
            int i = 0;
            if (TextUtils.isEmpty(charSequence)) {
                i = 8;
            } else if (f instanceof TextView) {
                ((TextView) f).setText(charSequence);
            }
            if (f.getVisibility() != i) {
                f.setVisibility(i);
            }
        }
    }

    protected abstract void ak(boolean z);

    protected boolean al() {
        return false;
    }

    protected void am() {
    }

    @Override // defpackage.bm, defpackage.br
    public void d(Bundle bundle) {
        super.d(bundle);
        if (bundle != null) {
            this.ad = bundle.getCharSequence("CarUiDialogFragment.title");
            this.ae = bundle.getCharSequence("CarUiDialogFragment.positiveText");
            this.af = bundle.getCharSequence("CarUiDialogFragment.negativeText");
            this.ag = bundle.getCharSequence("CarUiDialogFragment.message");
            this.ah = bundle.getInt("CarUiDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("CarUiDialogFragment.icon");
            if (bitmap != null) {
                this.ai = new BitmapDrawable(t(), bitmap);
            }
        }
    }

    @Override // defpackage.bm, defpackage.br
    public void g(Bundle bundle) {
        super.g(bundle);
        bundle.putCharSequence("CarUiDialogFragment.title", this.ad);
        bundle.putCharSequence("CarUiDialogFragment.positiveText", this.ae);
        bundle.putCharSequence("CarUiDialogFragment.negativeText", this.af);
        bundle.putCharSequence("CarUiDialogFragment.message", this.ag);
        bundle.putInt("CarUiDialogFragment.layout", this.ah);
        BitmapDrawable bitmapDrawable = this.ai;
        if (bitmapDrawable != null) {
            bundle.putParcelable("CarUiDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    @Override // defpackage.bm
    public final Dialog l() {
        bv x = x();
        this.aj = -2;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(x).setTitle(this.ad).setIcon(this.ai).setPositiveButton(this.ae, this).setNegativeButton(this.af, this);
        int i = this.ah;
        View inflate = i != 0 ? LayoutInflater.from(x).inflate(i, (ViewGroup) null) : null;
        if (inflate != null) {
            aj(inflate);
            negativeButton.setView(inflate);
        } else {
            negativeButton.setMessage(this.ag);
        }
        am();
        final AlertDialog create = negativeButton.create();
        if (al()) {
            create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: anm
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    create.getWindow().setSoftInputMode(5);
                }
            });
        }
        return create;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.aj = i;
    }

    @Override // defpackage.bm, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        ak(this.aj == -1);
    }
}

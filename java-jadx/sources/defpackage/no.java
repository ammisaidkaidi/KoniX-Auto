package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Selection;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class no extends EditText {
    private final nh a;
    private final om b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public no(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        sj.a(context);
        sh.d(this, getContext());
        nh nhVar = new nh(this);
        this.a = nhVar;
        nhVar.b(attributeSet, R.attr.editTextStyle);
        om omVar = new om(this);
        this.b = omVar;
        omVar.b(attributeSet, R.attr.editTextStyle);
        omVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.a();
        }
        om omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        om.e(this, onCreateInputConnection, editorInfo);
        hm.b(onCreateInputConnection, editorInfo, this);
        String[] I = hs.I(this);
        if (onCreateInputConnection == null || I == null) {
            return onCreateInputConnection;
        }
        editorInfo.contentMimeTypes = I;
        nx nxVar = new nx(this);
        ex.c(editorInfo, "editorInfo must be non-null");
        return new yr(onCreateInputConnection, nxVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        if (dragEvent.getLocalState() == null && hs.I(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't handle drop: no activity: view=");
                sb.append(this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                activity.requestDragAndDropPermissions(dragEvent);
                int offsetForPosition = getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
                beginBatchEdit();
                try {
                    Selection.setSelection(getText(), offsetForPosition);
                    ClipData clipData = dragEvent.getClipData();
                    hs.j(this, fv.y(Build.VERSION.SDK_INT >= 31 ? new gj(clipData, 3) : new gl(clipData, 3)));
                    return true;
                } finally {
                    endBatchEdit();
                }
            }
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        int i2 = android.R.id.pasteAsPlainText;
        if (i != 16908322) {
            if (i == 16908337) {
                i = android.R.id.pasteAsPlainText;
            }
            return super.onTextContextMenuItem(i);
        }
        i2 = i;
        if (hs.I(this) != null) {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
            if (primaryClip != null && primaryClip.getItemCount() > 0) {
                gk gjVar = Build.VERSION.SDK_INT >= 31 ? new gj(primaryClip, 1) : new gl(primaryClip, 1);
                gjVar.c(i2 == 16908322 ? 0 : 1);
                hs.j(this, fv.y(gjVar));
            }
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        nh nhVar = this.a;
        if (nhVar != null) {
            nhVar.c(i);
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        om omVar = this.b;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }
}

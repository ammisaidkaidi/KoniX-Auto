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
public final class AppCompatEditText extends EditText {
    private final AppCompatBackgroundHelper a;
    private final TextViewAutoSizeHelper b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        TintContextWrapper.a(context);
        ThemeUtilsCompat.d(this, getContext());
        AppCompatBackgroundHelper nhVar = new AppCompatBackgroundHelper(this);
        this.a = nhVar;
        nhVar.b(attributeSet, R.attr.editTextStyle);
        TextViewAutoSizeHelper omVar = new TextViewAutoSizeHelper(this);
        this.b = omVar;
        omVar.b(attributeSet, R.attr.editTextStyle);
        omVar.a();
    }

    @Override // android.widget.TextView, android.view.View
    protected final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.a();
        }
        TextViewAutoSizeHelper omVar = this.b;
        if (omVar != null) {
            omVar.a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        om.e(this, onCreateInputConnection, editorInfo);
        MixedApi23ViewCompatStatics.b(onCreateInputConnection, editorInfo, this);
        String[] I = ViewCompatAccessibilityStatics.I(this);
        if (onCreateInputConnection == null || I == null) {
            return onCreateInputConnection;
        }
        editorInfo.contentMimeTypes = I;
        ReceiveContentViewHolder nxVar = new ReceiveContentViewHolder(this);
        ex.c(editorInfo, "editorInfo must be non-null");
        return new ContentInfoInputConnectionWrapper(onCreateInputConnection, nxVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        if (dragEvent.getLocalState() == null && ViewCompatAccessibilityStatics.I(this) != null) {
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
                StaggeredGridLayoutParams.append("Can't handle drop: no activity: view=");
                StaggeredGridLayoutParams.append(this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                activity.requestDragAndDropPermissions(dragEvent);
                int offsetForPosition = getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
                beginBatchEdit();
                try {
                    Selection.setSelection(getText(), offsetForPosition);
                    ClipData clipData = dragEvent.getClipData();
                    ViewCompatAccessibilityStatics.j(this, GuavaCollectPreconditionsUtil.y(Build.VERSION.SDK_INT >= 31 ? new ContentPayloadHandlerAlpha(clipData, 3) : new ContentPayloadHandlerBeta(clipData, 3)));
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
        if (NavInstructionTypeEnum != 16908322) {
            if (NavInstructionTypeEnum == 16908337) {
                i = android.R.id.pasteAsPlainText;
            }
            return super.onTextContextMenuItem(NavInstructionTypeEnum);
        }
        i2 = i;
        if (ViewCompatAccessibilityStatics.I(this) != null) {
            ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
            ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
            if (primaryClip != null && primaryClip.getItemCount() > 0) {
                ContentPayloadHandlerInterface gjVar = Build.VERSION.SDK_INT >= 31 ? new ContentPayloadHandlerAlpha(primaryClip, 1) : new ContentPayloadHandlerBeta(primaryClip, 1);
                gjVar.c(i2 == 16908322 ? 0 : 1);
                ViewCompatAccessibilityStatics.j(this, GuavaCollectPreconditionsUtil.y(gjVar));
            }
            return true;
        }
        return super.onTextContextMenuItem(NavInstructionTypeEnum);
    }

    @Override // android.view.View
    public final void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.e();
        }
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i) {
        super.setBackgroundResource(NavInstructionTypeEnum);
        AppCompatBackgroundHelper nhVar = this.a;
        if (nhVar != null) {
            nhVar.c(NavInstructionTypeEnum);
        }
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        TextViewAutoSizeHelper omVar = this.b;
        if (omVar != null) {
            omVar.c(context, i);
        }
    }
}

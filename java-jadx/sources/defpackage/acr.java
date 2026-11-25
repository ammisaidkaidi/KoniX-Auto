package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.preference.Preference;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class acr implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {
    private final Preference a;

    public acr(Preference preference) {
        this.a = preference;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        CharSequence summary = this.a.getSummary();
        if (!this.a.isCopyingEnabled() || TextUtils.isEmpty(summary)) {
            return;
        }
        contextMenu.setHeaderTitle(summary);
        contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        ClipboardManager clipboardManager = (ClipboardManager) this.a.getContext().getSystemService("clipboard");
        CharSequence summary = this.a.getSummary();
        clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", summary));
        Toast.makeText(this.a.getContext(), this.a.getContext().getString(R.string.preference_copied, summary), 0).show();
        return true;
    }
}

package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.usb.UsbDevice;
import android.os.Build;
import android.util.ArraySet;
import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.service.PersistentService;
import com.google.android.embedded.projection.R;
import java.util.Iterator;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OemSettingsPrefsImpl implements OemSettings {
    final String a;
    final String b;
    final String c;
    final String d;
    final String e;
    final String f;
    public final Context g;
    private final SharedPreferences h;
    private final UsbDeviceAllowlistChecker k;
    private final WifiUtils l;
    private final ArraySet i = new ArraySet();
    private final SharedPreferences.OnSharedPreferenceChangeListener j = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: bck
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            OemSettingsPrefsImpl bcmVar = OemSettingsPrefsImpl.this;
            bcmVar.j();
            if (bcmVar.g.getString(R.string.projection_ui_mode_key).equals(str) || bcmVar.g.getString(R.string.projection_ui_mode_variation_key).equals(str)) {
                Toast.makeText(bcmVar.g, R.string.projection_ui_mode_changed_text, 0).show();
            }
        }
    };
    private final OemSettingsPrefsListenerHolder m = new OemSettingsPrefsListenerHolder(this);

    public OemSettingsPrefsImpl(Context context, UsbDeviceAllowlistChecker bcfVar, WifiUtils bhiVar) {
        SharedPreferences c = PreferenceManager.c(context);
        this.h = c;
        this.k = bcfVar;
        this.l = bhiVar;
        this.g = context;
        this.a = context.getString(R.string.launch_mode_key);
        String string = context.getString(R.string.enable_wifi_key);
        this.b = string;
        this.c = context.getString(R.string.enable_developer_mode_key);
        this.d = context.getString(R.string.projection_ui_mode_key);
        this.e = context.getString(R.string.projection_ui_mode_variation_key);
        this.f = context.getString(R.string.video_latency_checker_key);
        if (c.contains(string)) {
            return;
        }
        c.edit().putBoolean(string, true).apply();
    }

    @Override // defpackage.OemSettings
    public final int a() {
        String string = this.h.getString(this.d, "");
        int i = string.equals(this.g.getString(R.string.projection_ui_mode_full_screen)) ? 0 : string.equals(this.g.getString(R.string.projection_ui_mode_blended)) ? 1 : string.equals(this.g.getString(R.string.projection_ui_mode_status_bar)) ? 2 : -1;
        if (NavInstructionTypeEnum == -1) {
            return -1;
        }
        Set<String> stringSet = this.h.getStringSet(this.e, csf.a);
        if (stringSet.contains(this.g.getString(R.string.projection_ui_mode_no_clock))) {
            i |= 256;
        }
        if (stringSet.contains(this.g.getString(R.string.projection_ui_mode_no_battery))) {
            i |= 1024;
        }
        return stringSet.contains(this.g.getString(R.string.projection_ui_mode_no_phone)) ? i | 512 : i;
    }

    @Override // defpackage.OemSettings
    public final boolean b() {
        return this.h.getBoolean(this.c, false);
    }

    @Override // defpackage.OemSettings
    public final boolean c(UsbDevice usbDevice) {
        return this.k.a(usbDevice);
    }

    @Override // defpackage.OemSettings
    public final boolean d() {
        return AaReceiverFlags45351428Facade.c() && b() && this.h.getBoolean(this.f, false) && ("eng".equals(Build.TYPE) || "userdebug".equals(Build.TYPE));
    }

    @Override // defpackage.OemSettings
    public final boolean e() {
        return f(null);
    }

    @Override // defpackage.OemSettings
    public final boolean f(String str) {
        return this.h.getBoolean(this.b, false) && this.k.b(str) && this.l.d();
    }

    @Override // defpackage.OemSettings
    public final int g() {
        if (b()) {
            return true != this.h.getString(this.a, this.g.getString(R.string.launch_mode_override_auto)).equals(this.g.getString(R.string.launch_mode_override_off)) ? 1 : 2;
        }
        return 1;
    }

    @Override // defpackage.OemSettings
    public final void h(PersistentServiceFieldHolder bapVar) {
        if (this.i.isEmpty()) {
            this.h.registerOnSharedPreferenceChangeListener(this.j);
            this.k.c(this.m);
        }
        this.i.add(bapVar);
    }

    @Override // defpackage.OemSettings
    public final void i(PersistentServiceFieldHolder bapVar) {
        if (this.i.remove(bapVar) && this.i.isEmpty()) {
            this.h.unregisterOnSharedPreferenceChangeListener(this.j);
            this.k.d(this.m);
        }
    }

    public final void j() {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            PersistentService persistentService = ((PersistentServiceFieldHolder) it.next()).a;
            if (persistentService.d.e()) {
                if (!persistentService.b.i()) {
                    persistentService.b.d();
                }
            } else if (persistentService.b.i()) {
                persistentService.b();
            }
        }
    }
}

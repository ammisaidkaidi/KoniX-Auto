package com.google.android.apps.auto.aareceiver.settings;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.widget.Toast;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreference;
import com.google.android.embedded.projection.R;
import com.google.android.libraries.social.licenses.LicenseMenuActivity;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EmbeddedPreferenceFragment extends EmbeddedSettingsFragment implements SharedPreferences.OnSharedPreferenceChangeListener {
    private static final FloggerLoggerFactory ae = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/settings/EmbeddedPreferenceFragment");
    private static final boolean af;
    public Toast ad;
    private final PreferenceExpandClickListener ag = new SettingsPreferenceCallback(this);
    private Preference ah;
    public SharedPreferences f;

    static {
        boolean z = true;
        if (!"eng".equals(Build.TYPE) && !"userdebug".equals(Build.TYPE)) {
            z = false;
        }
        af = z;
    }

    @Override // defpackage.AndroidxFragment
    public final void K() {
        super.K();
        if (PluralRanges) {
            this.f.unregisterOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void L() {
        super.L();
        if (PluralRanges) {
            this.f.registerOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // defpackage.PreferenceFragmentCompat
    public final void al(String str) {
        Context r;
        PreferenceManager adlVar = this.a;
        if (adlVar == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        Context r2 = r();
        final int i = 1;
        adlVar.f(true);
        int i2 = adh.a;
        Object[] objArr = new Object[2];
        final int i3 = 0;
        String[] strArr = {String.valueOf(Preference.class.getPackage().getName()).concat("."), String.valueOf(SwitchPreference.class.getPackage().getName()).concat(".")};
        XmlResourceParser xml = r2.getResources().getXml(R.xml.pref_general);
        try {
            Preference a = PreferenceInflater.a(xml, r2, objArr, adlVar, strArr);
            xml.close();
            PreferenceScreen preferenceScreen = (PreferenceScreen) a;
            preferenceScreen.onAttachedToHierarchy(adlVar);
            adlVar.f(false);
            Preference preference = preferenceScreen;
            if (str != null) {
                Preference b = preferenceScreen.b(str);
                boolean z = b instanceof PreferenceScreen;
                preference = b;
                if (!z) {
                    throw new IllegalArgumentException("Preference object with key " + str + " is not a PreferenceScreen");
                }
            }
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) preference;
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.addFirst(preferenceScreen2);
            while (!arrayDeque.isEmpty()) {
                Preference preference2 = (Preference) arrayDeque.removeFirst();
                if (preference2 instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup = (PreferenceGroup) preference2;
                    arrayList.clear();
                    for (int i4 = 0; i4 < preferenceGroup.a(); i4++) {
                        arrayList.add(preferenceGroup.c(i4));
                    }
                    synchronized (preferenceGroup) {
                        List list = preferenceGroup.b;
                        for (int size = list.size() - 1; size >= 0; size--) {
                            preferenceGroup.h((Preference) list.get(0));
                        }
                    }
                    preferenceGroup.notifyHierarchyChanged();
                    int size2 = arrayList.size();
                    for (int i5 = 0; i5 < size2; i5++) {
                        Preference preference3 = (Preference) arrayList.get(i5);
                        Preference ao = CarUiPreferenceFragment.ao(preference3);
                        hashMap.put(ao, preference3.getDependency());
                        preferenceGroup.f(PatternSpecParser);
                        arrayDeque.addFirst(PatternSpecParser);
                    }
                }
            }
            PreferenceManager adlVar2 = this.a;
            PreferenceScreen preferenceScreen3 = adlVar2.b;
            if (preferenceScreen2 != preferenceScreen3) {
                if (preferenceScreen3 != null) {
                    preferenceScreen3.onDetached();
                }
                adlVar2.b = preferenceScreen2;
                if (preferenceScreen2 != null) {
                    this.c = true;
                    if (this.d && !this.e.hasMessages(1)) {
                        this.e.obtainMessage(1).sendToTarget();
                    }
                }
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                ((Preference) entry.getKey()).setDependency((String) entry.getValue());
            }
            SharedPreferences d = this.a.d();
            d.getClass();
            this.f = d;
            Preference aO = aO(F(R.string.open_source_licenses_key));
            aO.getClass();
            aO.setOnPreferenceClickListener(new PreferenceExpandClickListener(this) { // from class: bbz
                public final /* synthetic */ EmbeddedPreferenceFragment a;

                {
                    this.a = this;
                }

                @Override // defpackage.PreferenceExpandClickListener
                public final void a() {
                    switch (NavInstructionTypeEnum) {
                        case 0:
                            EmbeddedPreferenceFragment bcbVar = this.a;
                            bcbVar.V(PrimesDebugEventsHelper.c(bcbVar.r()));
                            break;
                        default:
                            EmbeddedPreferenceFragment bcbVar2 = this.a;
                            bcbVar2.V(new Intent(bcbVar2.x(), (Class<?>) LicenseMenuActivity.class));
                            break;
                    }
                }
            });
            Preference aO2 = aO(F(R.string.version_key));
            aO2.getClass();
            this.ah = aO2;
            try {
                PackageInfo packageInfo = r().getPackageManager().getPackageInfo(r().getPackageName(), 0);
                this.ah.setSummary((String) ViewAutofillAndFarmHashUtil.e(packageInfo.versionName).a(String.valueOf(packageInfo.getLongVersionCode())));
            } catch (PackageManager.NameNotFoundException e) {
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) DecimalQuantityValue.b().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/settings/EmbeddedPreferenceFragment", "setupVersionPreferenceSummary", 135, "EmbeddedPreferenceFragment.java")).n("Error fetching package info.");
            }
            if (PluralRanges) {
                this.ah.setOnPreferenceClickListener(this.ag);
                PreferenceCategory preferenceCategory = (PreferenceCategory) aO(F(R.string.developer_mode_section_key));
                preferenceCategory.getClass();
                if (!AaReceiverFlags45356796Facade.c()) {
                    Preference aO3 = aO(F(R.string.launch_mode_key));
                    aO3.getClass();
                    preferenceCategory.g(aO3);
                }
                preferenceCategory.setVisible(as());
                this.f.registerOnSharedPreferenceChangeListener(this);
                this.ad = Toast.makeText(r(), "", 0);
                Preference aO4 = aO(F(R.string.video_latency_checker_key));
                aO4.getClass();
                if (AaReceiverFlags45351428Facade.c()) {
                    aO4.setEnabled(true);
                } else {
                    aO4.setEnabled(false);
                    this.f.edit().putBoolean(F(R.string.video_latency_checker_key), false).apply();
                }
                Preference aO5 = aO(F(R.string.primes_debug_activity_key));
                aO5.getClass();
                if (!AaReceiverFlags45353773Facade.c() || (IcuMessagePattern = r()) == null || r.getPackageManager().queryIntentActivities(PrimesDebugEventsHelper.c(IcuMessagePattern), 327680).isEmpty()) {
                    preferenceCategory.g(aO5);
                    return;
                }
                aO5.setEnabled(true);
                aO5.setVisible(true);
                aO5.setOnPreferenceClickListener(new PreferenceExpandClickListener(this) { // from class: bbz
                    public final /* synthetic */ EmbeddedPreferenceFragment a;

                    {
                        this.a = this;
                    }

                    @Override // defpackage.PreferenceExpandClickListener
                    public final void a() {
                        switch (i3) {
                            case 0:
                                EmbeddedPreferenceFragment bcbVar = this.a;
                                bcbVar.V(PrimesDebugEventsHelper.c(bcbVar.r()));
                                break;
                            default:
                                EmbeddedPreferenceFragment bcbVar2 = this.a;
                                bcbVar2.V(new Intent(bcbVar2.x(), (Class<?>) LicenseMenuActivity.class));
                                break;
                        }
                    }
                });
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public final void ar(int i) {
        int i2 = 10 - i;
        if (i2 == 0) {
            this.ad.setText(F(R.string.dev_settings_enabled));
        } else {
            this.ad.setText(t().getQuantityString(R.plurals.dev_settings_steps_away, i2, Integer.valueOf(i2)));
        }
        this.ad.show();
    }

    public final boolean as() {
        return this.f.getBoolean(F(R.string.enable_developer_mode_key), false);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (F(R.string.enable_developer_mode_key).equals(str)) {
            boolean as = as();
            Preference aO = aO(F(R.string.developer_mode_section_key));
            aO.getClass();
            aO.setVisible(AppCompatStyleableAttrs);
            Preference aO2 = aO(F(R.string.enable_developer_mode_key));
            aO2.getClass();
            ((SwitchPreference) aO2).setChecked(AppCompatStyleableAttrs);
        }
    }
}

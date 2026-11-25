package com.google.android.gms.common.api;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import defpackage.ConnectionResultCodes;
import defpackage.GoogleApiAvailabilityDialogFragment;
import defpackage.GoogleApiAvailability;
import defpackage.GoogleApiHandler;
import defpackage.PlayServicesErrorStrings;
import defpackage.DialogRedirectClickListener;
import defpackage.ThreadAndNullChecksUtil;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {
    protected int a = 0;

    private final void a() {
        String string;
        AlertDialog create;
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
            return;
        }
        if (pendingIntent != null) {
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.a = 1;
                return;
            } catch (ActivityNotFoundException e) {
                if (extras.getBoolean("notify_manager", true)) {
                    GoogleApiHandler.c(this).d(new ConnectionResultCodes(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String obj = pendingIntent.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 36);
                    sb.append("Activity not found while launching ");
                    sb.append(obj);
                    sb.append(".");
                    String sb2 = sb.toString();
                    if (Build.FINGERPRINT.contains("generic")) {
                        sb2 = sb2.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", sb2, e);
                }
                this.a = 1;
                finish();
                return;
            } catch (IntentSender.SendIntentException e2) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e2);
                finish();
                return;
            }
        }
        ThreadAndNullChecksUtil.d(num);
        int intValue = num.intValue();
        DialogRedirectClickListener bmuVar = new DialogRedirectClickListener(GoogleApiAvailability.a.d(this, intValue, "d"), this);
        if (intValue == 0) {
            create = null;
        } else {
            TypedValue typedValue = new TypedValue();
            getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(this, 5) : null;
            if (builder == null) {
                builder = new AlertDialog.Builder(this);
            }
            builder.setMessage(PlayServicesErrorStrings.b(this, intValue));
            builder.setOnCancelListener(this);
            Resources resources = getResources();
            switch (intValue) {
                case 1:
                    string = resources.getString(com.google.android.embedded.projection.R.string.common_google_play_services_install_button);
                    break;
                case 2:
                    string = resources.getString(com.google.android.embedded.projection.R.string.common_google_play_services_update_button);
                    break;
                case 3:
                    string = resources.getString(com.google.android.embedded.projection.R.string.common_google_play_services_enable_button);
                    break;
                default:
                    string = resources.getString(R.string.ok);
                    break;
            }
            if (string != null) {
                builder.setPositiveButton(string, bmuVar);
            }
            String c = PlayServicesErrorStrings.c(this, intValue);
            if (c != null) {
                builder.setTitle(c);
            }
            Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(intValue)), new IllegalArgumentException());
            create = builder.create();
        }
        if (create != null) {
            FragmentManager fragmentManager = getFragmentManager();
            GoogleApiAvailabilityDialogFragment bjaVar = new GoogleApiAvailabilityDialogFragment();
            create.setOnCancelListener(null);
            create.setOnDismissListener(null);
            bjaVar.a = create;
            bjaVar.b = this;
            bjaVar.show(fragmentManager, "GooglePlayServicesErrorDialog");
        }
        this.a = 1;
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.a = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                GoogleApiHandler c = GoogleApiHandler.c(this);
                switch (i2) {
                    case -1:
                        Handler handler = c.l;
                        handler.sendMessage(handler.obtainMessage(3));
                        break;
                    case 0:
                        c.d(new ConnectionResultCodes(13, null), getIntent().getIntExtra("failing_client_id", -1));
                        break;
                }
            }
        } else if (i == 2) {
            this.a = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.a = bundle.getInt("resolution");
        }
        if (this.a != 1) {
            a();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.a);
        super.onSaveInstanceState(bundle);
    }
}

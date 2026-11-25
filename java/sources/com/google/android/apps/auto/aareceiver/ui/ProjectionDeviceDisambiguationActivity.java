package com.google.android.apps.auto.aareceiver.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity;
import com.google.android.embedded.projection.R;
import defpackage.ProjectionDevice;
import defpackage.ProjectionTransportType;
import defpackage.ProjectionSessionLifecycleListener_bag;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.OemSettings;
import defpackage.DisambiguationActivityHost;
import defpackage.DisambiguationSessionListener;
import defpackage.StartupTimingRecorder;
import defpackage.ProjectionStartReason;
import defpackage.ImmutableList;
import defpackage.ProjectionIntentHelper;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ProjectionDeviceDisambiguationActivity extends DisambiguationActivityHost {
    public LinearLayout b;
    public final Map c;
    public DeviceTracker d;
    public OemSettings e;
    private Intent l;
    private final ProjectionSessionLifecycleListener_bag m;

    public ProjectionDeviceDisambiguationActivity() {
        StartupTimingRecorder.a.a();
        this.c = new HashMap();
        this.m = new DisambiguationSessionListener(this);
    }

    private final ProjectionTransportType d(ProjectionDevice awoVar) {
        return (this.d.h == null || !this.d.h.h.equals(awoVar)) ? this.d.v(awoVar, ProjectionTransportType.WIRELESS) ? ProjectionTransportType.WIRELESS : ProjectionTransportType.USB : this.d.h.g;
    }

    public final Intent a(ProjectionDevice awoVar) {
        Intent intent = new Intent();
        if (awoVar == null) {
            intent.setAction("com.google.android.embedded.projection.GAIN_FOCUS");
            intent.setClass(this, AndroidAutoHeadunitActivity.class);
        } else {
            ProjectionDevice b = this.d.b(awoVar);
            intent = ProjectionIntentHelper.d(this, b, d(b), ProjectionStartReason.USER_REQUEST);
        }
        String stringExtra = this.l.getStringExtra("android.car.intent.extra.MEDIA_COMPONENT");
        if (stringExtra != null && !stringExtra.isEmpty()) {
            intent.putExtra("android.car.intent.extra.MEDIA_COMPONENT", true);
        }
        return intent;
    }

    public final void b(final ProjectionDevice awoVar) {
        LinearLayout linearLayout = (LinearLayout) getLayoutInflater().inflate(R.layout.disambiguation_row, (ViewGroup) this.b, false);
        ((TextView) linearLayout.findViewById(R.id.aap_device_disambiguation_dialog_row_device_name)).setText(awoVar.d());
        if (ProjectionTransportType.WIRELESS.equals(d(awoVar))) {
            ((TextView) linearLayout.findViewById(R.id.aap_device_disambiguation_dialog_row_wireless)).setText(getString(R.string.wireless_available));
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: bfy
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity = ProjectionDeviceDisambiguationActivity.this;
                ProjectionDevice awoVar2 = awoVar;
                projectionDeviceDisambiguationActivity.finish();
                projectionDeviceDisambiguationActivity.startActivity(projectionDeviceDisambiguationActivity.a(awoVar2));
            }
        });
        this.b.addView(linearLayout);
        this.c.put(awoVar, linearLayout);
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.l = getIntent();
        ProjectionSession bblVar = this.d.h;
        ImmutableList i = this.d.i();
        if (bblVar != null && (!this.l.getCategories().contains("android.intent.category.LAUNCHER") || i.size() == 1)) {
            finish();
            startActivity(a(null));
            return;
        }
        if (bblVar != null) {
            finish();
            startActivity(a(null));
            return;
        }
        if (i.isEmpty()) {
            if (CarCompat.onDisambiguationEmpty(this)) {
                return;
            }
            finish();
            Toast.makeText(this, getString(true != this.e.e() ? R.string.no_connected_devices_wired_only : R.string.no_connected_devices_both), 1).show();
            return;
        }
        if (i.size() == 1) {
            finish();
            startActivity(a((ProjectionDevice) i.get(0)));
        } else {
            setContentView(R.layout.disambiguation_screen);
            this.b = (LinearLayout) findViewById(R.id.aap_device_disambiguation_dialog);
        }
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.d.r(this.m);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.b.removeAllViews();
        ImmutableList i = this.d.i();
        int size = i.size();
        for (int i2 = 0; i2 < size; i2++) {
            b((ProjectionDevice) i.get(i2));
        }
        this.d.n(this.m);
    }
}

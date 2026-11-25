package com.achour.tweaks;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

/* loaded from: classes3.dex */
public final class Bubble {
    private static final int ACCENT = -13664019;
    private static final int BG = -435152860;
    private static final int CARD = -15327186;
    private static final int SUB = -6310968;
    private static final int TXT = -1;
    private static TextView advRow;
    private static TextView appRow;
    private static WindowManager.LayoutParams bubbleLp;
    private static TextView bubbleView;
    private static TextView credRow;
    private static Context ctx;
    private static TextView fpsRow;
    private static WindowManager.LayoutParams panelLp;
    private static LinearLayout panelView;
    private static EditText pskBox;
    private static TextView quietRow;
    private static TextView repairNowRow;
    private static TextView repairRow;
    private static TextView retryRow;
    private static EditText ssidBox;
    private static boolean started;
    private static TextView usbRow;
    private static TextView wifiRow;
    private static WindowManager wm;

    public static void start(Context context) {
        if (context == null) {
            return;
        }
        try {
            Context applicationContext = context.getApplicationContext();
            ctx = applicationContext;
            P.init(applicationContext);
            if (P.bubble()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.achour.tweaks.Bubble.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Bubble.show();
                    }
                });
            }
        } catch (Throwable th) {
        }
    }

    public static void stopped() {
        started = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int dp(int i) {
        return (int) (i * ctx.getResources().getDisplayMetrics().density);
    }

    private static GradientDrawable bg(int i, int i2, int i3, int i4) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(i2));
        if (i4 > 0) {
            gradientDrawable.setStroke(dp(i4), i3);
        }
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:3:0x0003, B:7:0x0008, B:9:0x000f, B:13:0x001b, B:15:0x004f, B:17:0x0089, B:20:0x0098, B:23:0x00d8), top: B:2:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0089 A[Catch: all -> 0x0120, TryCatch #0 {all -> 0x0120, blocks: (B:3:0x0003, B:7:0x0008, B:9:0x000f, B:13:0x001b, B:15:0x004f, B:17:0x0089, B:20:0x0098, B:23:0x00d8), top: B:2:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void show() {
        boolean z;
        int i;
        try {
            if (started) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(ctx)) {
                z = false;
                Log.i("AATweaks", "start: canDrawOverlays=" + z + " bubblePref=" + P.bubble() + " fps=" + P.fps());
                if (z) {
                    Toast.makeText(ctx, "امنح 'الظهور فوق التطبيقات' ثم أعد فتح التطبيق", 1).show();
                    Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + ctx.getPackageName()));
                    intent.addFlags(268435456);
                    ctx.startActivity(intent);
                    return;
                }
                WindowManager windowManager = (WindowManager) ctx.getSystemService("window");
                wm = windowManager;
                if (windowManager == null) {
                    return;
                }
                TextView textView = new TextView(ctx);
                bubbleView = textView;
                textView.setText("⚙");
                bubbleView.setTextColor(TXT);
                bubbleView.setTextSize(22.0f);
                bubbleView.setGravity(17);
                bubbleView.setBackground(bg(ACCENT, 28, 1728053247, 1));
                if (Build.VERSION.SDK_INT >= 26) {
                    i = 2038;
                } else {
                    i = 2002;
                }
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(dp(52), dp(52), i, 520, -3);
                bubbleLp = layoutParams;
                layoutParams.gravity = 51;
                bubbleLp.x = dp(16);
                bubbleLp.y = dp(120);
                bubbleView.setOnTouchListener(new View.OnTouchListener() { // from class: com.achour.tweaks.Bubble.2
                    float downX;
                    float downY;
                    boolean moved;
                    int startX;
                    int startY;

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        switch (motionEvent.getAction()) {
                            case 0:
                                this.downX = motionEvent.getRawX();
                                this.downY = motionEvent.getRawY();
                                this.startX = Bubble.bubbleLp.x;
                                this.startY = Bubble.bubbleLp.y;
                                this.moved = false;
                                return true;
                            case 1:
                                if (!this.moved) {
                                    Bubble.togglePanel();
                                }
                                return true;
                            case 2:
                                int rawX = (int) (motionEvent.getRawX() - this.downX);
                                int rawY = (int) (motionEvent.getRawY() - this.downY);
                                if (Math.abs(rawX) > Bubble.dp(6) || Math.abs(rawY) > Bubble.dp(6)) {
                                    this.moved = true;
                                }
                                Bubble.bubbleLp.x = this.startX + rawX;
                                Bubble.bubbleLp.y = this.startY + rawY;
                                try {
                                    Bubble.wm.updateViewLayout(Bubble.bubbleView, Bubble.bubbleLp);
                                } catch (Throwable th) {
                                }
                                return true;
                            default:
                                return false;
                        }
                    }
                });
                wm.addView(bubbleView, bubbleLp);
                started = true;
                Log.i("AATweaks", "bubble added to WindowManager");
                return;
            }
            z = true;
            Log.i("AATweaks", "start: canDrawOverlays=" + z + " bubblePref=" + P.bubble() + " fps=" + P.fps());
            if (z) {
            }
        } catch (Throwable th) {
            started = false;
            Log.e("AATweaks", "bubble failed: " + th);
        }
    }

    private static TextView card(String str) {
        TextView textView = new TextView(ctx);
        textView.setText(str);
        textView.setTextColor(TXT);
        textView.setTextSize(15.0f);
        textView.setPadding(dp(14), dp(12), dp(14), dp(12));
        textView.setBackground(bg(CARD, 10, -13877680, 1));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(TXT, -2);
        layoutParams.setMargins(0, dp(6), 0, 0);
        textView.setLayoutParams(layoutParams);
        textView.setClickable(true);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void refresh() {
        int fps = P.fps();
        fpsRow.setText("معدل الإطارات: " + (fps == 0 ? "تلقائي" : fps + " fps"));
        advRow.setText("إعلان قنوات 5GHz: " + (P.adv5() ? "مفعّل" : "معطّل"));
        usbRow.setText("اتصال USB: " + (P.usb() ? "مفعّل" : "معطّل"));
        wifiRow.setText("الاتصال اللاسلكي: " + (P.wifi() ? "مفعّل" : "معطّل"));
        TextView textView = appRow;
        if (textView != null) {
            textView.setText("حالة التطبيق: " + (P.enabled() ? "يعمل" : "متوقف"));
        }
        TextView textView2 = repairRow;
        if (textView2 != null) {
            textView2.setText("إصلاح الاقتران تلقائياً: " + (P.autoRepair() ? "مفعّل" : "معطّل"));
        }
        long suppressedLeftMs = P.suppressedLeftMs();
        TextView textView3 = retryRow;
        if (textView3 != null) {
            textView3.setText("إعادة الاتصال التلقائي: " + (P.autoRetry() ? "مفعّل" : "معطّل") + (suppressedLeftMs > 0 ? "  (موقوفة " + (suppressedLeftMs / 1000) + "ث)" : ""));
        }
        String ssid = P.ssid();
        if (ssid == null || ssid.length() < 4) {
            ssid = "AndroidAuto_CAR9";
        }
        String psk = P.psk();
        if (psk == null || psk.length() < 8) {
            psk = "AAWireless2026";
        }
        credRow.setText("اسم الشبكة: " + ssid);
        EditText editText = ssidBox;
        if (editText != null) {
            editText.setText(ssid);
            ssidBox.setHint(ssid);
        }
        EditText editText2 = pskBox;
        if (editText2 != null) {
            editText2.setText(psk);
            pskBox.setHint(psk);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void togglePanel() {
        int i;
        try {
            LinearLayout linearLayout = panelView;
            if (linearLayout != null) {
                try {
                    wm.removeView(linearLayout);
                } catch (Throwable th) {
                }
                panelView = null;
                return;
            }
            LinearLayout linearLayout2 = new LinearLayout(ctx);
            linearLayout2.setOrientation(1);
            linearLayout2.setPadding(dp(14), dp(14), dp(14), dp(14));
            linearLayout2.setBackground(bg(BG, 16, -12944427, 2));
            TextView textView = new TextView(ctx);
            textView.setText("إعدادات AutoLinker — by Achour Brahim");
            textView.setTextColor(SUB);
            textView.setTextSize(13.0f);
            linearLayout2.addView(textView);
            TextView card = card("");
            fpsRow = card;
            card.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    int fps = P.fps();
                    P.setFps(fps != 0 ? fps == 30 ? 60 : 0 : 30);
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(fpsRow);
            TextView card2 = card("");
            advRow = card2;
            card2.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.setAdv5(!P.adv5());
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(advRow);
            TextView card3 = card("");
            usbRow = card3;
            card3.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.setUsb(!P.usb());
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(usbRow);
            TextView card4 = card("");
            wifiRow = card4;
            card4.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.setWifi(!P.wifi());
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(wifiRow);
            TextView card5 = card("");
            appRow = card5;
            card5.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    boolean z = !P.enabled();
                    P.setEnabled(z);
                    Toast.makeText(Bubble.ctx, z ? "التطبيق يعمل" : "التطبيق متوقف (لا اتصال تلقائي)", 0).show();
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(appRow);
            TextView card6 = card("");
            retryRow = card6;
            card6.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.setAutoRetry(!P.autoRetry());
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(retryRow);
            TextView card7 = card("");
            repairRow = card7;
            card7.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.setAutoRepair(!P.autoRepair());
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(repairRow);
            TextView card8 = card("إعادة اقتران البلوتوث الآن (إصلاح اللاسلكي)");
            repairNowRow = card8;
            card8.setGravity(17);
            repairNowRow.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toast.makeText(Bubble.ctx, "جارٍ إزالة الاقتران ثم إعادته…", 0).show();
                    Bt.repair(Bubble.ctx, false);
                }
            });
            linearLayout2.addView(repairNowRow);
            TextView card9 = card("إيقاف الإزعاج 5 دقائق (والخروج للرئيسية)");
            quietRow = card9;
            card9.setGravity(17);
            quietRow.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.quietFor(300000L);
                    Toast.makeText(Bubble.ctx, "أُوقف إعادة الاتصال 5 دقائق", 0).show();
                    try {
                        Intent intent = new Intent("android.intent.action.MAIN");
                        intent.addCategory("android.intent.category.HOME");
                        intent.addFlags(268435456);
                        Bubble.ctx.startActivity(intent);
                    } catch (Throwable th2) {
                    }
                    Bubble.refresh();
                }
            });
            linearLayout2.addView(quietRow);
            TextView card10 = card("");
            credRow = card10;
            linearLayout2.addView(card10);
            EditText editText = new EditText(ctx);
            ssidBox = editText;
            editText.setHint("SSID");
            ssidBox.setTextColor(TXT);
            ssidBox.setHintTextColor(SUB);
            ssidBox.setTextSize(14.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(TXT, -2);
            layoutParams.setMargins(0, dp(8), 0, 0);
            ssidBox.setLayoutParams(layoutParams);
            linearLayout2.addView(ssidBox);
            EditText editText2 = new EditText(ctx);
            pskBox = editText2;
            editText2.setHint("كلمة السر (8 أحرف على الأقل)");
            pskBox.setTextColor(TXT);
            pskBox.setHintTextColor(SUB);
            pskBox.setTextSize(14.0f);
            pskBox.setInputType(145);
            pskBox.setLayoutParams(layoutParams);
            linearLayout2.addView(pskBox);
            LinearLayout linearLayout3 = new LinearLayout(ctx);
            linearLayout3.setOrientation(0);
            linearLayout3.setLayoutParams(layoutParams);
            TextView card11 = card("حفظ");
            card11.setGravity(17);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams2.setMargins(0, dp(8), dp(4), 0);
            card11.setLayoutParams(layoutParams2);
            card11.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    P.setCreds(Bubble.ssidBox.getText().toString().trim(), Bubble.pskBox.getText().toString().trim());
                    Toast.makeText(Bubble.ctx, "تم الحفظ — يُطبَّق عند إعادة التشغيل", 0).show();
                    Bubble.refresh();
                }
            });
            linearLayout3.addView(card11);
            TextView card12 = card("إغلاق");
            card12.setGravity(17);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams3.setMargins(dp(4), dp(8), 0, 0);
            card12.setLayoutParams(layoutParams3);
            card12.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    try {
                        Bubble.wm.removeView(Bubble.panelView);
                    } catch (Throwable th2) {
                    }
                    LinearLayout unused = Bubble.panelView = null;
                }
            });
            linearLayout3.addView(card12);
            linearLayout2.addView(linearLayout3);
            TextView card13 = card("إعادة تشغيل التطبيق (لتطبيق الإعدادات)");
            card13.setGravity(17);
            card13.setOnClickListener(new View.OnClickListener() { // from class: com.achour.tweaks.Bubble.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toast.makeText(Bubble.ctx, "جارٍ إعادة التشغيل…", 0).show();
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.achour.tweaks.Bubble.14.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Process.killProcess(Process.myPid());
                        }
                    }, 600L);
                }
            });
            linearLayout2.addView(card13);
            ScrollView scrollView = new ScrollView(ctx);
            scrollView.addView(linearLayout2);
            LinearLayout linearLayout4 = new LinearLayout(ctx);
            panelView = linearLayout4;
            linearLayout4.addView(scrollView);
            if (Build.VERSION.SDK_INT >= 26) {
                i = 2038;
            } else {
                i = 2002;
            }
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(dp(300), dp(560), i, 32, -3);
            panelLp = layoutParams4;
            layoutParams4.gravity = 51;
            panelLp.x = dp(12);
            panelLp.y = dp(60);
            refresh();
            wm.addView(panelView, panelLp);
        } catch (Throwable th2) {
            panelView = null;
        }
    }
}

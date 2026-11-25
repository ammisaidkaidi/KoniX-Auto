.class public final Lcom/achour/tweaks/V6;
.super Ljava/lang/Object;
.source "V6.java"


# static fields
.field private static final ACCENTS:[I

.field private static final ACCENT_NAMES:[Ljava/lang/String;

.field private static final BUBBLE_SIZES:[I

.field private static final COL_DEFAULT:I = -0xd07f13

.field private static final COL_FAIL:I = -0x39d7d8

.field private static final COL_READY:I = -0x657db

.field private static final COL_USB:I = -0xd182ce

.field private static final COL_WIFI:I = -0xea9a40

.field private static final DEFER_ACL:I = 0x2

.field private static final DEFER_BT:I = 0x1

.field private static final DEFER_NONE:I = 0x0

.field private static final DEFER_TIMEOUT:Ljava/lang/Runnable;

.field private static final FONT_SCALES:[I

.field private static final STALL_TICK:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "AATweaks"

.field private static biasStash:Landroid/bluetooth/BluetoothDevice;

.field private static volatile curState:I

.field private static volatile curTransport:I

.field private static deferAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static deferCtx:Landroid/content/Context;

.field private static deferDelay:J

.field private static deferDevice:Landroid/bluetooth/BluetoothDevice;

.field private static deferReceiver:Landroid/content/BroadcastReceiver;

.field private static deferType:I

.field private static delArmMs:J

.field private static delArmed:Ljava/lang/String;

.field private static delIdx:I

.field private static lastBytes:J

.field private static lastProgressMs:J

.field private static mainH:Landroid/os/Handler;

.field static prevState:I

.field private static volatile processStartElapsed:J

.field private static sessionBaseBytes:J

.field private static stallReported:Z

.field private static stallRunning:Z

.field private static volatile started:Z

.field private static tones:Landroid/media/ToneGenerator;

.field private static trafficSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/achour/tweaks/V6;->trafficSupported:Z

    .line 56
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/achour/tweaks/V6;->sessionBaseBytes:J

    .line 57
    sput-wide v0, Lcom/achour/tweaks/V6;->lastBytes:J

    .line 61
    new-instance v0, Lcom/achour/tweaks/V6$1;

    invoke-direct {v0}, Lcom/achour/tweaks/V6$1;-><init>()V

    sput-object v0, Lcom/achour/tweaks/V6;->STALL_TICK:Ljava/lang/Runnable;

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/achour/tweaks/V6;->deferType:I

    .line 79
    new-instance v1, Lcom/achour/tweaks/V6$2;

    invoke-direct {v1}, Lcom/achour/tweaks/V6$2;-><init>()V

    sput-object v1, Lcom/achour/tweaks/V6;->DEFER_TIMEOUT:Ljava/lang/Runnable;

    .line 90
    const/4 v1, -0x1

    sput v1, Lcom/achour/tweaks/V6;->delIdx:I

    .line 1083
    const v1, -0x47400

    const v2, -0x71db56

    const v3, -0xde690d

    const v4, -0xbc5fb9

    filled-new-array {v0, v3, v4, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/achour/tweaks/V6;->ACCENTS:[I

    .line 1084
    const-string v0, "\u0628\u0631\u062a\u0642\u0627\u0644\u064a"

    const-string v1, "\u0628\u0646\u0641\u0633\u062c\u064a"

    const-string v2, "\u0627\u0641\u062a\u0631\u0627\u0636\u064a"

    const-string v3, "\u0623\u0632\u0631\u0642"

    const-string v4, "\u0623\u062e\u0636\u0631"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/achour/tweaks/V6;->ACCENT_NAMES:[Ljava/lang/String;

    .line 1085
    const/16 v0, 0x44

    const/16 v1, 0x4c

    const/16 v2, 0x34

    const/16 v3, 0x3c

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/achour/tweaks/V6;->BUBBLE_SIZES:[I

    .line 1086
    const/16 v0, 0x6e

    const/16 v1, 0x78

    const/16 v2, 0x5a

    const/16 v3, 0x64

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/achour/tweaks/V6;->FONT_SCALES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accentColor()I
    .locals 2

    .line 1094
    sget-object v0, Lcom/achour/tweaks/V6;->ACCENTS:[I

    invoke-static {}, Lcom/achour/tweaks/V6;->accentIdx()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method static accentIdx()I
    .locals 3

    .line 1089
    const-string v0, "accent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gi(Ljava/lang/String;I)I

    move-result v0

    .line 1090
    if-ltz v0, :cond_0

    sget-object v2, Lcom/achour/tweaks/V6;->ACCENTS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static accentLabel()Ljava/lang/String;
    .locals 3

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0644\u0648\u0646 \u0627\u0644\u0644\u0648\u062d\u0629: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/achour/tweaks/V6;->ACCENT_NAMES:[Ljava/lang/String;

    invoke-static {}, Lcom/achour/tweaks/V6;->accentIdx()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aclAttempt(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    .locals 8

    .line 603
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->coldWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 604
    const-string v0, "AATweaks"

    const-string v1, "v6 cold-start: deferring ACL nudge until BT ON"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lcom/achour/tweaks/V6;->defer(ILandroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    return-void

    .line 609
    :cond_0
    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    .line 611
    :goto_0
    :try_start_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v6Nudge(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 613
    goto :goto_1

    .line 612
    :catchall_1
    move-exception p0

    .line 614
    :goto_1
    return-void
.end method

.method static applyBubbleState(II)V
    .locals 2

    .line 342
    :try_start_0
    const-string v0, "autohide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    if-eqz p0, :cond_1

    if-ne p0, v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/achour/tweaks/P;->enabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v6ShowBubble()V

    goto :goto_1

    .line 344
    :cond_2
    :goto_0
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v6HideBubble()V

    .line 345
    return-void

    .line 351
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/achour/tweaks/V6;->colorFor(II)I

    move-result p0

    invoke-static {p0}, Lcom/achour/tweaks/Bubble;->v6Recolor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    goto :goto_2

    .line 352
    :catchall_0
    move-exception p0

    .line 354
    :goto_2
    return-void
.end method

.method static applySnapshot(Ljava/lang/String;)I
    .locals 10

    .line 889
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 890
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-nez p0, :cond_0

    goto/16 :goto_5

    .line 893
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 894
    nop

    .line 895
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 896
    array-length v3, p0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_a

    aget-object v6, p0, v4

    .line 898
    if-eqz v6, :cond_9

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_9

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_1

    goto/16 :goto_2

    .line 901
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 902
    const/16 v8, 0x3d

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 903
    if-gez v8, :cond_2

    .line 904
    goto :goto_3

    .line 906
    :cond_2
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 907
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-static {v9}, Lcom/achour/tweaks/V6;->presetExcluded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 909
    goto :goto_3

    .line 911
    :cond_3
    const/16 v8, 0x53

    if-ne v7, v8, :cond_4

    .line 912
    const-string v7, "\\n"

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 913
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 914
    :cond_4
    const/16 v8, 0x42

    if-ne v7, v8, :cond_5

    .line 915
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 916
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 917
    :cond_5
    const/16 v8, 0x49

    if-ne v7, v8, :cond_6

    .line 918
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 919
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 920
    :cond_6
    const/16 v8, 0x4c

    if-ne v7, v8, :cond_7

    .line 921
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {v0, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 922
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 923
    :cond_7
    const/16 v8, 0x46

    if-ne v7, v8, :cond_8

    .line 924
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    add-int/lit8 v5, v5, 0x1

    .line 928
    :cond_8
    :goto_1
    goto :goto_3

    .line 927
    :catchall_0
    move-exception v6

    goto :goto_3

    .line 899
    :cond_9
    :goto_2
    nop

    .line 896
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 931
    :cond_a
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 933
    goto :goto_4

    .line 932
    :catchall_1
    move-exception p0

    .line 934
    :goto_4
    return v5

    .line 891
    :cond_b
    :goto_5
    return v1
.end method

.method public static autohideLabel()Ljava/lang/String;
    .locals 3

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0625\u062e\u0641\u0627\u0621 \u0627\u0644\u0632\u0631 \u0623\u062b\u0646\u0627\u0621 \u0627\u0644\u0625\u0633\u0642\u0627\u0637: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "autohide"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/achour/tweaks/V6;->onOff(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static autostallLabel()Ljava/lang/String;
    .locals 3

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0625\u0639\u0627\u062f\u0629 \u0636\u0628\u0637 \u062a\u0644\u0642\u0627\u0626\u064a\u0629 \u0639\u0646\u062f \u0627\u0644\u062a\u062c\u0645\u0651\u062f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "autostall"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/achour/tweaks/V6;->onOff(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static biasFallback()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 737
    sget-object v0, Lcom/achour/tweaks/V6;->biasStash:Landroid/bluetooth/BluetoothDevice;

    .line 738
    const/4 v1, 0x0

    sput-object v1, Lcom/achour/tweaks/V6;->biasStash:Landroid/bluetooth/BluetoothDevice;

    .line 739
    return-object v0
.end method

.method public static biasReset()V
    .locals 1

    .line 704
    const/4 v0, 0x0

    sput-object v0, Lcom/achour/tweaks/V6;->biasStash:Landroid/bluetooth/BluetoothDevice;

    .line 705
    return-void
.end method

.method public static biasSkip(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 713
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 714
    return v0

    .line 716
    :cond_0
    :try_start_0
    const-string v1, "preferred_phone"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 721
    if-nez v2, :cond_2

    .line 722
    return v0

    .line 724
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    return v0

    .line 727
    :cond_3
    sget-object v1, Lcom/achour/tweaks/V6;->biasStash:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_4

    .line 728
    sput-object p0, Lcom/achour/tweaks/V6;->biasStash:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 718
    :cond_5
    :goto_0
    return v0

    .line 731
    :catchall_0
    move-exception p0

    .line 732
    return v0
.end method

.method public static boxTextSize()F
    .locals 2

    .line 1116
    const/high16 v0, 0x41980000    # 19.0f

    invoke-static {}, Lcom/achour/tweaks/V6;->fontScaleF()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method public static btAttemptGated(Landroid/content/Context;)Z
    .locals 10

    .line 582
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->coldWindow()Z

    move-result v2

    if-nez v2, :cond_0

    .line 583
    invoke-static {p0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z

    move-result p0

    return p0

    .line 585
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 586
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 589
    :cond_1
    const-string v2, "AATweaks"

    const-string v3, "v6 cold-start: BT not ON yet, deferring BT attempt"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lcom/achour/tweaks/V6;->defer(ILandroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V

    .line 591
    return v0

    .line 587
    :cond_2
    :goto_0
    invoke-static {p0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 592
    :catchall_0
    move-exception v2

    .line 594
    :try_start_1
    invoke-static {p0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    .line 595
    :catchall_1
    move-exception p0

    .line 596
    return v0
.end method

.method public static bubbleSizeDp()I
    .locals 6

    .line 1124
    const-string v0, "bubble_size"

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gi(Ljava/lang/String;I)I

    move-result v0

    .line 1125
    sget-object v2, Lcom/achour/tweaks/V6;->BUBBLE_SIZES:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 1126
    if-ne v5, v0, :cond_0

    .line 1127
    return v0

    .line 1125
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    return v1
.end method

.method public static bubbleSizeLabel()Ljava/lang/String;
    .locals 2

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062d\u062c\u0645 \u0627\u0644\u0632\u0631 \u0627\u0644\u0639\u0627\u0626\u0645: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/achour/tweaks/V6;->bubbleSizeDp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildPhoneRows(Landroid/widget/LinearLayout;)V
    .locals 6

    .line 744
    if-nez p0, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    nop

    .line 749
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    goto :goto_0

    .line 750
    :catchall_0
    move-exception v1

    move-object v1, v0

    .line 752
    :goto_0
    if-nez v1, :cond_1

    .line 753
    :try_start_1
    const-string v0, "\u0627\u0644\u0647\u0648\u0627\u062a\u0641: \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b \u063a\u064a\u0631 \u0645\u062a\u0627\u062d"

    invoke-static {v0}, Lcom/achour/tweaks/Bubble;->v6Card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 754
    return-void

    .line 792
    :catchall_1
    move-exception p0

    goto/16 :goto_4

    .line 756
    :cond_1
    nop

    .line 758
    :try_start_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 760
    goto :goto_1

    .line 759
    :catchall_2
    move-exception v1

    .line 761
    :goto_1
    if-eqz v0, :cond_8

    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 765
    :cond_2
    const-string v1, "preferred_phone"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 767
    new-instance v0, Lcom/achour/tweaks/V6$5;

    invoke-direct {v0}, Lcom/achour/tweaks/V6$5;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 775
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 776
    if-nez v2, :cond_3

    .line 777
    goto :goto_2

    .line 779
    :cond_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 780
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 781
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 782
    :cond_4
    move-object v2, v3

    .line 784
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0647\u0627\u062a\u0641: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 785
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2605"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 788
    :cond_6
    invoke-static {v4}, Lcom/achour/tweaks/Bubble;->v6Card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    .line 789
    new-instance v5, Lcom/achour/tweaks/V6PhoneClick;

    invoke-direct {v5, v3, v2}, Lcom/achour/tweaks/V6PhoneClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 791
    goto :goto_2

    .line 793
    :cond_7
    goto :goto_4

    .line 762
    :cond_8
    :goto_3
    const-string v0, "\u0644\u0627 \u0647\u0648\u0627\u062a\u0641 \u0645\u0642\u062a\u0631\u0646\u0629"

    invoke-static {v0}, Lcom/achour/tweaks/Bubble;->v6Card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 763
    return-void

    .line 794
    :goto_4
    return-void
.end method

.method public static buildPresetRows(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 964
    if-nez p0, :cond_0

    .line 965
    return-void

    .line 967
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->presetNames()Ljava/util/List;

    move-result-object v0

    .line 968
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0648\u0636\u0639: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/achour/tweaks/Bubble;->v6Card(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 970
    new-instance v3, Lcom/achour/tweaks/V6Click;

    add-int/lit8 v4, v1, 0x64

    invoke-direct {v3, v4}, Lcom/achour/tweaks/V6Click;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :cond_1
    goto :goto_1

    .line 973
    :catchall_0
    move-exception p0

    .line 975
    :goto_1
    return-void
.end method

.method public static cardBorder()I
    .locals 1

    .line 1098
    invoke-static {}, Lcom/achour/tweaks/V6;->accentColor()I

    move-result v0

    .line 1099
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, -0xd3c1b0

    :goto_0
    return v0
.end method

.method public static cardTextSize()F
    .locals 2

    .line 1112
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {}, Lcom/achour/tweaks/V6;->fontScaleF()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

.method static coldWindow()Z
    .locals 4

    .line 243
    sget-boolean v0, Lcom/achour/tweaks/V6;->started:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/achour/tweaks/V6;->processStartElapsed:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static colorFor(II)I
    .locals 3

    .line 357
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    if-ne p0, v0, :cond_1

    .line 370
    const p0, -0x657db

    return p0

    .line 372
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V6;->newestLogFailureFresh()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 373
    const p0, -0x39d7d8

    return p0

    .line 375
    :cond_2
    const p0, -0xd07f13

    return p0

    .line 358
    :cond_3
    :goto_0
    nop

    .line 359
    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_5

    .line 360
    const-string p0, "last_transport"

    const-string v2, ""

    invoke-static {p0, v2}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 361
    const-string v2, "WIFI"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 362
    move p1, v1

    goto :goto_1

    .line 363
    :cond_4
    const-string v2, "USB"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 364
    move p1, v0

    .line 367
    :cond_5
    :goto_1
    if-ne p1, v1, :cond_6

    const p0, -0xea9a40

    goto :goto_2

    :cond_6
    const p0, -0xd182ce

    :goto_2
    return p0
.end method

.method static ctx()Landroid/content/Context;
    .locals 1

    .line 106
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V5;->ctx()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method static defer(ILandroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    .locals 2

    .line 617
    const-class v0, Lcom/achour/tweaks/V6;

    monitor-enter v0

    .line 618
    :try_start_0
    sget v1, Lcom/achour/tweaks/V6;->deferType:I

    if-eqz v1, :cond_0

    .line 619
    monitor-exit v0

    return-void

    .line 621
    :cond_0
    sput p0, Lcom/achour/tweaks/V6;->deferType:I

    .line 622
    sput-object p1, Lcom/achour/tweaks/V6;->deferCtx:Landroid/content/Context;

    .line 623
    sput-object p2, Lcom/achour/tweaks/V6;->deferAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 624
    sput-object p3, Lcom/achour/tweaks/V6;->deferDevice:Landroid/bluetooth/BluetoothDevice;

    .line 625
    sput-wide p4, Lcom/achour/tweaks/V6;->deferDelay:J

    .line 626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 628
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V6;->ctx()Landroid/content/Context;

    move-result-object p0

    .line 629
    :goto_0
    if-nez p0, :cond_2

    .line 630
    invoke-static {}, Lcom/achour/tweaks/V6;->fireDefer()V

    .line 631
    return-void

    .line 633
    :cond_2
    new-instance p1, Lcom/achour/tweaks/V6$4;

    invoke-direct {p1}, Lcom/achour/tweaks/V6$4;-><init>()V

    sput-object p1, Lcom/achour/tweaks/V6;->deferReceiver:Landroid/content/BroadcastReceiver;

    .line 645
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    invoke-static {}, Lcom/achour/tweaks/V6;->mainHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/achour/tweaks/V6;->DEFER_TIMEOUT:Ljava/lang/Runnable;

    const-wide/16 p2, 0x2ee0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    goto :goto_1

    .line 647
    :catchall_0
    move-exception p0

    .line 648
    invoke-static {}, Lcom/achour/tweaks/V6;->fireDefer()V

    .line 650
    :goto_1
    return-void

    .line 626
    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static deleteLabel()Ljava/lang/String;
    .locals 4

    .line 978
    invoke-static {}, Lcom/achour/tweaks/V6;->presetNames()Ljava/util/List;

    move-result-object v0

    .line 979
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    const-string v0, "\u062d\u0630\u0641 \u0648\u0636\u0639 \u0645\u062d\u0641\u0648\u0638: \u0644\u0627 \u0623\u0648\u0636\u0627\u0639"

    return-object v0

    .line 982
    :cond_0
    sget-object v1, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/achour/tweaks/V6;->delArmMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062d\u0630\u0641 \u0648\u0636\u0639: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 \u0627\u0636\u063a\u0637 \u0645\u062c\u062f\u062f\u0627\u064b \u0644\u0644\u062a\u0623\u0643\u064a\u062f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 986
    :cond_1
    const-string v0, "\u062d\u0630\u0641 \u0648\u0636\u0639 \u0645\u062d\u0641\u0648\u0638"

    return-object v0
.end method

.method static fireDefer()V
    .locals 9

    .line 658
    const-class v0, Lcom/achour/tweaks/V6;

    monitor-enter v0

    .line 659
    :try_start_0
    sget v1, Lcom/achour/tweaks/V6;->deferType:I

    if-nez v1, :cond_0

    .line 660
    monitor-exit v0

    return-void

    .line 662
    :cond_0
    nop

    .line 663
    sget-object v2, Lcom/achour/tweaks/V6;->deferCtx:Landroid/content/Context;

    .line 664
    sget-object v3, Lcom/achour/tweaks/V6;->deferAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 665
    sget-object v4, Lcom/achour/tweaks/V6;->deferDevice:Landroid/bluetooth/BluetoothDevice;

    .line 666
    sget-wide v5, Lcom/achour/tweaks/V6;->deferDelay:J

    .line 667
    const/4 v7, 0x0

    sput v7, Lcom/achour/tweaks/V6;->deferType:I

    .line 668
    const/4 v7, 0x0

    sput-object v7, Lcom/achour/tweaks/V6;->deferCtx:Landroid/content/Context;

    .line 669
    sput-object v7, Lcom/achour/tweaks/V6;->deferAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 670
    sput-object v7, Lcom/achour/tweaks/V6;->deferDevice:Landroid/bluetooth/BluetoothDevice;

    .line 671
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 673
    :try_start_1
    sget-object v0, Lcom/achour/tweaks/V6;->mainH:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 674
    sget-object v8, Lcom/achour/tweaks/V6;->DEFER_TIMEOUT:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :cond_1
    goto :goto_0

    .line 676
    :catchall_0
    move-exception v0

    .line 679
    :goto_0
    :try_start_2
    sget-object v0, Lcom/achour/tweaks/V6;->deferReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 680
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/achour/tweaks/V6;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 681
    :goto_1
    if-eqz v0, :cond_3

    .line 682
    sget-object v8, Lcom/achour/tweaks/V6;->deferReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 684
    :cond_3
    sput-object v7, Lcom/achour/tweaks/V6;->deferReceiver:Landroid/content/BroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 687
    :cond_4
    goto :goto_2

    .line 686
    :catchall_1
    move-exception v0

    .line 688
    :goto_2
    const-string v0, "AATweaks"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "v6 cold-start: firing deferred attempt type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    .line 691
    if-eqz v2, :cond_6

    .line 692
    :try_start_3
    invoke-static {v2, v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z

    goto :goto_3

    .line 694
    :cond_5
    const/4 v0, 0x2

    if-ne v1, v0, :cond_6

    .line 695
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v6Nudge(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 697
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 698
    :cond_6
    :goto_3
    nop

    .line 699
    :goto_4
    return-void

    .line 671
    :catchall_3
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1
.end method

.method static fontScaleF()F
    .locals 2

    .line 1108
    const-string v0, "font_scale"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gi(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static fontScaleLabel()Ljava/lang/String;
    .locals 3

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062d\u062c\u0645 \u062e\u0637 \u0627\u0644\u0644\u0648\u062d\u0629: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "font_scale"

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gi(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static gb(Ljava/lang/String;Z)Z
    .locals 1

    .line 113
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    return p1

    .line 118
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    return p1
.end method

.method static gi(Ljava/lang/String;I)I
    .locals 1

    .line 136
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    .line 138
    return p1

    .line 141
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    return p1
.end method

.method static gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 159
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    return-object p1

    .line 164
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    if-eqz p0, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    return-object p1
.end method

.method public static headerExtra()Ljava/lang/String;
    .locals 9

    .line 562
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    sget v1, Lcom/achour/tweaks/V6;->curState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget v1, Lcom/achour/tweaks/V6;->curState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "stall_flag"

    invoke-static {v1, v3}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    const-string v1, " \u26a0 \u062a\u062c\u0645\u0651\u062f\u061f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V6;->sessionBytes()J

    move-result-wide v1

    .line 567
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_2

    .line 568
    const-string v4, " \u00b7 \u0628\u064a\u0627\u0646\u0627\u062a: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    long-to-double v1, v1

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 573
    :catchall_0
    move-exception v0

    .line 574
    const-string v0, ""

    return-object v0
.end method

.method static mainHandler()Landroid/os/Handler;
    .locals 2

    .line 183
    sget-object v0, Lcom/achour/tweaks/V6;->mainH:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/achour/tweaks/V6;->mainH:Landroid/os/Handler;

    .line 186
    :cond_0
    sget-object v0, Lcom/achour/tweaks/V6;->mainH:Landroid/os/Handler;

    return-object v0
.end method

.method static newestLogFailureFresh()Z
    .locals 7

    .line 380
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connlog"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 385
    if-ltz v2, :cond_1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_1
    const-string v2, "\u0627\u0646\u062a\u0647\u0649/\u0641\u0634\u0644"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 387
    return v0

    .line 389
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_3

    .line 390
    return v0

    .line 392
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 393
    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 394
    const/4 v5, 0x6

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 395
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 396
    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0xe10

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v5, v3

    .line 397
    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    .line 398
    sub-int/2addr v5, v2

    .line 399
    if-gez v5, :cond_4

    .line 400
    const v1, 0x15180

    add-int/2addr v5, v1

    .line 402
    :cond_4
    const/16 v1, 0x12c

    if-ge v5, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 382
    :cond_6
    :goto_0
    return v0

    .line 403
    :catchall_0
    move-exception v1

    .line 404
    return v0
.end method

.method public static onAction(I)V
    .locals 8

    .line 1161
    const-string v0, "font_scale"

    const-string v1, "autostall"

    const-string v2, "sounds"

    const-string v3, "autohide"

    const-string v4, "\u064a\u064f\u0637\u0628\u064e\u0651\u0642 \u0639\u0646\u062f \u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0641\u062a\u062d"

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p0, :pswitch_data_0

    .line 1232
    if-lt p0, v5, :cond_9

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_9

    .line 1233
    sub-int/2addr p0, v5

    :try_start_0
    invoke-static {p0}, Lcom/achour/tweaks/V6;->onApplyPreset(I)V

    goto/16 :goto_3

    .line 1220
    :pswitch_0
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1221
    if-eqz p0, :cond_0

    .line 1223
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "preferred_phone"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "preferred_phone_name"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    goto :goto_0

    .line 1224
    :catchall_0
    move-exception p0

    .line 1227
    :cond_0
    :goto_0
    :try_start_2
    const-string p0, "\u0627\u0644\u0647\u0627\u062a\u0641 \u0627\u0644\u0645\u0641\u0636\u0644: \u062a\u0644\u0642\u0627\u0626\u064a"

    invoke-static {p0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1228
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1229
    goto/16 :goto_3

    .line 1217
    :pswitch_1
    invoke-static {}, Lcom/achour/tweaks/V6;->onDeleteStep()V

    .line 1218
    goto/16 :goto_3

    .line 1214
    :pswitch_2
    invoke-static {}, Lcom/achour/tweaks/V6;->onSavePreset()V

    .line 1215
    goto/16 :goto_3

    .line 1201
    :pswitch_3
    invoke-static {v0, v5}, Lcom/achour/tweaks/V6;->gi(Ljava/lang/String;I)I

    move-result p0

    .line 1202
    nop

    .line 1203
    move v1, v7

    :goto_1
    sget-object v2, Lcom/achour/tweaks/V6;->FONT_SCALES:[I

    array-length v3, v2

    if-ge v6, v3, :cond_2

    .line 1204
    aget v2, v2, v6

    if-ne v2, p0, :cond_1

    .line 1205
    move v1, v6

    .line 1203
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1208
    :cond_2
    add-int/2addr v1, v7

    array-length p0, v2

    rem-int/2addr v1, p0

    aget p0, v2, v1

    invoke-static {v0, p0}, Lcom/achour/tweaks/V6;->pi(Ljava/lang/String;I)V

    .line 1209
    invoke-static {v4}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1210
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1211
    goto/16 :goto_3

    .line 1188
    :pswitch_4
    invoke-static {}, Lcom/achour/tweaks/V6;->bubbleSizeDp()I

    move-result p0

    .line 1189
    nop

    .line 1190
    move v0, v6

    :goto_2
    sget-object v1, Lcom/achour/tweaks/V6;->BUBBLE_SIZES:[I

    array-length v2, v1

    if-ge v6, v2, :cond_4

    .line 1191
    aget v1, v1, v6

    if-ne v1, p0, :cond_3

    .line 1192
    move v0, v6

    .line 1190
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1195
    :cond_4
    const-string p0, "bubble_size"

    add-int/2addr v0, v7

    array-length v2, v1

    rem-int/2addr v0, v2

    aget v0, v1, v0

    invoke-static {p0, v0}, Lcom/achour/tweaks/V6;->pi(Ljava/lang/String;I)V

    .line 1196
    invoke-static {v4}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1198
    goto :goto_3

    .line 1183
    :pswitch_5
    const-string p0, "accent"

    invoke-static {}, Lcom/achour/tweaks/V6;->accentIdx()I

    move-result v0

    add-int/2addr v0, v7

    sget-object v1, Lcom/achour/tweaks/V6;->ACCENTS:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/achour/tweaks/V6;->pi(Ljava/lang/String;I)V

    .line 1184
    invoke-static {v4}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1185
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1186
    goto :goto_3

    .line 1237
    :catchall_1
    move-exception p0

    goto :goto_4

    .line 1179
    :pswitch_6
    invoke-static {v1, v6}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_5

    move v6, v7

    :cond_5
    invoke-static {v1, v6}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V

    .line 1180
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1181
    goto :goto_3

    .line 1170
    :pswitch_7
    invoke-static {v2, v7}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_6

    move v6, v7

    .line 1171
    :cond_6
    invoke-static {v2, v6}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V

    .line 1172
    if-eqz v6, :cond_7

    .line 1173
    invoke-static {v7}, Lcom/achour/tweaks/V6;->playTone(Z)V

    .line 1175
    :cond_7
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1176
    goto :goto_3

    .line 1163
    :pswitch_8
    invoke-static {v3, v7}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_8

    move v6, v7

    .line 1164
    :cond_8
    invoke-static {v3, v6}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V

    .line 1165
    sget p0, Lcom/achour/tweaks/V6;->curState:I

    sget v0, Lcom/achour/tweaks/V6;->curTransport:I

    invoke-static {p0, v0}, Lcom/achour/tweaks/V6;->applyBubbleState(II)V

    .line 1166
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1167
    nop

    .line 1238
    :cond_9
    :goto_3
    nop

    .line 1239
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static onApplyPreset(I)V
    .locals 3

    .line 1065
    invoke-static {}, Lcom/achour/tweaks/V6;->presetNames()Ljava/util/List;

    move-result-object v0

    .line 1066
    if-ltz p0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preset_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    if-nez v0, :cond_1

    .line 1072
    const-string p0, "\u0627\u0644\u0648\u0636\u0639 \u063a\u064a\u0631 \u0645\u0648\u062c\u0648\u062f"

    invoke-static {p0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1073
    return-void

    .line 1075
    :cond_1
    invoke-static {v0}, Lcom/achour/tweaks/V6;->applySnapshot(Ljava/lang/String;)I

    move-result v0

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v6 preset applied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AATweaks"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0637\u064f\u0628\u0651\u0642 \u0627\u0644\u0648\u0636\u0639: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v6RebuildPanel()V

    .line 1079
    return-void

    .line 1067
    :cond_2
    :goto_0
    return-void
.end method

.method public static onBubbleShown()V
    .locals 2

    .line 335
    :try_start_0
    sget v0, Lcom/achour/tweaks/V6;->curState:I

    sget v1, Lcom/achour/tweaks/V6;->curTransport:I

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->applyBubbleState(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    .line 338
    :goto_0
    return-void
.end method

.method static onDeleteStep()V
    .locals 7

    .line 990
    invoke-static {}, Lcom/achour/tweaks/V6;->presetNames()Ljava/util/List;

    move-result-object v0

    .line 991
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    const-string v0, "\u0644\u0627 \u0623\u0648\u0636\u0627\u0639 \u0645\u062d\u0641\u0648\u0638\u0629"

    invoke-static {v0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 993
    return-void

    .line 995
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 996
    sget-object v3, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-wide v3, Lcom/achour/tweaks/V6;->delArmMs:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 997
    sget-object v1, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    .line 998
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 999
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1000
    if-eqz v2, :cond_1

    .line 1002
    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preset_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    goto :goto_0

    .line 1003
    :catchall_0
    move-exception v2

    .line 1006
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/achour/tweaks/V6;->savePresetNames(Ljava/util/List;)V

    .line 1007
    const/4 v0, 0x0

    sput-object v0, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    .line 1008
    const/4 v0, -0x1

    sput v0, Lcom/achour/tweaks/V6;->delIdx:I

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062d\u064f\u0630\u0641 \u0627\u0644\u0648\u0636\u0639: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1010
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v6RebuildPanel()V

    .line 1011
    return-void

    .line 1013
    :cond_2
    sget-object v3, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 1014
    sput v4, Lcom/achour/tweaks/V6;->delIdx:I

    goto :goto_1

    .line 1016
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v3, v5

    sput v3, Lcom/achour/tweaks/V6;->delIdx:I

    .line 1018
    :goto_1
    sget v3, Lcom/achour/tweaks/V6;->delIdx:I

    if-ltz v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_5

    .line 1019
    :cond_4
    sput v4, Lcom/achour/tweaks/V6;->delIdx:I

    .line 1021
    :cond_5
    sget v3, Lcom/achour/tweaks/V6;->delIdx:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/achour/tweaks/V6;->delArmed:Ljava/lang/String;

    .line 1022
    sput-wide v1, Lcom/achour/tweaks/V6;->delArmMs:J

    .line 1023
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 1024
    return-void
.end method

.method static onEnterActive()V
    .locals 4

    .line 441
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->sampleBytes()J

    move-result-wide v0

    .line 442
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 443
    sput-boolean v3, Lcom/achour/tweaks/V6;->trafficSupported:Z

    .line 444
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/achour/tweaks/V6;->sessionBaseBytes:J

    goto :goto_0

    .line 446
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/achour/tweaks/V6;->trafficSupported:Z

    .line 447
    sput-wide v0, Lcom/achour/tweaks/V6;->sessionBaseBytes:J

    .line 448
    sput-wide v0, Lcom/achour/tweaks/V6;->lastBytes:J

    .line 450
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/achour/tweaks/V6;->lastProgressMs:J

    .line 451
    sput-boolean v3, Lcom/achour/tweaks/V6;->stallReported:Z

    .line 452
    invoke-static {}, Lcom/achour/tweaks/V6;->startStallLoop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    goto :goto_1

    .line 453
    :catchall_0
    move-exception v0

    .line 455
    :goto_1
    return-void
.end method

.method static onExitActive()V
    .locals 2

    .line 459
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->stopStallLoop()V

    .line 460
    const-string v0, "stall_flag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    .line 463
    :goto_0
    return-void
.end method

.method static onOff(Z)Ljava/lang/String;
    .locals 0

    .line 190
    if-eqz p0, :cond_0

    const-string p0, "\u0645\u0641\u0639\u0651\u0644"

    goto :goto_0

    :cond_0
    const-string p0, "\u0645\u0639\u0637\u0651\u0644"

    :goto_0
    return-object p0
.end method

.method public static onPhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 798
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 799
    if-nez v0, :cond_0

    .line 800
    return-void

    .line 802
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferred_phone"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferred_phone_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 803
    const-string v0, "AATweaks"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v6 preferred phone set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {}, Lcom/achour/tweaks/V6;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 805
    if-nez v0, :cond_1

    .line 806
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 807
    return-void

    .line 809
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lt_a_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 810
    if-nez p0, :cond_2

    .line 811
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lt_n_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 813
    :cond_2
    if-nez p0, :cond_3

    .line 814
    const-string p0, "last_transport"

    invoke-static {p0, v1}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 816
    :cond_3
    const-string v1, "USB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    .line 817
    const-string p0, "\u0648\u0635\u0651\u0644 \u0627\u0644\u0643\u0627\u0628\u0644"

    invoke-static {p0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 819
    :try_start_1
    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scanAndSwitchUsbPhones(Landroid/content/Context;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 820
    :catchall_0
    move-exception p0

    .line 821
    :goto_0
    goto :goto_1

    .line 823
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062c\u0627\u0631\u064d \u0645\u062d\u0627\u0648\u0644\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644 \u0628\u0640 "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 825
    :try_start_3
    invoke-static {v0, v1}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 827
    goto :goto_1

    .line 826
    :catchall_1
    move-exception p0

    .line 829
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 831
    goto :goto_2

    .line 830
    :catchall_2
    move-exception p0

    .line 832
    :goto_2
    return-void
.end method

.method public static onProcessStart(Landroid/content/Context;)V
    .locals 4

    .line 196
    const-string v0, "last_state"

    sget-boolean v1, Lcom/achour/tweaks/V6;->started:Z

    if-eqz v1, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/achour/tweaks/V6;->started:Z

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/achour/tweaks/V6;->processStartElapsed:J

    .line 202
    if-eqz p0, :cond_1

    .line 203
    :try_start_0
    invoke-static {p0}, Lcom/achour/tweaks/P;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 206
    :cond_1
    :goto_0
    nop

    .line 209
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 210
    if-eqz p0, :cond_4

    .line 211
    nop

    .line 213
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    goto :goto_2

    .line 214
    :catchall_1
    move-exception v2

    move v2, v1

    .line 216
    :goto_2
    sput v2, Lcom/achour/tweaks/V6;->prevState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_3

    .line 233
    :cond_2
    :try_start_3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 235
    goto :goto_7

    .line 234
    :catchall_2
    move-exception p0

    goto :goto_7

    .line 218
    :cond_3
    :goto_3
    :try_start_4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 220
    goto :goto_4

    .line 219
    :catchall_3
    move-exception p0

    .line 221
    :goto_4
    goto :goto_7

    :try_start_5
    const-string p0, "AATweaks"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v6 self-heal: previous process died in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> soft reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/achour/tweaks/V5;->softReset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 224
    :try_start_6
    const-string p0, "\u0645\u0639\u0627\u0641\u0627\u0629 \u0630\u0627\u062a\u064a\u0629 \u0628\u0639\u062f \u0627\u0646\u0647\u064a\u0627\u0631"

    invoke-static {p0}, Lcom/achour/tweaks/P;->setLastAction(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 226
    goto :goto_5

    .line 225
    :catchall_4
    move-exception p0

    .line 228
    :goto_5
    :try_start_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/achour/tweaks/V5;->timeNow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " \u0645\u0639\u0627\u0641\u0627\u0629 \u0630\u0627\u062a\u064a\u0629"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/achour/tweaks/V5;->appendRaw(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    .line 229
    :catchall_5
    move-exception p0

    .line 230
    :goto_6
    nop

    .line 239
    :cond_4
    :goto_7
    goto :goto_8

    .line 238
    :catchall_6
    move-exception p0

    .line 240
    :goto_8
    return-void
.end method

.method static onSavePreset()V
    .locals 5

    .line 1027
    nop

    .line 1029
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v6PresetNameText()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    goto :goto_0

    .line 1030
    :catchall_0
    move-exception v0

    const-string v0, ""

    .line 1032
    :goto_0
    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1039
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_2

    .line 1040
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1042
    :cond_2
    invoke-static {}, Lcom/achour/tweaks/V6;->presetNames()Ljava/util/List;

    move-result-object v1

    .line 1043
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1044
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_3

    .line 1045
    const-string v0, "\u0627\u0644\u062d\u062f \u0627\u0644\u0623\u0642\u0635\u0649 6 \u0623\u0648\u0636\u0627\u0639"

    invoke-static {v0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1046
    return-void

    .line 1048
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_4
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1051
    if-nez v2, :cond_5

    .line 1052
    return-void

    .line 1055
    :cond_5
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preset_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/achour/tweaks/V6;->snapshot()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1058
    nop

    .line 1059
    invoke-static {v1}, Lcom/achour/tweaks/V6;->savePresetNames(Ljava/util/List;)V

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645 \u062d\u0641\u0638 \u0627\u0644\u0648\u0636\u0639: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1061
    invoke-static {}, Lcom/achour/tweaks/Bubble;->v6RebuildPanel()V

    .line 1062
    return-void

    .line 1056
    :catchall_1
    move-exception v0

    .line 1057
    return-void

    .line 1036
    :cond_6
    :goto_1
    const-string v0, "\u0627\u0643\u062a\u0628 \u0627\u0633\u0645 \u0627\u0644\u0648\u0636\u0639 \u0623\u0648\u0644\u0627\u064b"

    invoke-static {v0}, Lcom/achour/tweaks/V5;->toast(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method public static onStatus(IIILandroid/car/projection/ProjectionStatus;)V
    .locals 5

    .line 250
    :try_start_0
    sput p1, Lcom/achour/tweaks/V6;->curState:I

    .line 251
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    .line 252
    :cond_0
    sput p2, Lcom/achour/tweaks/V6;->curTransport:I

    .line 255
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 256
    if-eqz v2, :cond_2

    .line 258
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_state"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v2

    .line 262
    :cond_2
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p0, v0, :cond_4

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v1

    .line 263
    :goto_2
    if-eq p1, v0, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v1

    .line 264
    :goto_4
    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    .line 265
    :try_start_2
    invoke-static {p2, p3}, Lcom/achour/tweaks/V6;->recordTransportAddress(ILandroid/car/projection/ProjectionStatus;)V

    .line 266
    invoke-static {}, Lcom/achour/tweaks/V6;->onEnterActive()V

    .line 268
    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_8

    .line 269
    invoke-static {}, Lcom/achour/tweaks/V6;->onExitActive()V

    .line 272
    :cond_8
    if-eqz v0, :cond_9

    if-nez v4, :cond_9

    .line 273
    invoke-static {v1}, Lcom/achour/tweaks/V6;->playTone(Z)V

    goto :goto_5

    .line 274
    :cond_9
    if-nez p1, :cond_b

    if-eq p0, v1, :cond_a

    if-eqz v4, :cond_b

    .line 275
    :cond_a
    invoke-static {v3}, Lcom/achour/tweaks/V6;->playTone(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 278
    :cond_b
    :goto_5
    nop

    .line 279
    nop

    .line 281
    :try_start_3
    invoke-static {}, Lcom/achour/tweaks/V6;->mainHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p3, Lcom/achour/tweaks/V6$3;

    invoke-direct {p3, p1, p2}, Lcom/achour/tweaks/V6$3;-><init>(II)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    goto :goto_6

    .line 287
    :catchall_1
    move-exception p0

    .line 290
    :goto_6
    goto :goto_7

    .line 289
    :catchall_2
    move-exception p0

    .line 291
    :goto_7
    return-void
.end method

.method public static onStatusSafe(IIILandroid/car/projection/ProjectionStatus;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/achour/tweaks/V6;->onStatus(IIILandroid/car/projection/ProjectionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method static pb(Ljava/lang/String;Z)V
    .locals 1

    .line 125
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    goto :goto_0

    .line 131
    :catchall_0
    move-exception p0

    .line 133
    :goto_0
    return-void
.end method

.method static pi(Ljava/lang/String;I)V
    .locals 1

    .line 148
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_0

    .line 154
    :catchall_0
    move-exception p0

    .line 156
    :goto_0
    return-void
.end method

.method static playTone(Z)V
    .locals 3

    .line 412
    :try_start_0
    const-string v0, "sounds"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    sget-object v0, Lcom/achour/tweaks/V6;->tones:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 416
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v0, Lcom/achour/tweaks/V6;->tones:Landroid/media/ToneGenerator;

    .line 418
    :cond_1
    sget-object v0, Lcom/achour/tweaks/V6;->tones:Landroid/media/ToneGenerator;

    if-eqz p0, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    :goto_0
    if-eqz p0, :cond_3

    const/16 p0, 0xb4

    goto :goto_1

    :cond_3
    const/16 p0, 0xfa

    :goto_1
    invoke-virtual {v0, v1, p0}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    goto :goto_2

    .line 419
    :catchall_0
    move-exception p0

    .line 421
    :goto_2
    return-void
.end method

.method public static prefPhoneLabel()Ljava/lang/String;
    .locals 4

    .line 835
    const-string v0, "preferred_phone"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    const-string v2, "preferred_phone_name"

    invoke-static {v2, v1}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0627\u0644\u0647\u0627\u062a\u0641 \u0627\u0644\u0645\u0641\u0636\u0644: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u0627\u0636\u063a\u0637 \u0644\u0644\u0645\u0633\u062d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 837
    :cond_2
    :goto_0
    const-string v0, "\u0627\u0644\u0647\u0627\u062a\u0641 \u0627\u0644\u0645\u0641\u0636\u0644: \u062a\u0644\u0642\u0627\u0626\u064a"

    return-object v0
.end method

.method static prefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 98
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V5;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method static presetExcluded(Ljava/lang/String;)Z
    .locals 1

    .line 846
    if-eqz p0, :cond_1

    .line 847
    const-string v0, "preset_names"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    const-string v0, "preset_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    const-string v0, "last_state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    const-string v0, "stall_flag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    const-string v0, "connlog"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 846
    :goto_1
    return p0
.end method

.method public static presetNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 939
    const-string v1, "preset_names"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 941
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 942
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v2

    .line 943
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 944
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 948
    :cond_2
    return-object v0
.end method

.method static ps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_0

    .line 178
    :catchall_0
    move-exception p0

    .line 180
    :goto_0
    return-void
.end method

.method static recordTransportAddress(ILandroid/car/projection/ProjectionStatus;)V
    .locals 8

    .line 296
    if-nez p1, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getConnectedMobileDevices()Ljava/util/List;

    move-result-object p1

    .line 300
    if-nez p1, :cond_1

    .line 301
    return-void

    .line 303
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "USB"

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    const-string p0, "WIFI"

    goto :goto_0

    :cond_3
    const-string p0, "NONE"

    .line 304
    :goto_0
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 305
    if-nez v1, :cond_4

    .line 306
    return-void

    .line 308
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 309
    nop

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/projection/ProjectionStatus$MobileDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 311
    if-nez v4, :cond_5

    .line 312
    goto :goto_1

    .line 315
    :cond_5
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getBluetoothMacAddress"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 316
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lt_a_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    move v3, v0

    .line 322
    :cond_6
    goto :goto_2

    .line 321
    :catchall_0
    move-exception v4

    .line 323
    :goto_2
    goto :goto_1

    .line 324
    :cond_7
    if-eqz v3, :cond_8

    .line 325
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    :cond_8
    goto :goto_3

    .line 327
    :catchall_1
    move-exception p0

    .line 329
    :goto_3
    return-void
.end method

.method static sampleBytes()J
    .locals 9

    .line 427
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 428
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 429
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-ltz v2, :cond_1

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    add-long/2addr v3, v5

    return-wide v3

    .line 431
    :cond_1
    :goto_0
    return-wide v0

    .line 434
    :catchall_0
    move-exception v2

    .line 435
    return-wide v0
.end method

.method static savePresetNames(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 954
    if-lez v1, :cond_0

    .line 955
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    :cond_1
    const-string p0, "preset_names"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/achour/tweaks/V6;->ps(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public static selfHealDeferred(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget v0, Lcom/achour/tweaks/V6;->prevState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v1, "AATweaks"

    const-string v2, "v8 self-heal: deferred to end of init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/achour/tweaks/V5;->softReset()V

    const-string v1, "\u0645\u0639\u0627\u0641\u0627\u0629 \u0630\u0627\u062a\u064a\u0629 \u0628\u0639\u062f \u0627\u0646\u0647\u064a\u0627\u0631"

    invoke-static {v1}, Lcom/achour/tweaks/P;->setLastAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/achour/tweaks/V5;->timeNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0645\u0639\u0627\u0641\u0627\u0629 \u0630\u0627\u062a\u064a\u0629"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/achour/tweaks/V5;->appendRaw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static sessionBytes()J
    .locals 7

    .line 542
    const-wide/16 v0, -0x1

    :try_start_0
    sget-boolean v2, Lcom/achour/tweaks/V6;->trafficSupported:Z

    if-eqz v2, :cond_4

    sget-wide v2, Lcom/achour/tweaks/V6;->sessionBaseBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    sget v2, Lcom/achour/tweaks/V6;->curState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    sget v2, Lcom/achour/tweaks/V6;->curState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 546
    return-wide v0

    .line 548
    :cond_1
    invoke-static {}, Lcom/achour/tweaks/V6;->sampleBytes()J

    move-result-wide v2

    .line 549
    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 550
    return-wide v0

    .line 552
    :cond_2
    sget-wide v0, Lcom/achour/tweaks/V6;->sessionBaseBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v0

    .line 553
    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    return-wide v4

    .line 543
    :cond_4
    :goto_1
    return-wide v0

    .line 554
    :catchall_0
    move-exception v2

    .line 555
    return-wide v0
.end method

.method static snapshot()Ljava/lang/String;
    .locals 8

    .line 856
    invoke-static {}, Lcom/achour/tweaks/V6;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 857
    if-nez v0, :cond_0

    .line 858
    const-string v0, ""

    return-object v0

    .line 860
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 863
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 864
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 865
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 866
    invoke-static {v3}, Lcom/achour/tweaks/V6;->presetExcluded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 867
    goto :goto_0

    .line 869
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 870
    instance-of v5, v4, Ljava/lang/String;

    const/16 v6, 0xa

    const/16 v7, 0x3d

    if-eqz v5, :cond_2

    .line 871
    const-string v5, "S:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v4, Ljava/lang/String;

    const-string v5, "\n"

    const-string v7, "\\n"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 872
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 873
    const-string v5, "B:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 874
    :cond_3
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 875
    const-string v5, "I:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 876
    :cond_4
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_5

    .line 877
    const-string v5, "L:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 878
    :cond_5
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_6

    .line 879
    const-string v5, "F:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 883
    :cond_7
    goto :goto_2

    .line 882
    :catchall_0
    move-exception v0

    .line 884
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static soundsLabel()Ljava/lang/String;
    .locals 3

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u062a\u0646\u0628\u064a\u0647\u0627\u062a \u0635\u0648\u062a\u064a\u0629: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sounds"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/achour/tweaks/V6;->onOff(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static stallTick()V
    .locals 7

    .line 488
    sget-boolean v0, Lcom/achour/tweaks/V6;->stallRunning:Z

    if-nez v0, :cond_0

    .line 489
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/achour/tweaks/V6;->curState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    sget v1, Lcom/achour/tweaks/V6;->curState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 493
    invoke-static {}, Lcom/achour/tweaks/V6;->stopStallLoop()V

    .line 494
    return-void

    .line 496
    :cond_1
    sget-boolean v1, Lcom/achour/tweaks/V6;->trafficSupported:Z

    if-eqz v1, :cond_4

    .line 497
    invoke-static {}, Lcom/achour/tweaks/V6;->sampleBytes()J

    move-result-wide v1

    .line 498
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 499
    sput-boolean v0, Lcom/achour/tweaks/V6;->trafficSupported:Z

    goto :goto_1

    .line 501
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 502
    sget-wide v5, Lcom/achour/tweaks/V6;->lastBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v5, v1, v5

    const-string v6, "stall_flag"

    if-eqz v5, :cond_3

    .line 503
    :try_start_1
    sput-wide v1, Lcom/achour/tweaks/V6;->lastBytes:J

    .line 504
    sput-wide v3, Lcom/achour/tweaks/V6;->lastProgressMs:J

    .line 505
    sput-boolean v0, Lcom/achour/tweaks/V6;->stallReported:Z

    .line 506
    invoke-static {v6, v0}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 507
    invoke-static {v6, v0}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V

    .line 508
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    goto :goto_1

    .line 510
    :cond_3
    sget-wide v1, Lcom/achour/tweaks/V6;->lastProgressMs:J

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x7530

    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    sget-boolean v1, Lcom/achour/tweaks/V6;->stallReported:Z

    if-nez v1, :cond_4

    .line 511
    const/4 v1, 0x1

    sput-boolean v1, Lcom/achour/tweaks/V6;->stallReported:Z

    .line 512
    invoke-static {v6, v1}, Lcom/achour/tweaks/V6;->pb(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 514
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/achour/tweaks/V5;->timeNow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u062a\u062c\u0645\u0651\u062f \u0645\u0634\u062a\u0628\u0647"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/achour/tweaks/V5;->appendRaw(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    goto :goto_0

    .line 515
    :catchall_0
    move-exception v1

    .line 517
    :goto_0
    :try_start_3
    const-string v1, "AATweaks"

    const-string v2, "v6 stall suspected: no traffic progress for 30s"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/achour/tweaks/V5;->refreshPanel()V

    .line 519
    const-string v1, "autostall"

    invoke-static {v1, v0}, Lcom/achour/tweaks/V6;->gb(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    .line 521
    :try_start_4
    invoke-static {}, Lcom/achour/tweaks/V5;->softReset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 523
    goto :goto_1

    .line 522
    :catchall_1
    move-exception v1

    .line 529
    :cond_4
    :goto_1
    goto :goto_2

    .line 528
    :catchall_2
    move-exception v1

    .line 530
    :goto_2
    sget-boolean v1, Lcom/achour/tweaks/V6;->stallRunning:Z

    if-eqz v1, :cond_5

    .line 532
    :try_start_5
    invoke-static {}, Lcom/achour/tweaks/V6;->mainHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/achour/tweaks/V6;->STALL_TICK:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 535
    goto :goto_3

    .line 533
    :catchall_3
    move-exception v1

    .line 534
    sput-boolean v0, Lcom/achour/tweaks/V6;->stallRunning:Z

    .line 537
    :cond_5
    :goto_3
    return-void
.end method

.method static startStallLoop()V
    .locals 4

    .line 466
    sget-boolean v0, Lcom/achour/tweaks/V6;->stallRunning:Z

    if-eqz v0, :cond_0

    .line 467
    return-void

    .line 469
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/achour/tweaks/V6;->stallRunning:Z

    .line 471
    :try_start_0
    invoke-static {}, Lcom/achour/tweaks/V6;->mainHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/achour/tweaks/V6;->STALL_TICK:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    goto :goto_0

    .line 472
    :catchall_0
    move-exception v0

    .line 473
    const/4 v0, 0x0

    sput-boolean v0, Lcom/achour/tweaks/V6;->stallRunning:Z

    .line 475
    :goto_0
    return-void
.end method

.method static stopStallLoop()V
    .locals 2

    .line 478
    const/4 v0, 0x0

    sput-boolean v0, Lcom/achour/tweaks/V6;->stallRunning:Z

    .line 480
    :try_start_0
    sget-object v0, Lcom/achour/tweaks/V6;->mainH:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 481
    sget-object v1, Lcom/achour/tweaks/V6;->STALL_TICK:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_0
    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    .line 485
    :goto_0
    return-void
.end method

.method public static titleColor()I
    .locals 1

    .line 1103
    invoke-static {}, Lcom/achour/tweaks/V6;->accentColor()I

    move-result v0

    .line 1104
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static titleTextSize()F
    .locals 2

    .line 1120
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/achour/tweaks/V6;->fontScaleF()F

    move-result v1

    mul-float/2addr v1, v0

    return v1
.end method

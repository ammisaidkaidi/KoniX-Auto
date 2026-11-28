.class public final Lx/g;
.super Ljava/lang/Object;
.source "g.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/g$Run;
    }
.end annotation


# static fields
.field private static volatile lastTransportLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lx/g;->lastTransportLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apInfoText()Ljava/lang/String;
    .locals 5

    .line 379
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5ApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 380
    if-nez v1, :cond_0

    .line 381
    return-object v0

    .line 384
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "apChannel"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 386
    if-lez v2, :cond_1

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0642\u0646\u0627\u0629 AP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 390
    :cond_1
    goto :goto_0

    .line 389
    :catchall_0
    move-exception v2

    .line 392
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "apBand"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 393
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 394
    if-nez v1, :cond_2

    .line 395
    const-string v0, "\u0646\u0637\u0627\u0642 AP: 2.4GHz"

    return-object v0

    .line 397
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 398
    const-string v0, "\u0646\u0637\u0627\u0642 AP: 5GHz"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 401
    :cond_3
    goto :goto_1

    .line 400
    :catchall_1
    move-exception v1

    .line 402
    :goto_1
    return-object v0

    .line 403
    :catchall_2
    move-exception v1

    .line 404
    return-object v0
.end method

.method public static appendLog(Ljava/lang/String;Z)V
    .locals 2

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lx/g;->timeNow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "\u2014"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 116
    if-eqz p1, :cond_1

    const-string p1, " \u0646\u062c\u062d"

    goto :goto_0

    :cond_1
    const-string p1, " \u0627\u0646\u062a\u0647\u0649/\u0641\u0634\u0644"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {p0}, Lx/g;->appendRaw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    goto :goto_1

    .line 117
    :catchall_0
    move-exception p0

    .line 119
    :goto_1
    return-void
.end method

.method static appendRaw(Ljava/lang/String;)V
    .locals 7

    .line 92
    const-string v0, "\n"

    const-string v1, "connlog"

    :try_start_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 99
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 100
    array-length v3, p0

    const/16 v5, 0x9

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 101
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 102
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    aget-object v6, p0, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    return-void

    .line 109
    :catchall_0
    move-exception p0

    .line 111
    :goto_2
    return-void
.end method

.method static backup()V
    .locals 10

    .line 665
    const-string v0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Lx/g;->filesDir()Ljava/io/File;

    move-result-object v1

    .line 666
    if-nez v1, :cond_0

    .line 667
    const-string v0, "\u0644\u0627 \u0645\u062c\u0644\u062f \u0645\u062a\u0627\u062d"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 668
    return-void

    .line 670
    :cond_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 671
    if-nez v2, :cond_1

    .line 672
    return-void

    .line 674
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 677
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 678
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 679
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 680
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 681
    instance-of v7, v6, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "="

    const-string v9, "\n"

    if-eqz v7, :cond_2

    .line 682
    :try_start_1
    const-string v7, "S:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v6, Ljava/lang/String;

    const-string v7, "\\n"

    .line 683
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 684
    :cond_2
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 685
    const-string v7, "B:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 686
    :cond_3
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    .line 687
    const-string v7, "I:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 688
    :cond_4
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_5

    .line 689
    const-string v7, "L:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 690
    :cond_5
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_6

    .line 691
    const-string v7, "F:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 696
    :cond_7
    goto :goto_2

    .line 695
    :catchall_0
    move-exception v2

    .line 697
    :goto_2
    new-instance v2, Ljava/io/File;

    const-string v4, "\u0056\u0042\u0043\u0058\u005b\u005e\u0059\u005c\u0052\u0045\u0068\u0044\u0052\u0043\u0043\u005e\u0059\u0050\u0044\u0068\u0055\u0056\u0054\u005c\u0042\u0047\u0019\u0043\u004f\u0043"

    invoke-static {v4}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 699
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lx/g;->writeText(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings backup written: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v1, "\u062a\u0645 \u0627\u0644\u0646\u0633\u062e \u0627\u0644\u0627\u062d\u062a\u064a\u0627\u0637\u064a \u0644\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    invoke-static {v1}, Lx/g;->toast(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 705
    goto :goto_3

    .line 702
    :catchall_1
    move-exception v1

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v0, "\u0641\u0634\u0644 \u0627\u0644\u0646\u0633\u062e \u0627\u0644\u0627\u062d\u062a\u064a\u0627\u0637\u064a"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 706
    :goto_3
    return-void
.end method

.method public static connectNow()V
    .locals 5

    .line 295
    :try_start_0
    invoke-static {}, Lx/g;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 296
    if-nez v0, :cond_0

    .line 297
    const-string v0, "\u0644\u0627 \u0633\u064a\u0627\u0642 \u0645\u062a\u0627\u062d"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 298
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lx/a;->usb()Z

    move-result v1

    .line 301
    invoke-static {}, Lx/a;->wifi()Z

    move-result v2

    .line 302
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 303
    const-string v0, "\u0648\u0636\u0639 \u0627\u0644\u0627\u062a\u0635\u0627\u0644: \u0628\u062f\u0648\u0646 \u0627\u062a\u0635\u0627\u0644"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 304
    return-void

    .line 306
    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 307
    nop

    .line 309
    :try_start_1
    invoke-static {v0, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->scanAndSwitchUsbPhones(Landroid/content/Context;Z)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    goto :goto_0

    .line 310
    :catchall_0
    move-exception v4

    const/4 v4, 0x0

    .line 312
    :goto_0
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    .line 314
    :try_start_2
    invoke-static {v0, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    goto :goto_1

    .line 315
    :catchall_1
    move-exception v0

    .line 318
    :cond_2
    :goto_1
    goto :goto_2

    .line 320
    :cond_3
    :try_start_3
    invoke-static {v0, v3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5HasBt(Landroid/content/Context;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 322
    goto :goto_2

    .line 321
    :catchall_2
    move-exception v0

    .line 324
    :goto_2
    :try_start_4
    const-string v0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect now (usb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " wifi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v0, "\u062c\u0627\u0631\u064d \u0645\u062d\u0627\u0648\u0644\u0629 \u0627\u0644\u0627\u062a\u0635\u0627\u0644\u2026"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 327
    goto :goto_3

    .line 326
    :catchall_3
    move-exception v0

    .line 328
    :goto_3
    return-void
.end method

.method static ctx()Landroid/content/Context;
    .locals 1

    .line 48
    :try_start_0
    invoke-static {}, Lx/a;->v5Context()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public static diagLabel()Ljava/lang/String;
    .locals 4

    .line 522
    const-string v0, "\u062a\u0635\u062f\u064a\u0631 \u0627\u0644\u062a\u0634\u062e\u064a\u0635"

    :try_start_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 523
    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v3, "last_diag"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 524
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u062a\u0635\u062f\u064a\u0631 \u0627\u0644\u062a\u0634\u062e\u064a\u0635 (\u0622\u062e\u0631: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 527
    :cond_1
    return-object v0

    .line 528
    :catchall_0
    move-exception v1

    .line 529
    return-object v0
.end method

.method public static disconnectNow()V
    .locals 2

    .line 332
    :try_start_0
    invoke-static {}, Lx/a;->v5Unregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    .line 336
    :goto_0
    :try_start_1
    invoke-static {}, Lx/a;->v5Reregister()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    goto :goto_1

    .line 337
    :catchall_1
    move-exception v0

    .line 339
    :goto_1
    const-string v0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "disconnect now: runner unregistered + re-registered (launch machinery reset)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v0, "\u0623\u064f\u0639\u064a\u062f \u0636\u0628\u0637 \u0645\u0634\u063a\u0651\u0644 \u0627\u0644\u0627\u062a\u0635\u0627\u0644"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lx/g;->refreshPanel()V

    .line 342
    return-void
.end method

.method static exportDiag()V
    .locals 11

    .line 589
    const-string v0, ""

    const-string v1, "\n"

    invoke-static {}, Lx/g;->filesDir()Ljava/io/File;

    move-result-object v2

    .line 590
    const-string v3, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v3}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-nez v2, :cond_0

    .line 591
    const-string v0, "diag: no files dir"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 594
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autolinker_diag_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 595
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    const-string v6, "KoniX-Auto diagnostics\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v6, "time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 599
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 600
    const-string v7, "\n\n== achour_tweaks prefs ==\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :try_start_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 603
    if-eqz v6, :cond_1

    .line 604
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 605
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 607
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 608
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    goto :goto_0

    .line 613
    :cond_1
    goto :goto_1

    .line 611
    :catchall_0
    move-exception v6

    .line 612
    const-string v7, "(prefs unavailable: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :goto_1
    const-string v6, "\n== connlog ==\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :try_start_1
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 617
    if-nez v6, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    const-string v7, "connlog"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    goto :goto_3

    .line 618
    :catchall_1
    move-exception v6

    .line 620
    :goto_3
    const-string v6, "\n== last_action ==\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :try_start_2
    invoke-static {}, Lx/a;->lastAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 624
    goto :goto_4

    .line 623
    :catchall_2
    move-exception v6

    .line 625
    :goto_4
    const-string v6, "\n== CarCompat state ==\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :try_start_3
    const-string v6, "state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5State()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 630
    goto :goto_5

    .line 628
    :catchall_3
    move-exception v6

    .line 629
    const-string v6, "(unavailable)\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    :goto_5
    :try_start_4
    const-string v6, "sessionStartMs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SessionStart()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 634
    goto :goto_6

    .line 633
    :catchall_4
    move-exception v6

    .line 636
    :goto_6
    :try_start_5
    const-string v6, "last_transport="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 638
    if-nez v6, :cond_3

    :goto_7
    goto :goto_8

    :cond_3
    const-string v7, "last_transport"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 640
    goto :goto_9

    .line 639
    :catchall_5
    move-exception v0

    .line 641
    :goto_9
    const-string v0, "\u003d\u000a\u000a\u0017\u005b\u0058\u0050\u0054\u0056\u0043\u0017\u001f\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044\u001b\u0017\u0074\u0056\u0045\u0074\u0058\u005a\u0047\u0056\u0043\u001e\u0017\u000a\u000a\u003d"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {}, Lx/g;->readLogcat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 645
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx/g;->writeText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 649
    nop

    .line 651
    :try_start_7
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 652
    if-eqz v1, :cond_4

    .line 653
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_diag"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 656
    :cond_4
    goto :goto_a

    .line 655
    :catchall_6
    move-exception v1

    .line 657
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diagnostics written: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0643\u064f\u062a\u0628 \u0627\u0644\u062a\u0634\u062e\u064a\u0635: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lx/g;->refreshPanel()V

    .line 660
    return-void

    .line 646
    :catchall_7
    move-exception v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diag write failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method static filesDir()Ljava/io/File;
    .locals 3

    .line 534
    invoke-static {}, Lx/g;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 535
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 536
    return-object v1

    .line 538
    :cond_0
    nop

    .line 540
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    goto :goto_0

    .line 541
    :catchall_0
    move-exception v2

    .line 543
    :goto_0
    if-nez v1, :cond_1

    .line 545
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    goto :goto_1

    .line 546
    :catchall_1
    move-exception v0

    .line 549
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static headerText()Ljava/lang/String;
    .locals 11

    .line 410
    const-string v0, "USB"

    .line 412
    :try_start_0
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5State()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    goto :goto_0

    .line 413
    :catchall_0
    move-exception v1

    const/4 v1, -0x1

    .line 415
    :goto_0
    :try_start_1
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 416
    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_1

    :cond_0
    const-string v4, "last_transport"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    goto :goto_3

    :cond_1
    const-string v0, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u0644\u0627\u0633\u0644\u0643\u064a"

    goto :goto_2

    :cond_2
    move-object v0, v3

    .line 419
    :goto_3
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_3

    goto :goto_4

    .line 421
    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 422
    const-string v0, "\u062c\u0627\u0647\u0632"

    goto :goto_6

    .line 423
    :cond_4
    if-nez v1, :cond_5

    .line 424
    const-string v0, "\u063a\u064a\u0631 \u0645\u062a\u0635\u0644"

    goto :goto_6

    .line 426
    :cond_5
    const-string v0, "\u063a\u064a\u0631 \u0645\u0639\u0631\u0648\u0641"

    goto :goto_6

    .line 420
    :cond_6
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0645\u062a\u0635\u0644"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    const-string v0, ""

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    const-string v5, "\u0627\u0644\u062d\u0627\u0644\u0629: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 430
    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_c

    .line 431
    :cond_8
    nop

    .line 433
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SessionStart()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 435
    goto :goto_7

    .line 434
    :catchall_1
    move-exception v2

    move-wide v2, v0

    .line 436
    :goto_7
    cmp-long v5, v2, v0

    const-string v6, " \u00b7 "

    if-lez v5, :cond_b

    .line 437
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v7, v2

    .line 438
    cmp-long v2, v7, v0

    if-gez v2, :cond_9

    .line 439
    goto :goto_8

    .line 438
    :cond_9
    move-wide v0, v7

    .line 441
    :goto_8
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v7, 0x3c

    div-long v9, v0, v7

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    rem-long/2addr v0, v7

    .line 443
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 444
    const-string v2, "0"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    :cond_b
    invoke-static {}, Lx/g;->apInfoText()Ljava/lang/String;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_c

    .line 450
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 453
    :cond_c
    nop

    .line 455
    :try_start_4
    invoke-static {}, Lx/a;->fps()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 457
    goto :goto_9

    .line 456
    :catchall_2
    move-exception v0

    const/4 v0, 0x0

    .line 458
    :goto_9
    :try_start_5
    const-string v1, " \u00b7 FPS: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_d

    const-string v0, "\u062a\u0644\u0642\u0627\u0626\u064a"

    goto :goto_a

    :cond_d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v0, "\n\u0622\u062e\u0631 \u0625\u062c\u0631\u0627\u0621 \u062a\u0644\u0642\u0627\u0626\u064a: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lx/g;->lastActionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-object v0

    .line 461
    :catchall_3
    move-exception v0

    .line 462
    const-string v0, "\u0627\u0644\u062d\u0627\u0644\u0629: \u2014"

    return-object v0
.end method

.method static lastActionText()Ljava/lang/String;
    .locals 8

    .line 348
    const-string v0, "\u0644\u0627 \u0634\u064a\u0621 \u0628\u0639\u062f"

    :try_start_0
    invoke-static {}, Lx/a;->lastAction()Ljava/lang/String;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 352
    :cond_0
    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 353
    if-gez v2, :cond_1

    .line 354
    return-object v1

    .line 356
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    nop

    .line 359
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    goto :goto_0

    .line 360
    :catchall_0
    move-exception v1

    move-wide v1, v4

    .line 362
    :goto_0
    cmp-long v6, v1, v4

    if-gtz v6, :cond_2

    .line 363
    return-object v3

    .line 365
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    cmp-long v1, v6, v4

    if-gez v1, :cond_3

    .line 367
    goto :goto_1

    .line 366
    :cond_3
    move-wide v4, v6

    .line 369
    :goto_1
    const-wide/16 v1, 0x3c

    cmp-long v6, v4, v1

    const-string v7, "\u0642\u0628\u0644 "

    if-gez v6, :cond_4

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u062b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long/2addr v4, v1

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u062f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    .line 350
    :cond_5
    :goto_3
    return-object v0

    .line 371
    :catchall_1
    move-exception v1

    .line 372
    return-object v0
.end method

.method public static logGateBlock()V
    .locals 3
    invoke-static {}, Lx/n;->ok()Z
    move-result v2
    if-nez v2, :gate_pass
    return-void
    :gate_pass

    .line 124
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lx/g;->timeNow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u2014 \u062d\u064f\u0638\u0631 \u0628\u062f\u0621 \u0645\u0643\u0631\u0631 (\u0628\u0648\u0627\u0628\u0629 \u0627\u0644\u062c\u0644\u0633\u0629)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx/g;->appendRaw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 127
    :goto_0
    return-void
.end method

.method public static logText()Ljava/lang/String;
    .locals 4

    .line 131
    const-string v0, "\u0633\u062c\u0644 \u0627\u0644\u0627\u062a\u0635\u0627\u0644\u0627\u062a:\n\u0644\u0627 \u0645\u062d\u0627\u0648\u0644\u0627\u062a \u0628\u0639\u062f"

    :try_start_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const-string v3, "connlog"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 133
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0633\u062c\u0644 \u0627\u0644\u0627\u062a\u0635\u0627\u0644\u0627\u062a:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 134
    :cond_2
    :goto_2
    return-object v0

    .line 137
    :catchall_0
    move-exception v1

    .line 138
    return-object v0
.end method

.method public static onAction(I)V
    .locals 2

    .line 470
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 487
    :pswitch_0
    :try_start_0
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lx/g$Run;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lx/g$Run;-><init>(I)V

    const-string v1, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044\u001a\u0065\u0052\u0044\u0043\u0058\u0045\u0052"

    invoke-static {v1}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 488
    goto :goto_0

    .line 484
    :pswitch_1
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lx/g$Run;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lx/g$Run;-><init>(I)V

    const-string v1, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044\u001a\u0075\u0056\u0054\u005c\u0042\u0047"

    invoke-static {v1}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 485
    goto :goto_0

    .line 481
    :pswitch_2
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lx/g$Run;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lx/g$Run;-><init>(I)V

    const-string v1, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044\u001a\u0073\u005e\u0056\u0050"

    invoke-static {v1}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 482
    goto :goto_0

    .line 478
    :pswitch_3
    invoke-static {}, Lx/g;->disconnectNow()V

    .line 479
    goto :goto_0

    .line 475
    :pswitch_4
    invoke-static {}, Lx/g;->connectNow()V

    .line 476
    goto :goto_0

    .line 472
    :pswitch_5
    invoke-static {}, Lx/g;->softReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    goto :goto_0

    .line 492
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 493
    :goto_0
    nop

    .line 494
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onStatus(IIILandroid/car/projection/ProjectionStatus;)V
    .locals 11
    invoke-static {}, Lx/n;->ok()Z
    move-result v10
    if-nez v10, :gate_pass
    return-void
    :gate_pass

    .line 155
    const-string v0, "USB"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    if-ne p2, v1, :cond_1

    .line 156
    :cond_0
    :try_start_0
    invoke-static {p2}, Lx/g;->transportLabel(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lx/g;->lastTransportLabel:Ljava/lang/String;

    .line 158
    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq p0, v1, :cond_3

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v2

    .line 159
    :goto_1
    if-eq p1, v1, :cond_5

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    .line 160
    :goto_3
    const-wide/16 v6, 0x0

    if-eqz v1, :cond_7

    if-nez v5, :cond_7

    .line 161
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SessionStart()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SetSessionStart(J)V

    .line 164
    :cond_6
    invoke-static {p2, p3}, Lx/g;->recordTransport(ILandroid/car/projection/ProjectionStatus;)V

    .line 165
    invoke-static {p2}, Lx/g;->transportLabel(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lx/g;->appendLog(Ljava/lang/String;Z)V

    goto :goto_4

    .line 166
    :cond_7
    if-eqz v1, :cond_8

    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SessionStart()J

    move-result-wide p2

    cmp-long p2, p2, v6

    if-nez p2, :cond_8

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SetSessionStart(J)V

    .line 169
    :cond_8
    :goto_4
    if-nez p1, :cond_e

    if-nez v5, :cond_9

    if-ne p0, v2, :cond_e

    .line 170
    :cond_9
    invoke-static {v6, v7}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5SetSessionStart(J)V

    .line 171
    sget-object p0, Lx/g;->lastTransportLabel:Ljava/lang/String;

    .line 172
    if-nez p0, :cond_d

    .line 173
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object p0

    .line 174
    const/4 p1, 0x0

    if-nez p0, :cond_a

    :goto_5
    goto :goto_6

    :cond_a
    const-string p2, "last_transport"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 175
    :goto_6
    const-string p0, "WIFI"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string v0, "\u0644\u0627\u0633\u0644\u0643\u064a"

    goto :goto_7

    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_7

    :cond_c
    const-string v0, "\u2014"

    :goto_7
    move-object p0, v0

    .line 177
    :cond_d
    invoke-static {p0, v4}, Lx/g;->appendLog(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_e
    goto :goto_8

    .line 179
    :catchall_0
    move-exception p0

    .line 181
    :goto_8
    return-void
.end method

.method static prefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 40
    :try_start_0
    invoke-static {}, Lx/a;->v5Prefs()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method static readLogcat()Ljava/lang/String;
    .locals 6

    .line 563
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "logcat"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-d"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "-t"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "300"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "-s"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"

    invoke-static {v2}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    const/4 v4, 0x5

    aput-object v2, v1, v4

    const-string v2, "CarCompat"

    const/4 v4, 0x6

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 565
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 566
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    nop

    .line 570
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v5, 0x190

    if-ge v3, v5, :cond_0

    .line 571
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    goto :goto_1

    .line 577
    :catchall_0
    move-exception v0

    .line 579
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 580
    const-string v0, "(logcat \u063a\u064a\u0631 \u0645\u062a\u0627\u062d)\n"

    return-object v0

    .line 582
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 583
    :catchall_1
    move-exception v0

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(logcat \u063a\u064a\u0631 \u0645\u062a\u0627\u062d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static recordTransport(ILandroid/car/projection/ProjectionStatus;)V
    .locals 4

    .line 185
    :try_start_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    invoke-static {p0}, Lx/g;->transportCode(I)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string v1, "last_transport"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 192
    if-eqz p1, :cond_3

    .line 193
    nop

    .line 195
    :try_start_1
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getConnectedMobileDevices()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    goto :goto_0

    .line 196
    :catchall_0
    move-exception p1

    const/4 p1, 0x0

    .line 198
    :goto_0
    if-eqz p1, :cond_3

    .line 199
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/projection/ProjectionStatus$MobileDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 200
    if-nez v1, :cond_1

    .line 201
    goto :goto_1

    .line 204
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/car/projection/ProjectionStatus$MobileDevice;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    goto :goto_2

    .line 205
    :catchall_1
    move-exception v2

    .line 208
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Landroid/car/projection/ProjectionStatus$MobileDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lt_n_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 213
    :cond_2
    goto :goto_3

    .line 212
    :catchall_2
    move-exception v1

    .line 214
    :goto_3
    goto :goto_1

    .line 217
    :cond_3
    :try_start_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 219
    goto :goto_4

    .line 218
    :catchall_3
    move-exception p0

    .line 220
    :goto_4
    return-void
.end method

.method static refreshPanel()V
    .locals 1

    .line 75
    :try_start_0
    invoke-static {}, Lx/b;->access$600()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 78
    :goto_0
    return-void
.end method

.method static restore()V
    .locals 9

    .line 709
    const-string v0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-static {}, Lx/g;->filesDir()Ljava/io/File;

    move-result-object v1

    .line 710
    if-nez v1, :cond_0

    .line 711
    return-void

    .line 713
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "\u0056\u0042\u0043\u0058\u005b\u005e\u0059\u005c\u0052\u0045\u0068\u0044\u0052\u0043\u0043\u005e\u0059\u0050\u0044\u0068\u0055\u0056\u0054\u005c\u0042\u0047\u0019\u0043\u004f\u0043"

    invoke-static {v3}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    const-string v0, "\u0644\u0627 \u064a\u0648\u062c\u062f \u0645\u0644\u0641 \u0646\u0633\u062e \u0627\u062d\u062a\u064a\u0627\u0637\u064a"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 716
    return-void

    .line 718
    :cond_1
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 719
    if-nez v1, :cond_2

    .line 720
    return-void

    .line 722
    :cond_2
    nop

    .line 724
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v2, "UTF-8"

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 726
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    .line 728
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_b

    .line 730
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_3

    goto :goto_3

    .line 733
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 734
    const/16 v7, 0x3d

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 735
    if-gez v7, :cond_4

    .line 736
    goto :goto_0

    .line 738
    :cond_4
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 739
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 740
    const/16 v7, 0x53

    if-ne v6, v7, :cond_5

    .line 741
    const-string v6, "\\n"

    const-string v7, "\n"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 742
    :cond_5
    const/16 v7, 0x42

    if-ne v6, v7, :cond_6

    .line 743
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 744
    :cond_6
    const/16 v7, 0x49

    if-ne v6, v7, :cond_7

    .line 745
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 746
    :cond_7
    const/16 v7, 0x4c

    if-ne v6, v7, :cond_8

    .line 747
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v1, v8, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 748
    :cond_8
    const/16 v7, 0x46

    if-ne v6, v7, :cond_9

    .line 749
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 755
    :goto_2
    goto :goto_0

    .line 751
    :cond_9
    goto :goto_0

    .line 731
    :cond_a
    :goto_3
    goto :goto_0

    .line 754
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 757
    :cond_b
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 758
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings restored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645\u062a \u0627\u0633\u062a\u0639\u0627\u062f\u0629 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx/g;->toast(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 764
    goto :goto_4

    .line 761
    :catchall_1
    move-exception v1

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v0, "\u0641\u0634\u0644\u062a \u0627\u0644\u0627\u0633\u062a\u0639\u0627\u062f\u0629"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 765
    :goto_4
    invoke-static {}, Lx/g;->refreshPanel()V

    .line 766
    return-void
.end method

.method public static shouldSkipWirelessNudge(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    invoke-static {}, Lx/n;->ok()Z
    move-result v5
    if-nez v5, :gate_pass
    const/4 v5, 0x0
    return v5
    :gate_pass

    .line 231
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lx/a;->usb()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    return v0

    .line 234
    :cond_0
    invoke-static {}, Lx/g;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    if-nez v1, :cond_1

    .line 236
    return v0

    .line 238
    :cond_1
    nop

    .line 239
    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 241
    :try_start_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 242
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lt_n_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :cond_2
    move-object p0, v2

    :goto_0
    goto :goto_1

    .line 245
    :catchall_0
    move-exception p0

    .line 248
    :cond_3
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_4

    .line 249
    :try_start_2
    const-string p0, "last_transport"

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    :cond_4
    const-string v1, "USB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 252
    const-string p0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {p0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    const-string v1, "F2: skipping wireless nudge \u2014 last successful transport was USB"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    const/4 p0, 0x1

    return p0

    .line 255
    :cond_5
    return v0

    .line 256
    :catchall_1
    move-exception p0

    .line 257
    return v0
.end method

.method public static softReset()V
    .locals 2

    .line 265
    :try_start_0
    invoke-static {}, Lx/a;->clearQuiet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    .line 269
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->v5ResetStatics()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    goto :goto_1

    .line 270
    :catchall_1
    move-exception v0

    .line 273
    :goto_1
    :try_start_2
    sget-object v0, Ldefpackage/azy;->sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Ldefpackage/azy;->sSessionStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    :cond_0
    goto :goto_2

    .line 276
    :catchall_2
    move-exception v0

    .line 279
    :goto_2
    :try_start_3
    invoke-static {}, Lx/a;->v5Reregister()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 281
    goto :goto_3

    .line 280
    :catchall_3
    move-exception v0

    .line 283
    :goto_3
    :try_start_4
    const-string v0, "\u0625\u0639\u0627\u062f\u0629 \u0636\u0628\u0637 \u064a\u062f\u0648\u064a\u0629"

    invoke-static {v0}, Lx/a;->setLastAction(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 285
    goto :goto_4

    .line 284
    :catchall_4
    move-exception v0

    .line 286
    :goto_4
    const-string v0, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"
    invoke-static {v0}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "soft reset done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "\u062a\u0645\u062a \u0625\u0639\u0627\u062f\u0629 \u0636\u0628\u0637 \u0627\u0644\u0627\u062a\u0635\u0627\u0644"

    invoke-static {v0}, Lx/g;->toast(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lx/g;->refreshPanel()V

    .line 289
    return-void
.end method

.method static timeNow()Ljava/lang/String;
    .locals 3

    .line 84
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    const-string v0, ""

    return-object v0
.end method

.method static toast(Ljava/lang/String;)V
    .locals 3

    .line 56
    :try_start_0
    invoke-static {}, Lx/g;->ctx()Landroid/content/Context;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lx/g$1;

    invoke-direct {v2, v0, p0}, Lx/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 71
    :goto_1
    return-void
.end method

.method static transportCode(I)Ljava/lang/String;
    .locals 1

    .line 149
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "USB"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "WIFI"

    goto :goto_0

    :cond_1
    const-string p0, "NONE"

    :goto_0
    return-object p0
.end method

.method static transportLabel(I)Ljava/lang/String;
    .locals 1

    .line 145
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "USB"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "\u0644\u0627\u0633\u0644\u0643\u064a"

    goto :goto_0

    :cond_1
    const-string p0, "\u2014"

    :goto_0
    return-object p0
.end method

.method static writeText(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p0, "UTF-8"

    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 555
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 558
    nop

    .line 559
    return-void

    .line 557
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 558
    throw p0
.end method

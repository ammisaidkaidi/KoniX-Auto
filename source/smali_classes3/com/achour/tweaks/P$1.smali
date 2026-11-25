.class Lcom/achour/tweaks/P$1;
.super Ljava/lang/Object;
.source "P.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/achour/tweaks/P;->onWirelessAttempt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 185
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    const-string v3, "AATweaks"

    const-wide/16 v4, 0x0

    if-ge v1, v2, :cond_3

    .line 186
    const-wide/16 v6, 0x3a98

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 187
    invoke-static {}, Lcom/achour/tweaks/P;->access$000()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/achour/tweaks/P;->access$000()J

    move-result-wide v4

    invoke-static {}, Lcom/achour/tweaks/P;->access$100()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 197
    invoke-static {v0}, Lcom/achour/tweaks/P;->access$402(Z)Z

    .line 187
    return-void

    .line 188
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/achour/tweaks/P;->enabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/achour/tweaks/P;->wifi()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/achour/tweaks/P;->autoRepair()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/achour/tweaks/P;->access$402(Z)Z

    .line 188
    return-void

    .line 190
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/achour/tweaks/P;->access$000()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/achour/tweaks/P;->access$000()J

    move-result-wide v1

    invoke-static {}, Lcom/achour/tweaks/P;->access$100()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v1, v1, v4

    if-ltz v1, :cond_4

    .line 197
    invoke-static {v0}, Lcom/achour/tweaks/P;->access$402(Z)Z

    .line 190
    return-void

    .line 191
    :cond_4
    :try_start_3
    const-string v1, "no RFCOMM after 2min -> repairing BT pairing"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/achour/tweaks/P;->access$200()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/achour/tweaks/P;->access$200()Landroid/content/Context;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/achour/tweaks/P;->access$300()Landroid/content/Context;

    move-result-object v1

    .line 193
    :goto_2
    if-eqz v1, :cond_6

    const-string v7, "\u0625\u0635\u0644\u0627\u062d \u0628\u0644\u0648\u062a\u0648\u062b \u062a\u0644\u0642\u0627\u0626\u064a (watchdog)"

    invoke-static {v7}, Lcom/achour/tweaks/P;->setLastAction(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/achour/tweaks/Bt;->repair(Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    :cond_6
    :goto_3
    invoke-static {v0}, Lcom/achour/tweaks/P;->access$402(Z)Z

    .line 198
    goto :goto_4

    .line 194
    :catchall_0
    move-exception v1

    .line 195
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "watchdog: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 199
    :goto_4
    return-void

    .line 197
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/achour/tweaks/P;->access$402(Z)Z

    .line 198
    throw v1
.end method

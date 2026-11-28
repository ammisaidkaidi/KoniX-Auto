.class Lx/c$1;
.super Ljava/lang/Object;
.source "c.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/c;->repair(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$quietWhenNone:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 24
    iput-object p1, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    iput-boolean p2, p0, Lx/c$1;->val$quietWhenNone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 26
    const-string v0, ")="

    const-string v1, "\u0076\u0076\u0063\u0040\u0052\u0056\u005c\u0044"

    invoke-static {v1}, Lx/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    .line 28
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 29
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 32
    :cond_0
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 33
    invoke-static {v4}, Lx/c;->access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    const-string v0, "\u0644\u0627 \u064a\u0648\u062c\u062f \u062c\u0647\u0627\u0632 \u0645\u0642\u062a\u0631\u0646"

    goto/16 :goto_2

    .line 37
    :cond_1
    invoke-static {v4}, Lx/c;->access$100(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-static {v4}, Lx/c;->access$200(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeBond("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-nez v7, :cond_2

    .line 42
    const-string v0, "\u0641\u0634\u0644 \u0625\u0644\u063a\u0627\u0621 \u0627\u0644\u0627\u0642\u062a\u0631\u0627\u0646 (\u0635\u0644\u0627\u062d\u064a\u0629)"

    goto :goto_2

    .line 44
    :cond_2
    iget-object v7, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0623\u064f\u0632\u064a\u0644 \u0627\u0642\u062a\u0631\u0627\u0646 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u2014 \u0623\u0639\u062f \u0627\u0644\u0627\u0642\u062a\u0631\u0627\u0646 \u0645\u0646 \u0627\u0644\u0647\u0627\u062a\u0641"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lx/c;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-wide/16 v7, 0x9c4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 46
    invoke-static {v4}, Lx/c;->access$400(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createBond("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v4, :cond_3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u062c\u0627\u0631\u064d \u0625\u0639\u0627\u062f\u0629 \u0627\u0644\u0627\u0642\u062a\u0631\u0627\u0646 \u0645\u0639 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u2014 \u0623\u0643\u0651\u062f \u0639\u0644\u0649 \u0627\u0644\u0647\u0627\u062a\u0641"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "\u062a\u0639\u0630\u0651\u0631 \u0628\u062f\u0621 \u0627\u0644\u0627\u0642\u062a\u0631\u0627\u0646 \u2014 \u0627\u0641\u062a\u062d \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b"

    move-object v3, v0

    .line 51
    :goto_0
    if-nez v4, :cond_4

    iget-object v0, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lx/c;->access$500(Landroid/content/Context;)V

    .line 60
    :cond_4
    move-object v0, v3

    goto :goto_2

    .line 30
    :cond_5
    :goto_1
    const-string v0, "\u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b \u063a\u064a\u0631 \u0645\u0641\u0639\u0651\u0644"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_2
    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lx/c$1;->val$quietWhenNone:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lx/c;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_6
    :goto_3
    invoke-static {v2}, Lx/c;->access$602(Z)Z

    .line 62
    goto :goto_4

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repair failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v3, "\u062a\u0639\u0630\u0651\u0631 \u0627\u0644\u0625\u0635\u0644\u0627\u062d \u2014 \u0633\u0623\u0641\u062a\u062d \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0627\u0644\u0628\u0644\u0648\u062a\u0648\u062b"

    .line 58
    iget-object v0, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0}, Lx/c;->access$500(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    iget-boolean v0, p0, Lx/c$1;->val$quietWhenNone:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0, v3}, Lx/c;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 63
    :goto_4
    return-void

    .line 60
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_7

    iget-boolean v1, p0, Lx/c$1;->val$quietWhenNone:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lx/c$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1, v3}, Lx/c;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_7
    invoke-static {v2}, Lx/c;->access$602(Z)Z

    .line 62
    throw v0
.end method

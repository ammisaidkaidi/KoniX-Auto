.class public final synthetic Lave;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavi;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lavi;I)V
    .locals 0

    iput p2, p0, Lave;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lave;->a:Lavi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 3
    iget v0, p0, Lave;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lave;->a:Lavi;

    iget-object v1, v0, Lavi;->i:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Lave;->a:Lavi;

    sget-object v1, Lavi;->a:Lcsz;

    invoke-virtual {v1}, Lcsv;->b()Lctq;

    move-result-object v1

    const-string v2, "com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager"

    const-string v3, "handlePairingTimeout"

    const/16 v4, 0x19f

    const-string v5, "BluetoothPeerManager.java"

    .line 1
    invoke-interface {v1, v2, v3, v4, v5}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object v1

    check-cast v1, Lcsx;

    const-string v2, "Timed out receiving BluetoothAuthenticationResult, denying pairing request"

    invoke-interface {v1, v2}, Lcsx;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lavi;->c(Z)V

    return-void

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lavi;->b()V

    .line 4
    monitor-exit v1

    return-void

    .line 2
    :catchall_0
    move-exception v0

    .line 4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

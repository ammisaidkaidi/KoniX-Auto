.class public final synthetic Lbdh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lbdq;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lbdq;I)V
    .locals 0

    iput p2, p0, Lbdh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbdh;->a:Lbdq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lbdh;->b:I

    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lbdh;->a:Lbdq;

    .line 7
    invoke-virtual {v0}, Lbdq;->f()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lbdh;->a:Lbdq;

    new-instance v1, Lbdh;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lbdh;-><init>(Lbdq;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v4, 0x64

    .line 3
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v2

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 6
    :cond_1
    check-cast v0, Ljava/net/InetAddress;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

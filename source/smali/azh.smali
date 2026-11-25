.class final Lazh;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Lazi;

.field private b:I


# direct methods
.method public constructor <init>(Lazi;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lazh;->a:Lazi;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput p1, p0, Lazh;->b:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p0, Lazh;->b:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lazh;->a:Lazi;

    iget-object v0, v0, Lazi;->c:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v1, Lckb;->a:Lckb;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbbl;->d(Lckb;I)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object v0, p0, Lazh;->a:Lazi;

    iget-object v0, v0, Lazi;->c:Lbah;

    .line 4
    invoke-virtual {v0}, Lbah;->x()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lazh;->a:Lazi;

    iget-object v0, v0, Lazi;->c:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    .line 5
    sget-object v1, Lckb;->a:Lckb;

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v1, v2}, Lbbl;->d(Lckb;I)V

    .line 7
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    iput p1, p0, Lazh;->b:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

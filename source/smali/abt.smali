.class final Labt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labw;

.field final synthetic b:Labx;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Labw;Labx;I)V
    .locals 0

    iput p3, p0, Labt;->c:I

    iput-object p1, p0, Labt;->a:Labw;

    iput-object p2, p0, Labt;->b:Labx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 4
    iget v0, p0, Labt;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Labt;->b:Labx;

    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Labt;->a:Labw;

    iget-object v2, v2, Labw;->a:Labz;

    iget-object v2, v2, Labz;->b:Lvb;

    .line 5
    invoke-virtual {v2, v0}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labe;

    if-eqz v0, :cond_1

    iget-object v2, v0, Labe;->g:Labx;

    .line 6
    invoke-virtual {v2}, Labx;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Labt;->b:Labx;

    .line 1
    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Labt;->a:Labw;

    iget-object v2, v2, Labw;->a:Labz;

    iget-object v2, v2, Labz;->b:Lvb;

    .line 2
    invoke-virtual {v2, v0}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labe;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void

    .line 6
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

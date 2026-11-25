.class final Lacu;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Lada;


# direct methods
.method public constructor <init>(Lada;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lacu;->a:Lada;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lacu;->a:Lada;

    .line 2
    invoke-virtual {p1}, Lada;->l()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

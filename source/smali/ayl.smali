.class final Layl;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Laym;


# direct methods
.method public constructor <init>(Laym;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Layl;->a:Laym;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Layl;->a:Laym;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    .line 2
    invoke-virtual {v0, p1}, Laym;->b(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.class public final Lcln;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/projection/protocol/GalReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 0

    iput-object p1, p0, Lcln;->a:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcln;->a:Lcom/google/android/projection/protocol/GalReceiver;

    iget-object v0, v0, Lcom/google/android/projection/protocol/GalReceiver;->f:Lbbh;

    iget-object v1, v0, Lbbh;->a:Lbbl;

    iget-object v1, v1, Lbbl;->i:Landroid/os/Handler;

    new-instance v2, Lbbf;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lbbf;-><init>(Lbbh;I[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

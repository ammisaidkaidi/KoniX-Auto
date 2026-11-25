.class public final Labc;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AAReceiverRootId"

    iput-object v0, p0, Labc;->a:Ljava/lang/String;

    iput-object p1, p0, Labc;->b:Landroid/os/Bundle;

    return-void
.end method

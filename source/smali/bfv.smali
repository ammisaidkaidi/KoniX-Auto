.class final Lbfv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltq;


# instance fields
.field final synthetic a:Lbfw;


# direct methods
.method public constructor <init>(Lbfw;)V
    .locals 0

    iput-object p1, p0, Lbfv;->a:Lbfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbfv;->a:Lbfw;

    iget-boolean v1, v0, Lbfw;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbfw;->a:Z

    invoke-virtual {v0}, Lbfw;->aT()Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/auto/aareceiver/ui/WaitingForConnectionActivity;

    :cond_0
    return-void
.end method

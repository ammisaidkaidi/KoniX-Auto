.class final Lclr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcly;

.field final synthetic b:Lclv;


# direct methods
.method public constructor <init>(Lclv;Lcly;)V
    .locals 0

    iput-object p1, p0, Lclr;->b:Lclv;

    iput-object p2, p0, Lclr;->a:Lcly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lclr;->b:Lclv;

    iget-object v0, v0, Lclv;->e:Lclt;

    iget-object v0, v0, Lclt;->a:Lclz;

    iget-object v1, p0, Lclr;->a:Lcly;

    invoke-virtual {v0, v1}, Lclz;->b(Lcly;)V

    iget-object v0, p0, Lclr;->b:Lclv;

    iget-object v0, v0, Lclv;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.class final Lmu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmz;

.field private final b:Lmx;


# direct methods
.method public constructor <init>(Lmz;Lmx;)V
    .locals 0

    iput-object p1, p0, Lmu;->a:Lmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmu;->b:Lmx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmu;->a:Lmz;

    iget-object v0, v0, Lmz;->c:Llo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Llo;->b:Llm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Llm;->I()V

    :cond_0
    iget-object v0, p0, Lmu;->a:Lmz;

    iget-object v0, v0, Lmz;->f:Lme;

    .line 2
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmu;->b:Lmx;

    invoke-virtual {v0}, Lma;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmu;->a:Lmz;

    iget-object v1, p0, Lmu;->b:Lmx;

    iput-object v1, v0, Lmz;->i:Lmx;

    :cond_1
    iget-object v0, p0, Lmu;->a:Lmz;

    const/4 v1, 0x0

    iput-object v1, v0, Lmz;->k:Lmu;

    return-void
.end method

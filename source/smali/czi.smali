.class final Lczi;
.super Lcyw;
.source "PG"


# instance fields
.field private c:Lczh;


# direct methods
.method public constructor <init>(Lcqa;ZLjava/util/concurrent/Executor;Lczb;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcyw;-><init>(Lcqa;ZZ)V

    new-instance p1, Lczf;

    .line 2
    invoke-direct {p1, p0, p4, p3}, Lczf;-><init>(Lczi;Lczb;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lczi;->c:Lczh;

    .line 3
    invoke-virtual {p0}, Lcyw;->r()V

    return-void
.end method

.method public constructor <init>(Lcqa;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcyw;-><init>(Lcqa;ZZ)V

    new-instance p1, Lczg;

    .line 5
    invoke-direct {p1, p0, p4, p3}, Lczg;-><init>(Lczi;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lczi;->c:Lczh;

    .line 6
    invoke-virtual {p0}, Lcyw;->r()V

    return-void
.end method

.method static bridge synthetic t(Lczi;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lczi;->c:Lczh;

    return-void
.end method


# virtual methods
.method protected final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lczi;->c:Lczh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldaf;->h()V

    :cond_0
    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lczi;->c:Lczh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lczh;->f()V

    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcyw;->s(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lczi;->c:Lczh;

    :cond_0
    return-void
.end method

.class final Ldav;
.super Ldaf;
.source "PG"


# instance fields
.field final synthetic a:Ldax;

.field private final b:Lczb;


# direct methods
.method public constructor <init>(Ldax;Lczb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldav;->a:Ldax;

    invoke-direct {p0}, Ldaf;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldav;->b:Lczb;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldav;->b:Lczb;

    invoke-interface {v0}, Lczb;->a()Ldag;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ldav;->b:Lczb;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldav;->a:Ldax;

    invoke-virtual {v0, p1}, Lcyp;->l(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ldag;

    iget-object v0, p0, Ldav;->a:Ldax;

    .line 2
    invoke-virtual {v0, p1}, Lcyp;->d(Ldag;)Z

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ldav;->a:Ldax;

    invoke-virtual {v0}, Lcyp;->isDone()Z

    move-result v0

    return v0
.end method

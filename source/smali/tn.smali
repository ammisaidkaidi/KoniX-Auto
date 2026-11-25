.class public final Ltn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltn;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ltn;->a:Ljava/util/ArrayDeque;

    iput-object p1, p0, Ltn;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltn;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltl;

    iget-boolean v2, v1, Ltl;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Ltl;->c:Lcr;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcr;->Z(Z)V

    iget-object v1, v0, Lcr;->e:Ltl;

    iget-boolean v1, v1, Ltl;->a:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcr;->U()Z

    return-void

    :cond_1
    iget-object v0, v0, Lcr;->d:Ltn;

    .line 6
    invoke-virtual {v0}, Ltn;->a()V

    return-void

    :cond_2
    iget-object v0, p0, Ltn;->b:Ljava/lang/Runnable;

    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

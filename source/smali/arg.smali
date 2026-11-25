.class public final synthetic Larg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field public final synthetic a:Larn;

.field public final synthetic b:[Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Larn;[Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larg;->a:Larn;

    iput-object p2, p0, Larg;->b:[Landroid/view/View;

    iput p3, p0, Larg;->c:I

    iput-object p4, p0, Larg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Larg;->a:Larn;

    iget-object v1, p0, Larg;->b:[Landroid/view/View;

    iget v2, p0, Larg;->c:I

    iget-object v3, p0, Larg;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Landroid/view/View;

    monitor-enter v0

    :try_start_0
    iget-object v4, v0, Larn;->h:[Landroid/view/View;

    if-eq v1, v4, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    aput-object p1, v1, v2

    .line 3
    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    array-length v2, v1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_1

    .line 4
    aget-object v3, v1, p1

    iget-object v4, v0, Larn;->a:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

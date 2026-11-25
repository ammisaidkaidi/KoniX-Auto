.class public final synthetic Lbac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lj$/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:Lbah;


# direct methods
.method public synthetic constructor <init>(Lbah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbac;->a:Lbah;

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Lj$/util/function/Function;)Lj$/util/function/BiFunction;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lbac;->a:Lbah;

    check-cast p1, Lbaf;

    check-cast p2, Lbaf;

    invoke-virtual {p2}, Lbaf;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lbaf;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lbaf;->d:I

    iget v2, p1, Lbaf;->d:I

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lbah;->c:Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4
    invoke-virtual {p2}, Lbaf;->a()V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lbaf;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p2}, Lbaf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget v0, p2, Lbaf;->d:I

    iput v0, p1, Lbaf;->d:I

    :cond_1
    iget-boolean v0, p1, Lbaf;->c:Z

    .line 8
    iget-boolean v1, p2, Lbaf;->c:Z

    or-int/2addr v0, v1

    iput-boolean v0, p1, Lbaf;->c:Z

    iget-boolean v0, p1, Lbaf;->b:Z

    .line 9
    iget-boolean v1, p2, Lbaf;->b:Z

    or-int/2addr v0, v1

    iput-boolean v0, p1, Lbaf;->b:Z

    sget-object v0, Lbah;->b:Lcqh;

    .line 10
    iget v1, p2, Lbaf;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcqh;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lbah;->b:Lcqh;

    iget v2, p1, Lbaf;->f:I

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcqh;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 12
    iget p2, p2, Lbaf;->f:I

    iput p2, p1, Lbaf;->f:I

    :cond_2
    return-object p1
.end method

.class public final Lcpw;
.super Lcqi;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcqi;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcqi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcpy;
    .locals 3

    .line 1
    iget v0, p0, Lcpw;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lcry;->a:Lcry;

    return-object v0

    :cond_0
    new-instance v1, Lcry;

    iget-object v2, p0, Lcpw;->a:[Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcry;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public final synthetic b()Lcqk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpw;->a()Lcpy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lcqk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcpw;->a()Lcpy;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcqi;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

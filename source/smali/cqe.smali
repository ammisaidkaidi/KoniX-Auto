.class final Lcqe;
.super Lcqh;
.source "PG"


# instance fields
.field private final transient a:Lcqh;


# direct methods
.method public constructor <init>(Lcqh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcqh;-><init>()V

    iput-object p1, p0, Lcqe;->a:Lcqh;

    return-void
.end method

.method private final w(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqe;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private final x(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqe;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcqe;->a:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcqe;->a:Lcqh;

    invoke-virtual {v0}, Lcqh;->f()Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqe;->size()I

    move-result v0

    invoke-static {p1, v0}, Lex;->v(II)V

    iget-object v0, p0, Lcqe;->a:Lcqh;

    .line 2
    invoke-direct {p0, p1}, Lcqe;->w(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lcqh;
    .locals 1

    iget-object v0, p0, Lcqe;->a:Lcqh;

    return-object v0
.end method

.method public final i(II)Lcqh;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcqe;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lex;->q(III)V

    iget-object v0, p0, Lcqe;->a:Lcqh;

    .line 2
    invoke-direct {p0, p2}, Lcqe;->x(I)I

    move-result p2

    invoke-direct {p0, p1}, Lcqe;->x(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcqh;->i(II)Lcqh;

    move-result-object p1

    invoke-virtual {p1}, Lcqh;->h()Lcqh;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcqe;->a:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcqe;->w(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcqe;->a:Lcqh;

    invoke-virtual {v0, p1}, Lcqh;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcqe;->w(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcqe;->a:Lcqh;

    invoke-virtual {v0}, Lcqh;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcqh;->i(II)Lcqh;

    move-result-object p1

    return-object p1
.end method

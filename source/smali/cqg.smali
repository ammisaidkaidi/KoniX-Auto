.class final Lcqg;
.super Lcqh;
.source "PG"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcqh;


# direct methods
.method public constructor <init>(Lcqh;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcqg;->c:Lcqh;

    invoke-direct {p0}, Lcqh;-><init>()V

    iput p2, p0, Lcqg;->a:I

    iput p3, p0, Lcqg;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcqg;->c:Lcqh;

    invoke-virtual {v0}, Lcqa;->c()I

    move-result v0

    iget v1, p0, Lcqg;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcqg;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcqg;->c:Lcqh;

    invoke-virtual {v0}, Lcqa;->c()I

    move-result v0

    iget v1, p0, Lcqg;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcqg;->c:Lcqh;

    invoke-virtual {v0}, Lcqa;->g()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcqg;->b:I

    invoke-static {p1, v0}, Lex;->v(II)V

    iget-object v0, p0, Lcqg;->c:Lcqh;

    iget v1, p0, Lcqg;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcqh;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(II)Lcqh;
    .locals 2

    .line 1
    iget v0, p0, Lcqg;->b:I

    invoke-static {p1, p2, v0}, Lex;->q(III)V

    iget-object v0, p0, Lcqg;->c:Lcqh;

    iget v1, p0, Lcqg;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcqh;->i(II)Lcqh;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcqg;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcqh;->i(II)Lcqh;

    move-result-object p1

    return-object p1
.end method

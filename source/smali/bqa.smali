.class final Lbqa;
.super Lvh;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Ldlt;->a:Ldlt;

    .line 2
    invoke-virtual {v0}, Ldlt;->b()Ldlu;

    move-result-object v0

    invoke-interface {v0}, Ldlu;->a()J

    move-result-wide v0

    long-to-int v1, v0

    .line 1
    invoke-direct {p0, v1}, Lvh;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lbpa;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p2, Lbpa;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p2, Lbpa;->d:[B

    iget-object v1, p2, Lbpa;->e:[[B

    .line 3
    invoke-static {v1}, Lbpa;->a([[B)I

    move-result v1

    iget-object v2, p2, Lbpa;->f:[[B

    .line 4
    invoke-static {v2}, Lbpa;->a([[B)I

    move-result v2

    iget-object v3, p2, Lbpa;->g:[[B

    .line 5
    invoke-static {v3}, Lbpa;->a([[B)I

    move-result v3

    iget-object v4, p2, Lbpa;->h:[[B

    .line 6
    invoke-static {v4}, Lbpa;->a([[B)I

    move-result v4

    iget-object v5, p2, Lbpa;->j:[[B

    .line 7
    const/4 v5, 0x0

    invoke-static {v5}, Lbpa;->a([[B)I

    move-result v5

    iget-object v6, p2, Lbpa;->i:[I

    iget-object p2, p2, Lbpa;->k:[I

    add-int/2addr p1, p1

    add-int/2addr v0, v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    add-int/2addr p1, v0

    return p1
.end method

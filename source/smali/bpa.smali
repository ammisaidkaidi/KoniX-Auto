.class public final Lbpa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[[B

.field public static final b:Lbpa;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:[[B

.field public final f:[[B

.field public final g:[[B

.field public final h:[[B

.field public final i:[I

.field public final j:[[B

.field public final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lbpa;->a:[[B

    new-instance v1, Lbpa;

    invoke-direct {v1, v0, v0, v0, v0}, Lbpa;-><init>([[B[[B[[B[[B)V

    sput-object v1, Lbpa;->b:Lbpa;

    return-void
.end method

.method public constructor <init>([[B[[B[[B[[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbpa;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbpa;->d:[B

    iput-object p1, p0, Lbpa;->e:[[B

    iput-object p2, p0, Lbpa;->f:[[B

    iput-object p3, p0, Lbpa;->g:[[B

    iput-object p4, p0, Lbpa;->h:[[B

    iput-object v0, p0, Lbpa;->i:[I

    iput-object v0, p0, Lbpa;->j:[[B

    iput-object v0, p0, Lbpa;->k:[I

    return-void
.end method

.method public static a([[B)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public static b([[B)V
    .locals 0

    .line 1
    nop

    .line 3
    return-void
.end method

.method private static c([[B)Ljava/util/List;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object p0
.end method

.method private static d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    .line 3
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    nop

    .line 4
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    nop

    .line 11
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lbpa;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lbpa;

    iget-object v0, p0, Lbpa;->c:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lbpa;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbpa;->d:[B

    .line 4
    const/4 v0, 0x0

    invoke-static {v0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbpa;->e:[[B

    .line 5
    invoke-static {v2}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lbpa;->e:[[B

    .line 6
    invoke-static {v3}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbpa;->f:[[B

    .line 8
    invoke-static {v2}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lbpa;->f:[[B

    .line 9
    invoke-static {v3}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbpa;->g:[[B

    .line 11
    invoke-static {v2}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lbpa;->g:[[B

    .line 12
    invoke-static {v3}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbpa;->h:[[B

    .line 14
    invoke-static {v2}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lbpa;->h:[[B

    .line 15
    invoke-static {v3}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-static {v2, v3}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 18
    iget-object v3, p1, Lbpa;->i:[I

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 19
    invoke-static {v2, v3}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-static {v0}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lbpa;->j:[[B

    .line 21
    invoke-static {v0}, Lbpa;->c([[B)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-static {v2, v0}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 24
    iget-object p1, p1, Lbpa;->k:[I

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lqx;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbpa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ", direct==null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbpa;->e:[[B

    .line 5
    const-string v2, "GAIA="

    invoke-static {v0, v2, v1}, Lbpa;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 6
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbpa;->f:[[B

    .line 7
    const-string v3, "PSEUDO="

    invoke-static {v0, v3, v2}, Lbpa;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbpa;->g:[[B

    .line 9
    const-string v3, "ALWAYS="

    invoke-static {v0, v3, v2}, Lbpa;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbpa;->h:[[B

    .line 11
    const-string v3, "OTHER="

    invoke-static {v0, v3, v2}, Lbpa;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 12
    const-string v2, ", weak="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "directs="

    invoke-static {v0, v1, v2}, Lbpa;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 16
    const-string v1, ", genDims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

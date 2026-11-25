.class public final Lbol;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:[[B

.field public final d:[[B

.field public final e:[[B

.field public final f:[[B

.field public final g:[I

.field public final h:[[B

.field public final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbmt;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lbmt;-><init>(I)V

    sput-object v0, Lbol;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbol;->a:Ljava/lang/String;

    iput-object p2, p0, Lbol;->b:[B

    iput-object p3, p0, Lbol;->c:[[B

    iput-object p4, p0, Lbol;->d:[[B

    iput-object p5, p0, Lbol;->e:[[B

    iput-object p6, p0, Lbol;->f:[[B

    iput-object p7, p0, Lbol;->g:[I

    iput-object p8, p0, Lbol;->h:[[B

    iput-object p9, p0, Lbol;->i:[I

    return-void
.end method

.method private static a([I)Ljava/util/List;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget v3, p0, v2

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static b([[B)Ljava/util/List;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 5
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static c([I)Ljava/util/List;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    shr-int/lit8 v0, v0, 0x1

    .line 2
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    new-instance v2, Lboq;

    .line 3
    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    invoke-direct {v2, v3, v4}, Lboq;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private static d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 5

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

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 5
    aget-object v3, p2, v2

    if-nez v1, :cond_1

    .line 6
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    nop

    .line 7
    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v3}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    .line 9
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    nop

    .line 11
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lbol;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lbol;

    iget-object v0, p0, Lbol;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lbol;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->b:[B

    iget-object v2, p1, Lbol;->b:[B

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->c:[[B

    .line 5
    invoke-static {v0}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbol;->c:[[B

    .line 6
    invoke-static {v2}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->d:[[B

    .line 8
    invoke-static {v0}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbol;->d:[[B

    .line 9
    invoke-static {v2}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->e:[[B

    .line 11
    invoke-static {v0}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbol;->e:[[B

    .line 12
    invoke-static {v2}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->f:[[B

    .line 14
    invoke-static {v0}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbol;->f:[[B

    .line 15
    invoke-static {v2}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v2

    .line 16
    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->g:[I

    .line 17
    invoke-static {v0}, Lbol;->a([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbol;->g:[I

    invoke-static {v2}, Lbol;->a([I)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->h:[[B

    .line 19
    invoke-static {v0}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lbol;->h:[[B

    .line 20
    invoke-static {v2}, Lbol;->b([[B)Ljava/util/List;

    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbol;->i:[I

    .line 22
    invoke-static {v0}, Lbol;->c([I)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lbol;->i:[I

    .line 23
    invoke-static {p1}, Lbol;->c([I)Ljava/util/List;

    move-result-object p1

    .line 24
    invoke-static {v0, p1}, Lqs;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbol;->a:Ljava/lang/String;

    const-string v2, "null"

    const-string v3, "\'"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 8
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    .line 3
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbol;->b:[B

    .line 4
    const-string v4, ", direct=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 23
    :cond_1
    nop

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 7
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_1
    nop

    .line 9
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbol;->c:[[B

    .line 10
    const-string v3, "GAIA="

    invoke-static {v0, v3, v2}, Lbol;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbol;->d:[[B

    .line 12
    const-string v3, "PSEUDO="

    invoke-static {v0, v3, v2}, Lbol;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbol;->e:[[B

    .line 14
    const-string v3, "ALWAYS="

    invoke-static {v0, v3, v2}, Lbol;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbol;->f:[[B

    .line 16
    const-string v3, "OTHER="

    invoke-static {v0, v3, v2}, Lbol;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 17
    const-string v2, ", weak="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbol;->g:[I

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbol;->h:[[B

    .line 20
    const-string v2, "directs="

    invoke-static {v0, v2, v1}, Lbol;->d(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    .line 21
    const-string v1, ", genDims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbol;->i:[I

    .line 22
    invoke-static {v1}, Lbol;->c([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbol;->a:Ljava/lang/String;

    .line 2
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lio;->s(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lbol;->b:[B

    .line 3
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lio;->n(Landroid/os/Parcel;I[B)V

    iget-object v0, p0, Lbol;->c:[[B

    .line 4
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lio;->o(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lbol;->d:[[B

    .line 5
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lio;->o(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lbol;->e:[[B

    .line 6
    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lio;->o(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lbol;->f:[[B

    .line 7
    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lio;->o(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lbol;->g:[I

    .line 8
    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lio;->q(Landroid/os/Parcel;I[I)V

    iget-object v0, p0, Lbol;->h:[[B

    .line 9
    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lio;->o(Landroid/os/Parcel;I[[B)V

    iget-object v0, p0, Lbol;->i:[I

    .line 10
    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lio;->q(Landroid/os/Parcel;I[I)V

    .line 11
    invoke-static {p1, p2}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method

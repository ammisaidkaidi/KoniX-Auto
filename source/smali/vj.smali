.class public final Lvj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Z

.field public c:[I

.field public d:[Ljava/lang/Object;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvj;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvj;->b:Z

    const/16 v0, 0xa

    invoke-static {v0}, Lve;->d(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lvj;->c:[I

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lvj;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvj;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvj;->f()V

    :cond_0
    iget-object v0, p0, Lvj;->c:[I

    .line 2
    aget p1, v0, p1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvj;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvj;->f()V

    :cond_0
    iget v0, p0, Lvj;->e:I

    return v0
.end method

.method public final c()Lvj;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj;

    iget-object v1, p0, Lvj;->c:[I

    .line 2
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lvj;->c:[I

    iget-object v1, p0, Lvj;->d:[Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lvj;->d:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    return-object v0

    .line 3
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvj;->c()Lvj;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvj;->c:[I

    iget v1, p0, Lvj;->e:I

    invoke-static {v0, v1, p1}, Lve;->a([III)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lvj;->d:[Ljava/lang/Object;

    .line 2
    aget-object v1, v0, p1

    sget-object v2, Lvj;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    .line 2
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvj;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvj;->f()V

    :cond_0
    iget-object v0, p0, Lvj;->d:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final f()V
    .locals 8

    .line 1
    iget v0, p0, Lvj;->e:I

    iget-object v1, p0, Lvj;->c:[I

    iget-object v2, p0, Lvj;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v6, v2, v4

    sget-object v7, Lvj;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-eq v4, v5, :cond_0

    .line 2
    aget v7, v1, v4

    aput v7, v1, v5

    .line 3
    aput-object v6, v2, v5

    const/4 v6, 0x0

    .line 4
    aput-object v6, v2, v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lvj;->b:Z

    iput v5, p0, Lvj;->e:I

    return-void
.end method

.method public final g(ILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lvj;->c:[I

    iget v1, p0, Lvj;->e:I

    invoke-static {v0, v1, p1}, Lve;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lvj;->d:[Ljava/lang/Object;

    .line 2
    aput-object p2, p1, v0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lvj;->e:I

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lvj;->d:[Ljava/lang/Object;

    .line 3
    aget-object v3, v2, v0

    sget-object v4, Lvj;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lvj;->c:[I

    .line 16
    aput p1, v1, v0

    .line 17
    aput-object p2, v2, v0

    return-void

    .line 3
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lvj;->b:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lvj;->c:[I

    .line 4
    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lvj;->f()V

    iget-object v0, p0, Lvj;->c:[I

    iget v1, p0, Lvj;->e:I

    .line 6
    invoke-static {v0, v1, p1}, Lve;->a([III)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_3
    iget v1, p0, Lvj;->e:I

    iget-object v2, p0, Lvj;->c:[I

    .line 7
    array-length v2, v2

    if-lt v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lve;->d(I)I

    move-result v1

    .line 8
    new-array v2, v1, [I

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lvj;->c:[I

    .line 10
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lvj;->d:[Ljava/lang/Object;

    .line 11
    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lvj;->c:[I

    iput-object v1, p0, Lvj;->d:[Ljava/lang/Object;

    :cond_4
    iget v1, p0, Lvj;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_5

    iget-object v2, p0, Lvj;->c:[I

    add-int/lit8 v3, v0, 0x1

    .line 12
    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lvj;->d:[Ljava/lang/Object;

    iget v2, p0, Lvj;->e:I

    sub-int/2addr v2, v0

    .line 13
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v1, p0, Lvj;->c:[I

    .line 14
    aput p1, v1, v0

    iget-object p1, p0, Lvj;->d:[Ljava/lang/Object;

    .line 15
    aput-object p2, p1, v0

    iget p1, p0, Lvj;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvj;->e:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lvj;->b()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lvj;->e:I

    mul-int/lit8 v1, v1, 0x1c

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lvj;->e:I

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_1

    .line 4
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lvj;->a(I)I

    move-result v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0, v1}, Lvj;->e(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    nop

    .line 10
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    const/16 v1, 0x7d

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

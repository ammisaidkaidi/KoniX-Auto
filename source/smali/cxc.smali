.class public final Lcxc;
.super Ljava/io/OutputStream;
.source "PG"


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Ljava/io/Writer;

.field final synthetic e:Lcxd;


# direct methods
.method public constructor <init>(Lcxd;Ljava/io/Writer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcxc;->e:Lcxd;

    iput-object p2, p0, Lcxc;->d:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcxc;->a:I

    iput p1, p0, Lcxc;->b:I

    iput p1, p0, Lcxc;->c:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget v0, p0, Lcxc;->b:I

    if-lez v0, :cond_0

    iget v1, p0, Lcxc;->a:I

    iget-object v2, p0, Lcxc;->e:Lcxd;

    iget-object v2, v2, Lcxd;->b:Lcwz;

    iget v3, v2, Lcwz;->d:I

    iget v4, v2, Lcwz;->c:I

    iget-object v5, p0, Lcxc;->d:Ljava/io/Writer;

    sub-int/2addr v3, v0

    shl-int v0, v1, v3

    and-int/2addr v0, v4

    invoke-virtual {v2, v0}, Lcwz;->a(I)C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcxc;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcxc;->c:I

    iget-object v0, p0, Lcxc;->e:Lcxd;

    iget-object v0, v0, Lcxd;->c:Ljava/lang/Character;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lcxc;->c:I

    iget-object v1, p0, Lcxc;->e:Lcxd;

    iget-object v2, v1, Lcxd;->b:Lcwz;

    iget v2, v2, Lcwz;->e:I

    .line 2
    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxc;->d:Ljava/io/Writer;

    iget-object v1, v1, Lcxd;->c:Ljava/lang/Character;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcxc;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcxc;->c:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcxc;->d:Ljava/io/Writer;

    .line 4
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcxc;->d:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcxc;->a:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lcxc;->a:I

    iget p1, p0, Lcxc;->b:I

    add-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Lcxc;->b:I

    iget p1, p0, Lcxc;->b:I

    iget-object v0, p0, Lcxc;->e:Lcxd;

    iget-object v0, v0, Lcxd;->b:Lcwz;

    iget v1, v0, Lcwz;->d:I

    if-lt p1, v1, :cond_0

    iget v2, p0, Lcxc;->a:I

    iget v3, v0, Lcwz;->c:I

    iget-object v4, p0, Lcxc;->d:Ljava/io/Writer;

    sub-int/2addr p1, v1

    shr-int p1, v2, p1

    and-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcwz;->a(I)C

    move-result p1

    invoke-virtual {v4, p1}, Ljava/io/Writer;->write(I)V

    iget p1, p0, Lcxc;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcxc;->c:I

    iget p1, p0, Lcxc;->b:I

    iget-object v0, p0, Lcxc;->e:Lcxd;

    iget-object v0, v0, Lcxd;->b:Lcwz;

    iget v0, v0, Lcwz;->d:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

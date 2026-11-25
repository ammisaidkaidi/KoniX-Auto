.class public final Lcxa;
.super Lcxd;
.source "PG"


# instance fields
.field final a:[C


# direct methods
.method public constructor <init>(Lcwz;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcxd;-><init>(Lcwz;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcxa;->a:[C

    iget-object v0, p1, Lcwz;->b:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lex;->l(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcxa;->a:[C

    ushr-int/lit8 v2, v1, 0x4

    .line 3
    invoke-virtual {p1, v2}, Lcwz;->a(I)C

    move-result v2

    aput-char v2, v0, v1

    iget-object v0, p0, Lcxa;->a:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    .line 4
    invoke-virtual {p1, v3}, Lcwz;->a(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

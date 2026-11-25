.class public final Laaq;
.super Laaf;
.source "PG"


# static fields
.field public static final a:Laag;


# instance fields
.field public final b:Lvj;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laap;-><init>(I)V

    sput-object v0, Laaq;->a:Laag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Laaf;-><init>()V

    new-instance v0, Lvj;

    .line 2
    invoke-direct {v0}, Lvj;-><init>()V

    iput-object v0, p0, Laaq;->b:Lvj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laaq;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laaq;->c:Z

    return-void
.end method

.method public final b()Laan;
    .locals 2

    .line 1
    iget-object v0, p0, Laaq;->b:Lvj;

    const v1, 0xd431

    invoke-virtual {v0, v1}, Lvj;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laan;

    return-object v0
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Laaq;->b:Lvj;

    invoke-virtual {v0}, Lvj;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Laaq;->b:Lvj;

    .line 2
    invoke-virtual {v3, v2}, Lvj;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laan;

    .line 3
    invoke-virtual {v3}, Laan;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laaq;->b:Lvj;

    iget v2, v0, Lvj;->e:I

    iget-object v3, v0, Lvj;->d:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    .line 4
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v1, v0, Lvj;->e:I

    iput-boolean v1, v0, Lvj;->b:Z

    return-void
.end method

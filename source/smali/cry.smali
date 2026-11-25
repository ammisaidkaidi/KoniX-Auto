.class public final Lcry;
.super Lcpy;
.source "PG"


# static fields
.field static final a:Lcry;


# instance fields
.field final transient b:[Ljava/lang/Object;

.field public final transient c:Lcry;

.field private final transient d:Ljava/lang/Object;

.field private final transient e:I

.field private final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcry;

    invoke-direct {v0}, Lcry;-><init>()V

    sput-object v0, Lcry;->a:Lcry;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcpy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcry;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcry;->b:[Ljava/lang/Object;

    iput v0, p0, Lcry;->e:I

    iput v0, p0, Lcry;->f:I

    iput-object p0, p0, Lcry;->c:Lcry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;ILcry;)V
    .locals 0

    invoke-direct {p0}, Lcpy;-><init>()V

    iput-object p1, p0, Lcry;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcry;->b:[Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcry;->e:I

    iput p3, p0, Lcry;->f:I

    iput-object p4, p0, Lcry;->c:Lcry;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcpy;-><init>()V

    iput-object p1, p0, Lcry;->b:[Ljava/lang/Object;

    iput p2, p0, Lcry;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcry;->e:I

    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    invoke-static {p2}, Lcqw;->j(I)I

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    nop

    .line 2
    invoke-static {p1, p2, v1, v0}, Lcse;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcry;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, v1, v0}, Lcse;->d([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcry;

    invoke-direct {v1, v0, p1, p2, p0}, Lcry;-><init>(Ljava/lang/Object;[Ljava/lang/Object;ILcry;)V

    iput-object v1, p0, Lcry;->c:Lcry;

    return-void
.end method


# virtual methods
.method public final a()Lcpy;
    .locals 1

    iget-object v0, p0, Lcry;->c:Lcry;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcry;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcry;->b:[Ljava/lang/Object;

    iget v2, p0, Lcry;->f:I

    iget v3, p0, Lcry;->e:I

    invoke-static {v0, v1, v2, v3, p1}, Lcse;->m(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final i()Lcqw;
    .locals 4

    .line 1
    new-instance v0, Lcsb;

    iget-object v1, p0, Lcry;->b:[Ljava/lang/Object;

    iget v2, p0, Lcry;->e:I

    iget v3, p0, Lcry;->f:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcsb;-><init>(Lcqk;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final j()Lcqw;
    .locals 4

    .line 1
    new-instance v0, Lcsd;

    iget-object v1, p0, Lcry;->b:[Ljava/lang/Object;

    iget v2, p0, Lcry;->e:I

    iget v3, p0, Lcry;->f:I

    invoke-direct {v0, v1, v2, v3}, Lcsd;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcsc;

    .line 2
    invoke-direct {v1, p0, v0}, Lcsc;-><init>(Lcqk;Lcqh;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcry;->f:I

    return v0
.end method

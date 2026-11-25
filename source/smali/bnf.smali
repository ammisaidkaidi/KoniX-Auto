.class public final Lbnf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public b:Lbje;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lbjd;->a:Lbjd;

    .line 2
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lbje;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lbnf;->a:Landroid/util/SparseIntArray;

    .line 4
    invoke-static {p1}, Lhr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lbnf;->b:Lbje;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbnf;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lbnf;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

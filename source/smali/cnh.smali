.class final Lcnh;
.super Lcni;
.source "PG"


# static fields
.field static final a:Lcni;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcnh;

    new-instance v1, Lvi;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lvi;-><init>(I)V

    invoke-direct {v0, v1}, Lcnh;-><init>(Lvi;)V

    iget-boolean v1, v0, Lcni;->b:Z

    if-nez v1, :cond_0

    .line 2
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcni;->b:Z

    sput-object v0, Lcnh;->a:Lcni;

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v1, "Already frozen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lvi;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcni;-><init>(Lvi;)V

    return-void
.end method

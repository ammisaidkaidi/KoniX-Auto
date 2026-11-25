.class public final Lcjd;
.super Lcjr;
.source "PG"


# static fields
.field public static final a:Lcjr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcjd;

    invoke-direct {v0}, Lcjd;-><init>()V

    sput-object v0, Lcjd;->a:Lcjr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcjr;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcit;Ljava/lang/String;Ljava/util/concurrent/Executor;Lchm;)Lcjq;
    .locals 10

    .line 1
    iget-boolean v0, p1, Lcit;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ldcz;->b()Ldcz;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v0

    .line 1
    :goto_0
    iget-object v1, p1, Lcit;->b:Lder;

    new-instance v5, Lcjw;

    .line 3
    invoke-direct {v5, v1, v0}, Lcjw;-><init>(Lder;Ldcz;)V

    new-instance v0, Lcjf;

    iget-object v1, p1, Lcit;->a:Landroid/net/Uri;

    .line 4
    invoke-static {v1}, Lhh;->j(Ljava/lang/Object;)Ldag;

    move-result-object v4

    iget-object v8, p1, Lcit;->c:Lcim;

    iget-boolean p1, p1, Lcit;->f:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcnd;->d()Lcnd;

    move-result-object p1

    move-object v9, p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcnd;->c()Lcnd;

    move-result-object p1

    move-object v9, p1

    :goto_1
    move-object v2, v0

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v9}, Lcjf;-><init>(Ljava/lang/String;Ldag;Lcjw;Ljava/util/concurrent/Executor;Lchm;Lcim;Lcnd;)V

    return-object v0
.end method

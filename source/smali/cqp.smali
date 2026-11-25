.class final Lcqp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Lcsj;

.field static final b:Lcsj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcqq;

    const-string v1, "map"

    invoke-static {v0, v1}, Lfw;->m(Ljava/lang/Class;Ljava/lang/String;)Lcsj;

    move-result-object v0

    sput-object v0, Lcqp;->a:Lcsj;

    const-class v0, Lcqq;

    .line 2
    const-string v1, "size"

    invoke-static {v0, v1}, Lfw;->m(Ljava/lang/Class;Ljava/lang/String;)Lcsj;

    move-result-object v0

    sput-object v0, Lcqp;->b:Lcsj;

    return-void
.end method

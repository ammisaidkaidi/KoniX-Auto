.class final Lcfe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ldgc;->i:Ldgc;

    sget-object v1, Ldgc;->k:Ldgc;

    .line 2
    sget-object v2, Lcfb;->d:Lcfb;

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Ldel;->b(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)Ldel;

    move-result-object v0

    sput-object v0, Lcfe;->a:Ldel;

    return-void
.end method

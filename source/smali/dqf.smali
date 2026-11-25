.class final Ldqf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ldgc;->c:Ldgc;

    .line 2
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ldgc;->k:Ldgc;

    .line 3
    sget-object v3, Ldqc;->e:Ldqc;

    invoke-static {v0, v1, v2, v3}, Ldel;->b(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)Ldel;

    move-result-object v0

    sput-object v0, Ldqf;->a:Ldel;

    return-void
.end method

.class final Ldpe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ldgc;->e:Ldgc;

    .line 2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ldgc;->c:Ldgc;

    .line 3
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ldel;->b(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)Ldel;

    move-result-object v0

    sput-object v0, Ldpe;->a:Ldel;

    return-void
.end method

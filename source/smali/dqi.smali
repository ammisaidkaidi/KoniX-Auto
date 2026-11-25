.class final Ldqi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ldel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ldgc;->e:Ldgc;

    .line 2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ldgc;->e:Ldgc;

    invoke-static {v0, v1, v2, v1}, Ldel;->b(Ldgc;Ljava/lang/Object;Ldgc;Ljava/lang/Object;)Ldel;

    move-result-object v0

    sput-object v0, Ldqi;->a:Ldel;

    return-void
.end method

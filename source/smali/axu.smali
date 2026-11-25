.class public final Laxu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxu;->a:Ldny;

    return-void
.end method

.method public static c(Landroid/content/Context;)Ldhq;
    .locals 2

    new-instance v0, Ldhq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Ldhq;-><init>(Landroid/content/Context;[B[C)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laxu;->b()Ldhq;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ldhq;
    .locals 1

    .line 1
    iget-object v0, p0, Laxu;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxu;->c(Landroid/content/Context;)Ldhq;

    move-result-object v0

    return-object v0
.end method

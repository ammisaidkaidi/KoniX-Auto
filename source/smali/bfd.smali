.class public final Lbfd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfd;->a:Ldny;

    iput-object p2, p0, Lbfd;->b:Ldny;

    return-void
.end method

.method public static c(Landroid/content/Context;Lj$/util/Optional;)Lbfc;
    .locals 1

    new-instance v0, Lbfc;

    invoke-direct {v0, p0, p1}, Lbfc;-><init>(Landroid/content/Context;Lj$/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbfd;->b()Lbfc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbfc;
    .locals 2

    .line 1
    iget-object v0, p0, Lbfd;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbfd;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/Optional;

    invoke-static {v0, v1}, Lbfd;->c(Landroid/content/Context;Lj$/util/Optional;)Lbfc;

    move-result-object v0

    return-object v0
.end method

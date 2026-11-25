.class public final Lbru;
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

    iput-object p1, p0, Lbru;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbru;->b()Lcor;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcor;
    .locals 1

    .line 1
    iget-object v0, p0, Lbru;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    new-instance v0, Lbrt;

    invoke-direct {v0}, Lbrt;-><init>()V

    return-object v0
.end method

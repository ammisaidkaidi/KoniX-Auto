.class public final Lcbt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;

.field private final b:Ldny;

.field private final c:Ldny;


# direct methods
.method public constructor <init>(Ldny;Ldny;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcbt;->a:Ldny;

    iput-object p2, p0, Lcbt;->b:Ldny;

    iput-object p3, p0, Lcbt;->c:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcbt;->b()Lcbs;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcbs;
    .locals 3

    .line 1
    iget-object v0, p0, Lcbt;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcbt;->b:Ldny;

    invoke-interface {v1}, Ldny;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxr;

    iget-object v1, p0, Lcbt;->c:Ldny;

    new-instance v2, Lcbs;

    invoke-direct {v2, v0, v1}, Lcbs;-><init>(Landroid/content/Context;Ldny;)V

    return-object v2
.end method

.class public final Lcbq;
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

    iput-object p1, p0, Lcbq;->a:Ldny;

    iput-object p2, p0, Lcbq;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcbq;->b()Lcbp;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcbp;
    .locals 3

    .line 1
    iget-object v0, p0, Lcbq;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcbq;->b:Ldny;

    new-instance v2, Lcbp;

    invoke-direct {v2, v0, v1}, Lcbp;-><init>(Landroid/content/Context;Ldny;)V

    return-object v2
.end method

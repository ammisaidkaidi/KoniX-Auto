.class public final Lbzf;
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

    iput-object p1, p0, Lbzf;->a:Ldny;

    iput-object p2, p0, Lbzf;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbzf;->b()Lbze;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbze;
    .locals 3

    .line 1
    iget-object v0, p0, Lbzf;->a:Ldny;

    iget-object v1, p0, Lbzf;->b:Ldny;

    check-cast v1, Ldhr;

    invoke-virtual {v1}, Ldhr;->b()Landroid/content/Context;

    move-result-object v1

    .line 2
    new-instance v2, Lbze;

    invoke-direct {v2, v0, v1}, Lbze;-><init>(Ldny;Landroid/content/Context;)V

    return-object v2
.end method

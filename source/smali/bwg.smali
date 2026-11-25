.class public final Lbwg;
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

    iput-object p1, p0, Lbwg;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbwg;->b()Lbwf;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbwf;
    .locals 2

    .line 1
    iget-object v0, p0, Lbwg;->a:Ldny;

    check-cast v0, Ldhr;

    invoke-virtual {v0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbwf;

    .line 2
    invoke-direct {v1, v0}, Lbwf;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

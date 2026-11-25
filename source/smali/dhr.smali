.class public final Ldhr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldhq;


# direct methods
.method public constructor <init>(Ldhq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhr;->a:Ldhq;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldhr;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ldhr;->a:Ldhq;

    iget-object v0, v0, Ldhq;->a:Landroid/content/Context;

    return-object v0
.end method

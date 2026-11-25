.class public final Lbyi;
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

    iput-object p1, p0, Lbyi;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbyi;->b()Lbyh;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbyh;
    .locals 1

    .line 1
    iget-object v0, p0, Lbyi;->a:Ldny;

    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxr;

    .line 2
    new-instance v0, Lbyh;

    invoke-direct {v0}, Lbyh;-><init>()V

    return-object v0
.end method

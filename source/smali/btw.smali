.class public final Lbtw;
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

    iput-object p1, p0, Lbtw;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbtw;->b()Lbtz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbtz;
    .locals 2

    .line 1
    iget-object v0, p0, Lbtw;->a:Ldny;

    check-cast v0, Lbtv;

    invoke-virtual {v0}, Lbtv;->b()Lbua;

    move-result-object v0

    .line 2
    new-instance v1, Lbtz;

    invoke-direct {v1, v0}, Lbtz;-><init>(Lbua;)V

    return-object v1
.end method

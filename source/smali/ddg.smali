.class public final Lddg;
.super Ldbx;
.source "PG"


# instance fields
.field private final a:Lddk;


# direct methods
.method public constructor <init>(Lddk;)V
    .locals 0

    invoke-direct {p0}, Ldbx;-><init>()V

    iput-object p1, p0, Lddg;->a:Lddk;

    return-void
.end method


# virtual methods
.method public final bridge synthetic e([BILdcz;)Lder;
    .locals 2

    .line 1
    iget-object v0, p0, Lddg;->a:Lddk;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2, p3}, Lddk;->t(Lddk;[BIILdcz;)Lddk;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic f(Ldcp;Ldcz;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lddg;->a:Lddk;

    invoke-static {v0, p1, p2}, Lddk;->s(Lddk;Ldcp;Ldcz;)Lddk;

    move-result-object p1

    return-object p1
.end method

.class public final Ldcx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lder;

.field public final b:Ljava/lang/Object;

.field public final c:Lder;

.field public final d:Lddj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lder;Ljava/lang/Object;Lder;Lddj;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iget-object v0, p4, Lddj;->c:Ldgc;

    .line 3
    sget-object v1, Ldgc;->k:Ldgc;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Ldcx;->a:Lder;

    iput-object p2, p0, Ldcx;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldcx;->c:Lder;

    iput-object p4, p0, Ldcx;->d:Lddj;

    return-void

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ldgc;
    .locals 1

    iget-object v0, p0, Ldcx;->d:Lddj;

    iget-object v0, v0, Lddj;->c:Ldgc;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldcx;->d:Lddj;

    iget-boolean v0, v0, Lddj;->d:Z

    return-void
.end method

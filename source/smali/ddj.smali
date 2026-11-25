.class public final Lddj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lddn;

.field final b:I

.field public final c:Ldgc;

.field final d:Z


# direct methods
.method public constructor <init>(Ldgc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lddj;->a:Lddn;

    const v0, 0x13f38d82

    iput v0, p0, Lddj;->b:I

    iput-object p1, p0, Lddj;->c:Ldgc;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lddj;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ldgd;
    .locals 1

    iget-object v0, p0, Lddj;->c:Ldgc;

    iget-object v0, v0, Ldgc;->s:Ldgd;

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lddj;

    .line 2
    iget p1, p1, Lddj;->b:I

    const/4 p1, 0x0

    return p1
.end method

.class final Lcrg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/Comparator;

.field final b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcrg;->a:Ljava/util/Comparator;

    iput-object p2, p0, Lcrg;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcrf;

    iget-object v1, p0, Lcrg;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcrf;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcrg;->b:[Ljava/lang/Object;

    .line 2
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcpz;->b([Ljava/lang/Object;I)V

    .line 1
    invoke-virtual {v0}, Lcrf;->j()Lcrh;

    move-result-object v0

    return-object v0
.end method

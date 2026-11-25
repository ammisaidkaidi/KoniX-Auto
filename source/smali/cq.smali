.class final Lcq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcp;


# instance fields
.field final a:I

.field final synthetic b:Lcr;


# direct methods
.method public constructor <init>(Lcr;I)V
    .locals 0

    iput-object p1, p0, Lcq;->b:Lcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcq;->a:I

    return-void
.end method


# virtual methods
.method public final f(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcq;->b:Lcr;

    iget v1, p0, Lcq;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcr;->X(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method

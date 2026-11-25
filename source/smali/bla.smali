.class final Lbla;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbrc;


# instance fields
.field final synthetic a:Lbrk;

.field final synthetic b:Lblb;


# direct methods
.method public constructor <init>(Lblb;Lbrk;)V
    .locals 0

    iput-object p1, p0, Lbla;->b:Lblb;

    iput-object p2, p0, Lbla;->a:Lbrk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbrh;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lbla;->b:Lblb;

    iget-object p1, p1, Lblb;->b:Ljava/util/Map;

    iget-object v0, p0, Lbla;->a:Lbrk;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

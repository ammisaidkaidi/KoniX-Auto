.class final Lzr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Lzm;

.field final b:Lzo;


# direct methods
.method public constructor <init>(Lzp;Lzm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lzu;->a(Ljava/lang/Object;)Lzo;

    move-result-object p1

    iput-object p1, p0, Lzr;->b:Lzo;

    iput-object p2, p0, Lzr;->a:Lzm;

    return-void
.end method


# virtual methods
.method final a(Lzq;Lzl;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lzl;->c()Lzm;

    move-result-object v0

    iget-object v1, p0, Lzr;->a:Lzm;

    .line 2
    invoke-static {v1, v0}, Lzn;->a(Lzm;Lzm;)Lzm;

    move-result-object v1

    iput-object v1, p0, Lzr;->a:Lzm;

    iget-object v1, p0, Lzr;->b:Lzo;

    .line 3
    invoke-interface {v1, p1, p2}, Lzo;->a(Lzq;Lzl;)V

    iput-object v0, p0, Lzr;->a:Lzm;

    return-void
.end method

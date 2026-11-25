.class final Lcz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:I

.field b:Lbr;

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Lzm;

.field i:Lzm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILbr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcz;->a:I

    iput-object p2, p0, Lcz;->b:Lbr;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcz;->c:Z

    sget-object p1, Lzm;->e:Lzm;

    iput-object p1, p0, Lcz;->h:Lzm;

    sget-object p1, Lzm;->e:Lzm;

    iput-object p1, p0, Lcz;->i:Lzm;

    return-void
.end method

.method public constructor <init>(ILbr;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcz;->a:I

    iput-object p2, p0, Lcz;->b:Lbr;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcz;->c:Z

    sget-object p1, Lzm;->e:Lzm;

    iput-object p1, p0, Lcz;->h:Lzm;

    sget-object p1, Lzm;->e:Lzm;

    iput-object p1, p0, Lcz;->i:Lzm;

    return-void
.end method

.class final Lcru;
.super Lcrt;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lcrt;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcru;

    invoke-direct {v0}, Lcru;-><init>()V

    sput-object v0, Lcru;->a:Lcrt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcrt;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcrv;

    check-cast p2, Lcrv;

    sget-object v0, Lcpo;->b:Lcpo;

    .line 2
    iget-object v1, p1, Lcrv;->b:Lcps;

    iget-object v2, p2, Lcrv;->b:Lcps;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcpo;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcpo;

    move-result-object v0

    iget-object p1, p1, Lcrv;->c:Lcps;

    iget-object p2, p2, Lcrv;->c:Lcps;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcpo;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcpo;

    move-result-object p1

    invoke-virtual {p1}, Lcpo;->a()I

    move-result p1

    return p1
.end method

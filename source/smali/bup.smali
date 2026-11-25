.class public final synthetic Lbup;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lbup;

.field public static final synthetic b:Lbup;

.field public static final synthetic c:Lbup;

.field public static final synthetic d:Lbup;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lbup;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbup;-><init>(I)V

    sput-object v0, Lbup;->d:Lbup;

    new-instance v0, Lbup;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbup;-><init>(I)V

    sput-object v0, Lbup;->c:Lbup;

    new-instance v0, Lbup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbup;-><init>(I)V

    sput-object v0, Lbup;->b:Lbup;

    new-instance v0, Lbup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbup;-><init>(I)V

    sput-object v0, Lbup;->a:Lbup;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbup;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 11
    iget v0, p0, Lbup;->e:I

    packed-switch v0, :pswitch_data_0

    .line 19
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1
    :pswitch_0
    invoke-static {p1}, Lcvz;->a(Ljava/lang/Object;)Lcvz;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcvz;->a(Ljava/lang/Object;)Lcvz;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 16
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 4
    :pswitch_1
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    goto :goto_0

    .line 5
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    goto :goto_0

    .line 6
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 7
    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcvz;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    .line 4
    :goto_0
    return p1

    .line 9
    :pswitch_5
    check-cast p1, Lcay;

    check-cast p2, Lcay;

    .line 10
    iget-wide v0, p1, Lcay;->c:J

    iget-wide p1, p2, Lcay;->c:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    .line 11
    :pswitch_6
    check-cast p1, Lccw;

    check-cast p2, Lccw;

    .line 12
    invoke-interface {p1}, Lccw;->a()Lccv;

    .line 13
    invoke-interface {p1}, Lccw;->a()Lccv;

    move-result-object p1

    iget p1, p1, Lccv;->a:I

    .line 14
    invoke-interface {p2}, Lccw;->a()Lccv;

    .line 15
    invoke-interface {p2}, Lccw;->a()Lccv;

    move-result-object p2

    iget p2, p2, Lccv;->a:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-gt p1, p2, :cond_2

    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_2
    const/4 p1, -0x1

    return p1

    .line 16
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 17
    :pswitch_8
    check-cast p1, Lbur;

    check-cast p2, Lbur;

    .line 18
    iget-object p1, p1, Lbur;->a:Lcub;

    invoke-interface {p1}, Lcub;->e()J

    move-result-wide v0

    iget-object p1, p2, Lbur;->a:Lcub;

    invoke-interface {p1}, Lcub;->e()J

    move-result-wide p1

    cmp-long v2, v0, p1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.class public final Lvp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lvp;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 12
    iget v0, p0, Lvp;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lbpb;

    check-cast p2, Lbpb;

    .line 13
    iget v0, p1, Lbpb;->i:I

    iget v1, p2, Lbpb;->i:I

    if-ne v0, v1, :cond_9

    .line 14
    iget-object p1, p1, Lbpb;->b:Ljava/lang/String;

    iget-object p2, p2, Lbpb;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_6

    .line 1
    :pswitch_0
    check-cast p1, [B

    check-cast p2, [B

    .line 2
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_0

    sub-int v1, v0, v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 4
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    sub-int v1, v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 2
    :goto_1
    return v1

    .line 5
    :pswitch_1
    check-cast p1, Lpo;

    check-cast p2, Lpo;

    .line 6
    iget-object v0, p1, Lpo;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    .line 9
    :cond_3
    const/4 v3, 0x1

    .line 6
    :goto_2
    iget-object v4, p2, Lpo;->d:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 9
    :cond_4
    const/4 v4, 0x1

    .line 6
    :goto_3
    const/4 v5, -0x1

    if-eq v3, v4, :cond_6

    if-nez v0, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, -0x1

    goto :goto_5

    .line 7
    :cond_6
    iget-boolean v0, p1, Lpo;->a:Z

    iget-boolean v3, p2, Lpo;->a:Z

    if-eq v0, v3, :cond_7

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    goto :goto_4

    .line 8
    :cond_7
    iget v0, p2, Lpo;->b:I

    iget v2, p1, Lpo;->b:I

    sub-int v2, v0, v2

    if-nez v2, :cond_8

    .line 9
    iget p1, p1, Lpo;->c:I

    iget p2, p2, Lpo;->c:I

    sub-int v2, p1, p2

    if-nez v2, :cond_8

    .line 6
    :goto_4
    return v1

    :cond_8
    :goto_5
    return v2

    .line 10
    :pswitch_2
    check-cast p1, Lvs;

    check-cast p2, Lvs;

    .line 11
    iget p1, p1, Lvs;->c:I

    iget p2, p2, Lvs;->c:I

    sub-int/2addr p1, p2

    return p1

    .line 14
    :cond_9
    sub-int p1, v0, v1

    :goto_6
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

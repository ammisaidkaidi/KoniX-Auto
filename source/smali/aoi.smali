.class public final Laoi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Laoh;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Laoi;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoi;->b:Z

    return-void
.end method

.method public static d(Lra;)Laoi;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Laoi;

    invoke-direct {v0}, Laoi;-><init>()V

    .line 3
    check-cast p0, Landroid/support/v7/widget/LinearLayoutManager;

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Laoi;->a:I

    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean p0, v0, Laoi;->b:Z

    return-object v0

    .line 1
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 2
    const-string v0, "LinearLayoutManager required."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Laoi;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Laoi;->b:Z

    return v0
.end method

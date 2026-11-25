.class public final synthetic Lart;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lary;


# static fields
.field public static final synthetic a:Lart;

.field public static final synthetic b:Lart;

.field public static final synthetic c:Lart;

.field public static final synthetic d:Lart;

.field public static final synthetic e:Lart;

.field public static final synthetic f:Lart;

.field public static final synthetic g:Lart;

.field public static final synthetic h:Lart;

.field public static final synthetic i:Lart;

.field public static final synthetic j:Lart;


# instance fields
.field private final synthetic k:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lart;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->j:Lart;

    new-instance v0, Lart;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->i:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->h:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->g:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->f:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->e:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->d:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->c:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->b:Lart;

    new-instance v0, Lart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lart;-><init>(I)V

    sput-object v0, Lart;->a:Lart;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lart;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3

    .line 9
    iget v0, p0, Lart;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p1, Landroid/view/View;

    .line 10
    invoke-static {p1}, Lhf;->r(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 9
    :pswitch_0
    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 2
    :pswitch_1
    instance-of p1, p1, Larx;

    return p1

    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_3
    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    :pswitch_4
    check-cast p1, Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v2

    :pswitch_5
    check-cast p1, Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_6
    check-cast p1, Landroid/view/View;

    .line 7
    invoke-static {p1}, Lhf;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lhf;->p(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v2

    :pswitch_7
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v2

    .line 9
    :pswitch_8
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

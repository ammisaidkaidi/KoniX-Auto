.class public final synthetic Lbpu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcef;


# static fields
.field public static final synthetic a:Lbpu;

.field public static final synthetic b:Lbpu;

.field public static final synthetic c:Lbpu;

.field public static final synthetic d:Lbpu;

.field public static final synthetic e:Lbpu;

.field public static final synthetic f:Lbpu;

.field public static final synthetic g:Lbpu;

.field public static final synthetic h:Lbpu;

.field public static final synthetic i:Lbpu;


# instance fields
.field private final synthetic j:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lbpu;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->i:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->h:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->g:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->f:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->e:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->d:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->c:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->b:Lbpu;

    new-instance v0, Lbpu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpu;-><init>(I)V

    sput-object v0, Lbpu;->a:Lbpu;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lbpu;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 1

    .line 17
    iget v0, p0, Lbpu;->j:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ldgp;->b:Ldgp;

    .line 18
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgp;

    return-object p1

    .line 1
    :pswitch_0
    sget-object v0, Ldgo;->b:Ldgo;

    .line 2
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgo;

    return-object p1

    .line 3
    :pswitch_1
    sget-object v0, Ldgp;->b:Ldgp;

    .line 4
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgp;

    return-object p1

    .line 5
    :pswitch_2
    sget-object v0, Ldgp;->b:Ldgp;

    .line 6
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgp;

    return-object p1

    .line 7
    :pswitch_3
    sget-object v0, Ldbs;->d:Ldbs;

    .line 8
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldbs;

    return-object p1

    .line 9
    :pswitch_4
    sget-object v0, Ldgp;->b:Ldgp;

    .line 10
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgp;

    return-object p1

    .line 11
    :pswitch_5
    sget-object v0, Ldgp;->b:Ldgp;

    .line 12
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgp;

    return-object p1

    .line 13
    :pswitch_6
    sget-object v0, Ldgv;->b:Ldgv;

    .line 14
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldgv;

    return-object p1

    .line 15
    :pswitch_7
    sget-object v0, Ldbs;->d:Ldbs;

    .line 16
    invoke-static {v0, p1}, Lddk;->p(Lddk;[B)Lddk;

    move-result-object p1

    check-cast p1, Ldbs;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
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

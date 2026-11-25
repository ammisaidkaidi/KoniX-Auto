.class public final synthetic Lcgi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcfa;


# static fields
.field public static final synthetic a:Lcgi;

.field public static final synthetic b:Lcgi;


# instance fields
.field private final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcgi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcgi;-><init>(I)V

    sput-object v0, Lcgi;->b:Lcgi;

    new-instance v0, Lcgi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcgi;-><init>(I)V

    sput-object v0, Lcgi;->a:Lcgi;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcgi;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    iget v0, p0, Lcgi;->c:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcei;->d:I

    return-void

    .line 1
    :pswitch_0
    sget v0, Lcgj;->a:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

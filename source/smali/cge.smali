.class public final synthetic Lcge;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lcge;

.field public static final synthetic b:Lcge;

.field public static final synthetic c:Lcge;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcge;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcge;-><init>(I)V

    sput-object v0, Lcge;->c:Lcge;

    new-instance v0, Lcge;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcge;-><init>(I)V

    sput-object v0, Lcge;->b:Lcge;

    new-instance v0, Lcge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcge;-><init>(I)V

    sput-object v0, Lcge;->a:Lcge;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcge;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcge;->d:I

    const/4 v1, 0x0

    return-object v1
.end method

.class public final Ldia;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldny;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Ldny;

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldia;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ldny;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldia;->a:Ljava/lang/Object;

    iput-object v0, p0, Ldia;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldia;->b:Ldny;

    return-void
.end method

.method public static b(Ldny;)Ldny;
    .locals 1

    .line 1
    instance-of v0, p0, Ldia;

    if-nez v0, :cond_1

    instance-of v0, p0, Ldhw;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ldia;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Ldia;-><init>(Ldny;)V

    return-object v0

    .line 1
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldia;->c:Ljava/lang/Object;

    sget-object v1, Ldia;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldia;->b:Ldny;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldia;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldia;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ldia;->b:Ldny;

    :cond_1
    :goto_0
    return-object v0
.end method

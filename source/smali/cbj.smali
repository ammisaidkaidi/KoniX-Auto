.class public final synthetic Lcbj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldgz;


# static fields
.field public static final synthetic a:Lcbj;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcbj;

    invoke-direct {v0}, Lcbj;-><init>()V

    sput-object v0, Lcbj;->a:Lcbj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcbe;->c()Lcbd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcbd;->b(Z)V

    invoke-virtual {v0}, Lcbd;->a()Lcbe;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcpo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:Lcpo;

.field public static final c:Lcpo;

.field public static final d:Lcpo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcpm;

    invoke-direct {v0}, Lcpm;-><init>()V

    sput-object v0, Lcpo;->b:Lcpo;

    new-instance v0, Lcpn;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcpn;-><init>(I)V

    sput-object v0, Lcpo;->c:Lcpo;

    new-instance v0, Lcpn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcpn;-><init>(I)V

    sput-object v0, Lcpo;->d:Lcpo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcpo;
.end method

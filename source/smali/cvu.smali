.class public final Lcvu;
.super Lcvs;
.source "PG"


# static fields
.field public static final a:Lcvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcvu;

    invoke-direct {v0}, Lcvu;-><init>()V

    sput-object v0, Lcvu;->a:Lcvs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcvs;-><init>()V

    new-instance v0, Lcvt;

    invoke-direct {v0}, Lcvt;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method

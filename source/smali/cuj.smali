.class public final Lcuj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcum;

.field public static final b:Lcul;


# instance fields
.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Map;

.field public final e:Lcum;

.field public f:Lcul;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcuh;

    invoke-direct {v0}, Lcuh;-><init>()V

    sput-object v0, Lcuj;->a:Lcum;

    new-instance v0, Lcui;

    invoke-direct {v0}, Lcui;-><init>()V

    sput-object v0, Lcuj;->b:Lcul;

    return-void
.end method

.method public constructor <init>(Lcum;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcuj;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcuj;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcuj;->f:Lcul;

    iput-object p1, p0, Lcuj;->e:Lcum;

    return-void
.end method

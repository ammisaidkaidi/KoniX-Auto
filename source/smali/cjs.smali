.class public final Lcjs;
.super Lcim;
.source "PG"


# static fields
.field public static final a:Lcjs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcjs;

    invoke-direct {v0}, Lcjs;-><init>()V

    sput-object v0, Lcjs;->a:Lcjs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcim;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;Lcje;)Ldag;
    .locals 0

    .line 1
    invoke-static {p1}, Lhh;->i(Ljava/lang/Throwable;)Ldag;

    move-result-object p1

    return-object p1
.end method

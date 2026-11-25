.class abstract Ldef;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldef;

.field public static final b:Ldef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lded;

    invoke-direct {v0}, Lded;-><init>()V

    sput-object v0, Ldef;->a:Ldef;

    new-instance v0, Ldee;

    invoke-direct {v0}, Ldee;-><init>()V

    sput-object v0, Ldef;->b:Ldef;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;J)Ljava/util/List;
.end method

.method public abstract c(Ljava/lang/Object;J)V
.end method

.method public abstract d(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

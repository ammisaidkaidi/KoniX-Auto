.class final Lcne;
.super Lcmx;
.source "PG"

# interfaces
.implements Lcmz;


# static fields
.field static final a:Lcmy;


# instance fields
.field private final b:Lcmy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcmy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcmy;-><init>([B)V

    sput-object v0, Lcne;->a:Lcmy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcna;->a:Lcna;

    invoke-virtual {v0}, Lcna;->b()Ljava/util/UUID;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcmx;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    sget-object v0, Lcne;->a:Lcmy;

    iput-object v0, p0, Lcne;->b:Lcmy;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lcni;Z)Lcnj;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    sget-object v0, Lcnr;->a:Ljava/util/WeakHashMap;

    :cond_0
    new-instance v0, Lcnf;

    .line 2
    invoke-direct {v0, p1, p0, p2, p3}, Lcnf;-><init>(Ljava/lang/String;Lcmz;Lcni;Z)V

    return-object v0
.end method

.method public final synthetic e()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcne;->b:Lcmy;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Lcni;)Lcnj;
    .locals 1

    .line 1
    sget-object v0, Lcnr;->a:Ljava/util/WeakHashMap;

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcne;->d(Ljava/lang/String;Lcni;Z)Lcnj;

    move-result-object p1

    return-object p1
.end method

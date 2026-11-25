.class public final Lagy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lakk;

.field public final b:Ljava/util/Set;

.field private final c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lagx;)V
    .locals 2

    iget-object v0, p1, Lagx;->b:Ljava/util/UUID;

    iget-object v1, p1, Lagx;->c:Lakk;

    iget-object p1, p1, Lagx;->d:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lagy;->c:Ljava/util/UUID;

    iput-object v1, p0, Lagy;->a:Lakk;

    iput-object p1, p0, Lagy;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lagy;->c:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

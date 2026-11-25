.class final Labe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/HashMap;

.field public e:Labc;

.field final synthetic f:Labz;

.field public final g:Labx;


# direct methods
.method public constructor <init>(Labz;Ljava/lang/String;IILabx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Labe;->f:Labz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Labe;->d:Ljava/util/HashMap;

    iput-object p2, p0, Labe;->a:Ljava/lang/String;

    iput p3, p0, Labe;->b:I

    iput p4, p0, Labe;->c:I

    new-instance p1, Laca;

    .line 2
    invoke-direct {p1, p2, p3, p4}, Laca;-><init>(Ljava/lang/String;II)V

    iput-object p5, p0, Labe;->g:Labx;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Labe;->f:Labz;

    iget-object v0, v0, Labz;->c:Laby;

    new-instance v1, Labd;

    invoke-direct {v1, p0}, Labd;-><init>(Labe;)V

    invoke-virtual {v0, v1}, Laby;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public final Laky;
.super Lala;
.source "PG"


# instance fields
.field final synthetic a:Lahx;

.field final synthetic b:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lahx;Ljava/util/UUID;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laky;->a:Lahx;

    iput-object p2, p0, Laky;->b:Ljava/util/UUID;

    invoke-direct {p0}, Lala;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Laky;->a:Lahx;

    iget-object v0, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Laee;->f()V

    :try_start_0
    iget-object v1, p0, Laky;->a:Lahx;

    iget-object v2, p0, Laky;->b:Ljava/util/UUID;

    .line 2
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laky;->b(Lahx;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Laee;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Laee;->g()V

    iget-object v0, p0, Laky;->a:Lahx;

    iget-object v1, v0, Lahx;->c:Lagf;

    iget-object v2, v0, Lahx;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lahx;->e:Ljava/util/List;

    .line 6
    invoke-static {v1, v2, v0}, Lahh;->b(Lagf;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    .line 3
    :catchall_0
    move-exception v1

    .line 4
    invoke-virtual {v0}, Laee;->g()V

    .line 5
    throw v1
.end method

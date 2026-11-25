.class final Laka;
.super Lady;
.source "PG"


# direct methods
.method public constructor <init>(Laee;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lady;-><init>(Laee;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Lafn;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lajz;

    .line 2
    iget-object v0, p2, Lajz;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lafm;->e(I)V

    goto :goto_0

    .line 5
    :cond_0
    nop

    .line 4
    invoke-virtual {p1, v1, v0}, Lafm;->f(ILjava/lang/String;)V

    .line 3
    :goto_0
    const/4 v0, 0x2

    .line 5
    iget p2, p2, Lajz;->b:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lafm;->d(IJ)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

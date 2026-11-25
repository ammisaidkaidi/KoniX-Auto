.class final Lakd;
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
    .locals 2

    .line 1
    check-cast p2, Lboa;

    .line 2
    iget-object v0, p2, Lboa;->b:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lafm;->e(I)V

    goto :goto_0

    .line 7
    :cond_0
    nop

    .line 4
    invoke-virtual {p1, v1, v0}, Lafm;->f(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p2, p2, Lboa;->a:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Lafm;->e(I)V

    return-void

    :cond_1
    nop

    .line 7
    invoke-virtual {p1, v0, p2}, Lafm;->f(ILjava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

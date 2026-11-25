.class final Lakf;
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
    .locals 1

    .line 1
    check-cast p2, Lake;

    .line 2
    iget-object v0, p2, Lake;->a:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lafm;->e(I)V

    .line 4
    iget-object p2, p2, Lake;->b:Lagk;

    const/4 p2, 0x0

    invoke-static {p2}, Lagk;->c(Lagk;)[B

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lafm;->e(I)V

    return-void

    :cond_0
    nop

    .line 6
    invoke-virtual {p1, v0, p2}, Lafm;->c(I[B)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method

.class final Lajy;
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
    check-cast p2, Lajx;

    .line 2
    iget-object v0, p2, Lajx;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lafm;->f(ILjava/lang/String;)V

    .line 4
    iget-object p2, p2, Lajx;->b:Ljava/lang/Long;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, v1}, Lafm;->d(IJ)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

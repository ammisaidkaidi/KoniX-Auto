.class public final Ldos;
.super Lddk;
.source "PG"

# interfaces
.implements Ldes;


# static fields
.field public static final ar:Ldos;

.field private static volatile as:Ldex;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:J

.field public I:J

.field public J:Ldor;

.field public K:J

.field public L:Ldor;

.field public M:Ldor;

.field public N:Ldor;

.field public O:Ldor;

.field public P:Ldor;

.field public Q:Ldor;

.field public R:Ldor;

.field public S:Ldor;

.field public T:Ldor;

.field public U:Ldor;

.field public V:Ldor;

.field public W:Ldor;

.field public X:Ldor;

.field public Y:J

.field public Z:J

.field public a:I

.field public aa:J

.field public ab:J

.field public ac:J

.field public ad:J

.field public ae:J

.field public af:J

.field public ag:J

.field public ah:J

.field public ai:J

.field public aj:J

.field public ak:J

.field public al:J

.field public am:J

.field public an:Ldor;

.field public ao:J

.field public ap:J

.field public aq:J

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:Lddr;

.field public h:Lddr;

.field public i:Lddr;

.field public j:Lddr;

.field public k:Lddr;

.field public l:Lddr;

.field public m:Ldor;

.field public n:Lddr;

.field public o:Lddr;

.field public p:Lddr;

.field public u:Lddr;

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ldos;

    invoke-direct {v0}, Ldos;-><init>()V

    sput-object v0, Ldos;->ar:Ldos;

    const-class v1, Ldos;

    .line 2
    invoke-static {v1, v0}, Lddk;->D(Ljava/lang/Class;Lddk;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lddk;-><init>()V

    .line 2
    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->g:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->h:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->i:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->j:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->k:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->l:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->n:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->o:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->p:Lddr;

    sget-object v0, Ldfa;->b:Ldfa;

    iput-object v0, p0, Ldos;->u:Lddr;

    return-void
.end method


# virtual methods
.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->i:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->i:Lddr;

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->j:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->j:Lddr;

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->k:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->k:Lddr;

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->l:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->l:Lddr;

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->n:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->n:Lddr;

    :cond_0
    return-void
.end method

.method public final L(J)V
    .locals 1

    iget v0, p0, Ldos;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->B:J

    return-void
.end method

.method public final M(J)V
    .locals 1

    iget v0, p0, Ldos;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->C:J

    return-void
.end method

.method public final N(J)V
    .locals 1

    iget v0, p0, Ldos;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->D:J

    return-void
.end method

.method public final O(J)V
    .locals 1

    iget v0, p0, Ldos;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->E:J

    return-void
.end method

.method public final P(J)V
    .locals 2

    iget v0, p0, Ldos;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->F:J

    return-void
.end method

.method public final Q(J)V
    .locals 2

    iget v0, p0, Ldos;->a:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->G:J

    return-void
.end method

.method public final R(J)V
    .locals 2

    iget v0, p0, Ldos;->a:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->H:J

    return-void
.end method

.method public final S(J)V
    .locals 2

    iget v0, p0, Ldos;->a:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->I:J

    return-void
.end method

.method public final T(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->J:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final U(J)V
    .locals 2

    iget v0, p0, Ldos;->a:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Ldos;->a:I

    iput-wide p1, p0, Ldos;->K:J

    return-void
.end method

.method public final V(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->L:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x200000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final W(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->M:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x400000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final X(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->N:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final Y(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->O:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final Z(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->P:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1
    :pswitch_1
    sget-object p1, Ldos;->as:Ldex;

    if-nez p1, :cond_1

    const-class p2, Ldos;

    monitor-enter p2

    :try_start_0
    sget-object p1, Ldos;->as:Ldex;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lddg;

    sget-object v0, Ldos;->ar:Ldos;

    invoke-direct {p1, v0}, Lddg;-><init>(Lddk;)V

    sput-object p1, Ldos;->as:Ldex;

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    .line 6
    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_2
    sget-object p1, Ldos;->ar:Ldos;

    return-object p1

    :pswitch_3
    new-instance p1, Lddf;

    sget-object p2, Ldos;->ar:Ldos;

    .line 5
    invoke-direct {p1, p2}, Lddf;-><init>(Lddk;)V

    return-object p1

    :pswitch_4
    new-instance p1, Ldos;

    .line 6
    invoke-direct {p1}, Ldos;-><init>()V

    return-object p1

    .line 4
    :pswitch_5
    const/16 p1, 0x4b

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "f"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "g"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "h"

    aput-object v0, p1, p2

    const/16 p2, 0x9

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "i"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "j"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0xe

    const-string v0, "k"

    aput-object v0, p1, p2

    const/16 p2, 0xf

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0x10

    const-string v0, "l"

    aput-object v0, p1, p2

    const/16 p2, 0x11

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0x12

    const-string v0, "m"

    aput-object v0, p1, p2

    const/16 p2, 0x13

    const-string v0, "n"

    aput-object v0, p1, p2

    const/16 p2, 0x14

    const-class v0, Ldor;

    aput-object v0, p1, p2

    const/16 p2, 0x15

    const-string v0, "o"

    aput-object v0, p1, p2

    const/16 p2, 0x16

    const-class v0, Ldoo;

    aput-object v0, p1, p2

    const/16 p2, 0x17

    const-string v0, "p"

    aput-object v0, p1, p2

    const/16 p2, 0x18

    const-class v0, Ldop;

    aput-object v0, p1, p2

    const/16 p2, 0x19

    const-string v0, "u"

    aput-object v0, p1, p2

    const/16 p2, 0x1a

    const-class v0, Ldon;

    aput-object v0, p1, p2

    const/16 p2, 0x1b

    const-string v0, "v"

    aput-object v0, p1, p2

    const/16 p2, 0x1c

    const-string v0, "w"

    aput-object v0, p1, p2

    const/16 p2, 0x1d

    const-string v0, "x"

    aput-object v0, p1, p2

    const/16 p2, 0x1e

    const-string v0, "y"

    aput-object v0, p1, p2

    const/16 p2, 0x1f

    const-string v0, "z"

    aput-object v0, p1, p2

    const/16 p2, 0x20

    const-string v0, "A"

    aput-object v0, p1, p2

    const/16 p2, 0x21

    const-string v0, "B"

    aput-object v0, p1, p2

    const/16 p2, 0x22

    const-string v0, "C"

    aput-object v0, p1, p2

    const/16 p2, 0x23

    const-string v0, "D"

    aput-object v0, p1, p2

    const/16 p2, 0x24

    const-string v0, "E"

    aput-object v0, p1, p2

    const/16 p2, 0x25

    const-string v0, "F"

    aput-object v0, p1, p2

    const/16 p2, 0x26

    const-string v0, "G"

    aput-object v0, p1, p2

    const/16 p2, 0x27

    const-string v0, "H"

    aput-object v0, p1, p2

    const/16 p2, 0x28

    const-string v0, "I"

    aput-object v0, p1, p2

    const/16 p2, 0x29

    const-string v0, "J"

    aput-object v0, p1, p2

    const/16 p2, 0x2a

    const-string v0, "K"

    aput-object v0, p1, p2

    const/16 p2, 0x2b

    const-string v0, "L"

    aput-object v0, p1, p2

    const/16 p2, 0x2c

    const-string v0, "M"

    aput-object v0, p1, p2

    const/16 p2, 0x2d

    const-string v0, "N"

    aput-object v0, p1, p2

    const/16 p2, 0x2e

    const-string v0, "O"

    aput-object v0, p1, p2

    const/16 p2, 0x2f

    const-string v0, "P"

    aput-object v0, p1, p2

    const/16 p2, 0x30

    const-string v0, "Q"

    aput-object v0, p1, p2

    const/16 p2, 0x31

    const-string v0, "R"

    aput-object v0, p1, p2

    const/16 p2, 0x32

    const-string v0, "S"

    aput-object v0, p1, p2

    const/16 p2, 0x33

    const-string v0, "T"

    aput-object v0, p1, p2

    const/16 p2, 0x34

    const-string v0, "U"

    aput-object v0, p1, p2

    const/16 p2, 0x35

    const-string v0, "V"

    aput-object v0, p1, p2

    const/16 p2, 0x36

    const-string v0, "W"

    aput-object v0, p1, p2

    const/16 p2, 0x37

    const-string v0, "X"

    aput-object v0, p1, p2

    const/16 p2, 0x38

    const-string v0, "Y"

    aput-object v0, p1, p2

    const/16 p2, 0x39

    const-string v0, "Z"

    aput-object v0, p1, p2

    const/16 p2, 0x3a

    const-string v0, "aa"

    aput-object v0, p1, p2

    const/16 p2, 0x3b

    const-string v0, "ab"

    aput-object v0, p1, p2

    const/16 p2, 0x3c

    const-string v0, "ac"

    aput-object v0, p1, p2

    const/16 p2, 0x3d

    const-string v0, "ad"

    aput-object v0, p1, p2

    const/16 p2, 0x3e

    const-string v0, "ae"

    aput-object v0, p1, p2

    const/16 p2, 0x3f

    const-string v0, "af"

    aput-object v0, p1, p2

    const/16 p2, 0x40

    const-string v0, "ag"

    aput-object v0, p1, p2

    const/16 p2, 0x41

    const-string v0, "ah"

    aput-object v0, p1, p2

    const/16 p2, 0x42

    const-string v0, "ai"

    aput-object v0, p1, p2

    const/16 p2, 0x43

    const-string v0, "aj"

    aput-object v0, p1, p2

    const/16 p2, 0x44

    const-string v0, "ak"

    aput-object v0, p1, p2

    const/16 p2, 0x45

    const-string v0, "al"

    aput-object v0, p1, p2

    const/16 p2, 0x46

    const-string v0, "am"

    aput-object v0, p1, p2

    const/16 p2, 0x47

    const-string v0, "an"

    aput-object v0, p1, p2

    const/16 p2, 0x48

    const-string v0, "ao"

    aput-object v0, p1, p2

    const/16 p2, 0x49

    const-string v0, "ap"

    aput-object v0, p1, p2

    const/16 p2, 0x4a

    const-string v0, "aq"

    aput-object v0, p1, p2

    sget-object p2, Ldos;->ar:Ldos;

    const-string v0, "\u0001?\u0000\u0002\u0001@?\u0000\n\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001b\u0006\u001b\u0007\u001b\u0008\u001b\t\u001b\n\u001b\u000b\u1009\u0004\u000c\u001b\r\u001b\u000e\u001b\u000f\u001b\u0010\u1002\u0005\u0011\u1002\u0006\u0012\u1002\u0007\u0013\u1002\u0008\u0014\u1002\t\u0015\u1002\n\u0016\u1002\u000b\u0017\u1002\u000c\u0018\u1002\r\u0019\u1002\u000e\u001a\u1002\u000f\u001b\u1002\u0010\u001c\u1002\u0011\u001d\u1002\u0012\u001e\u1009\u0013\u001f\u1002\u0014 \u1009\u0015!\u1009\u0016\"\u1009\u0017#\u1009\u0018$\u1009\u0019%\u1009\u001a&\u1009\u001b\'\u1009\u001c(\u1009\u001d)\u1009\u001e*\u1009\u001f+\u1009 ,\u1009!-\u1002\".\u1002#/\u1002$0\u1002%1\u1002&2\u1002\'3\u1002(4\u1002)5\u1002*6\u1002+7\u1002,8\u1002-9\u1002.:\u1002/;\u10020=\u10091>\u10022?\u10023@\u10024"

    invoke-static {p2, v0, p1}, Ldos;->C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final aa(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->Q:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final ab(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->R:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x8000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final ac(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->S:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final ad(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->T:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final ae(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->U:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final af(Ldor;)V
    .locals 1

    iput-object p1, p0, Ldos;->V:Ldor;

    iget p1, p0, Ldos;->a:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ldos;->a:I

    return-void
.end method

.method public final ag(Ldor;)V
    .locals 0

    iput-object p1, p0, Ldos;->W:Ldor;

    iget p1, p0, Ldos;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldos;->b:I

    return-void
.end method

.method public final ah(Ldor;)V
    .locals 0

    iput-object p1, p0, Ldos;->X:Ldor;

    iget p1, p0, Ldos;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Ldos;->b:I

    return-void
.end method

.method public final ai(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->Y:J

    return-void
.end method

.method public final aj(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->Z:J

    return-void
.end method

.method public final ak(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->aa:J

    return-void
.end method

.method public final al(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->ab:J

    return-void
.end method

.method public final am(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->ac:J

    return-void
.end method

.method public final an(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->ad:J

    return-void
.end method

.method public final ao(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->ae:J

    return-void
.end method

.method public final ap(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->af:J

    return-void
.end method

.method public final aq(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->ag:J

    return-void
.end method

.method public final ar(J)V
    .locals 1

    iget v0, p0, Ldos;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Ldos;->b:I

    iput-wide p1, p0, Ldos;->ah:J

    return-void
.end method

.method public final as()Z
    .locals 2

    iget v0, p0, Ldos;->b:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final at()Ldor;
    .locals 1

    .line 1
    iget-object v0, p0, Ldos;->an:Ldor;

    if-nez v0, :cond_0

    sget-object v0, Ldor;->e:Ldor;

    :cond_0
    return-object v0
.end method

.method public final au()Z
    .locals 2

    iget v0, p0, Ldos;->b:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final av()Z
    .locals 2

    iget v0, p0, Ldos;->b:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final aw()Z
    .locals 2

    iget v0, p0, Ldos;->b:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->g:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->g:Lddr;

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldos;->h:Lddr;

    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lddk;->z(Lddr;)Lddr;

    move-result-object v0

    iput-object v0, p0, Ldos;->h:Lddr;

    :cond_0
    return-void
.end method

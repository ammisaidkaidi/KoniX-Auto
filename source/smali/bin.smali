.class public final Lbin;
.super Lbnt;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcxm;

.field public final b:Lbiw;

.field public c:[B

.field public final d:[I

.field public final e:[Ljava/lang/String;

.field public final f:[I

.field public final g:[[B

.field public final h:[Lbol;

.field public final i:Z

.field public j:Ldgt;

.field public final k:Lbie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lacg;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lacg;-><init>(I)V

    sput-object v0, Lbin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lbiw;Ldgt;Lbie;[I[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbin;->b:Lbiw;

    iput-object p2, p0, Lbin;->j:Ldgt;

    iput-object p3, p0, Lbin;->k:Lbie;

    const/4 p1, 0x0

    iput-object p1, p0, Lbin;->a:Lcxm;

    iput-object p4, p0, Lbin;->d:[I

    iput-object p5, p0, Lbin;->e:[Ljava/lang/String;

    iput-object p6, p0, Lbin;->f:[I

    iput-object p1, p0, Lbin;->g:[[B

    iput-object p1, p0, Lbin;->h:[Lbol;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbin;->i:Z

    return-void
.end method

.method public constructor <init>(Lbiw;[B[I[Ljava/lang/String;[I[[BZ[Lbol;)V
    .locals 0

    invoke-direct {p0}, Lbnt;-><init>()V

    iput-object p1, p0, Lbin;->b:Lbiw;

    iput-object p2, p0, Lbin;->c:[B

    iput-object p3, p0, Lbin;->d:[I

    iput-object p4, p0, Lbin;->e:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lbin;->j:Ldgt;

    iput-object p1, p0, Lbin;->k:Lbie;

    iput-object p1, p0, Lbin;->a:Lcxm;

    iput-object p5, p0, Lbin;->f:[I

    iput-object p6, p0, Lbin;->g:[[B

    iput-object p8, p0, Lbin;->h:[Lbol;

    iput-boolean p7, p0, Lbin;->i:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lbin;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lbin;

    iget-object v1, p0, Lbin;->b:Lbiw;

    .line 3
    iget-object v3, p1, Lbin;->b:Lbiw;

    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->c:[B

    iget-object v3, p1, Lbin;->c:[B

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->d:[I

    iget-object v3, p1, Lbin;->d:[I

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->e:[Ljava/lang/String;

    iget-object v3, p1, Lbin;->e:[Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->j:Ldgt;

    iget-object v3, p1, Lbin;->j:Ldgt;

    .line 7
    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->k:Lbie;

    iget-object v3, p1, Lbin;->k:Lbie;

    .line 8
    invoke-static {v1, v3}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lbin;->a:Lcxm;

    .line 9
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lhr;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->f:[I

    iget-object v3, p1, Lbin;->f:[I

    .line 10
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->g:[[B

    iget-object v3, p1, Lbin;->g:[[B

    .line 11
    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbin;->h:[Lbol;

    iget-object v3, p1, Lbin;->h:[Lbol;

    .line 12
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lbin;->i:Z

    iget-boolean p1, p1, Lbin;->i:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbin;->b:Lbiw;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->c:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->d:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->e:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->j:Ldgt;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->k:Lbie;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lbin;->f:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->g:[[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lbin;->h:[Lbol;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lbin;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbin;->b:Lbiw;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->c:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 23
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 4
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->d:[I

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->e:[Ljava/lang/String;

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->j:Ldgt;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", SourceExtensionByteStringProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->k:Lbie;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->f:[I

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->g:[[B

    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbin;->h:[Lbol;

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbin;->i:Z

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio;->g(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbin;->b:Lbiw;

    .line 2
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lio;->r(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lbin;->c:[B

    .line 3
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lio;->n(Landroid/os/Parcel;I[B)V

    iget-object v1, p0, Lbin;->d:[I

    .line 4
    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lio;->q(Landroid/os/Parcel;I[I)V

    iget-object v1, p0, Lbin;->e:[Ljava/lang/String;

    .line 5
    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lio;->t(Landroid/os/Parcel;I[Ljava/lang/String;)V

    iget-object v1, p0, Lbin;->f:[I

    .line 6
    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lio;->q(Landroid/os/Parcel;I[I)V

    iget-object v1, p0, Lbin;->g:[[B

    .line 7
    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lio;->o(Landroid/os/Parcel;I[[B)V

    iget-boolean v1, p0, Lbin;->i:Z

    .line 8
    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lio;->i(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lbin;->h:[Lbol;

    .line 9
    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2}, Lio;->v(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 10
    invoke-static {p1, v0}, Lio;->h(Landroid/os/Parcel;I)V

    return-void
.end method

.class public Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
.super Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;
.source "Transfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fromAccountId:J

.field private final fromAmount:J

.field private final fromDecimals:J

.field private final time:J

.field private final toAccountId:J

.field private final toAmount:J

.field private final toDecimals:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x40570b02aeb23bcL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/data/Transfer"

    const/16 v3, 0x1d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JJJDD)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    .line 37
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    .line 38
    iput-wide p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    .line 39
    invoke-virtual {p0, p7, p8}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getLong(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    .line 40
    invoke-virtual {p0, p7, p8}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getDecimal(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    .line 41
    invoke-virtual {p0, p9, p10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getLong(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    .line 42
    invoke-virtual {p0, p9, p10}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getDecimal(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    .line 43
    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>(JJJJJJJJ)V
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v2

    .line 24
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 25
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    .line 26
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    .line 27
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->id:J

    .line 28
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    .line 29
    iput-wide p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    .line 30
    iput-wide p7, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    .line 31
    iput-wide p9, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    .line 32
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    .line 33
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    .line 53
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v3

    .line 110
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    if-eqz v4, :cond_8

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;

    .line 112
    .local v0, "transfer":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->id:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    aput-boolean v2, v3, v4

    :goto_0
    const/16 v4, 0x16

    aput-boolean v2, v3, v4

    :goto_1
    const/16 v4, 0x17

    aput-boolean v2, v3, v4

    .line 120
    :goto_2
    return v1

    .line 112
    :cond_0
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const/16 v4, 0xf

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    const/16 v4, 0x11

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    const/16 v4, 0x12

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_5
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    const/16 v4, 0x13

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_6
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const/16 v4, 0x14

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_7
    const/16 v1, 0x15

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 120
    .end local v0    # "transfer":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
    :cond_8
    const/16 v4, 0x18

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method public getFromAccountId()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    const/4 v1, 0x5

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFromAmount()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    const/4 v1, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFromDecimals()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    const/16 v1, 0x9

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFullFromAmount()D
    .locals 8

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/16 v1, 0xb

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFullToAmount()D
    .locals 8

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/16 v1, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getId()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->id:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTime()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getToAccountId()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getToAmount()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    const/16 v1, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getToDecimals()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    const/16 v1, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Transfer {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v2, "time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v2, "fromAccountId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v2, "toAccountId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v2, "fromAmount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v2, "toAmount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v2, "fromDecimals = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v2, "toDecimals = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->$jacocoInit()[Z

    move-result-object v0

    .line 148
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->time:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAccountId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAccountId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromAmount:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toAmount:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->fromDecimals:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 154
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->toDecimals:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

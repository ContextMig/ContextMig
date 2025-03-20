.class public Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
.super Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;
.source "Account.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private archived:Z

.field private color:I

.field private curSum:J

.field private final currency:Ljava/lang/String;

.field private decimals:J

.field private goal:D

.field private final title:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3e4346a81c47ba69L    # 8.976088213824233E-9

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/data/Account"

    const/16 v3, 0x23

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;DLjava/lang/String;DZI)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->id:J

    .line 38
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p4, p5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getLong(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    .line 41
    invoke-virtual {p0, p4, p5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getDecimal(D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    .line 42
    iput-wide p7, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    .line 43
    iput-boolean p9, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    .line 44
    iput p10, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    .line 45
    aput-boolean v1, v0, v1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;JDZI)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->id:J

    .line 26
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    .line 27
    iput-wide p4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    .line 28
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    .line 29
    iput-wide p7, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    .line 30
    iput-wide p9, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    .line 31
    iput-boolean p11, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    .line 32
    iput p12, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v2

    .line 47
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->id:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    .line 56
    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public archive()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    iput-boolean v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    .line 118
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void
.end method

.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 160
    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v3

    .line 127
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    if-eqz v4, :cond_8

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 129
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->id:J

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    aput-boolean v2, v3, v4

    .line 132
    :goto_0
    const/16 v4, 0x1a

    aput-boolean v2, v3, v4

    .line 129
    :goto_1
    const/16 v4, 0x1b

    aput-boolean v2, v3, v4

    .line 137
    :goto_2
    return v1

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x12

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    .line 131
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurSum()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const/16 v4, 0x13

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x14

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    const/16 v4, 0x15

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_4
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    iget-wide v6, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    const/16 v4, 0x16

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    iget-boolean v5, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    if-eq v4, v5, :cond_6

    const/16 v4, 0x17

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    iget v5, v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    if-eq v4, v5, :cond_7

    const/16 v4, 0x18

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_7
    const/16 v1, 0x19

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 137
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_8
    const/16 v4, 0x1c

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method public getColor()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    iget v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getCurSum()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    const/4 v1, 0x6

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDecimals()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    const/4 v1, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFullSum()D
    .locals 8

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getCurSum()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getDecimals()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    const/16 v1, 0x8

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getGoal()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    const/16 v1, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public isArchived()Z
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    iget-boolean v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public put(D)V
    .locals 11

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v2

    .line 103
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    add-double v0, v4, v6

    .line 104
    .local v0, "sum":D
    add-double/2addr v0, p1

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getLong(D)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getDecimal(D)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    .line 107
    const/16 v3, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    .line 122
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public take(D)V
    .locals 11

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v2

    .line 110
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    add-double v0, v4, v6

    .line 111
    .local v0, "sum":D
    sub-double/2addr v0, p1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getLong(D)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getDecimal(D)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    .line 114
    const/16 v3, 0xe

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Account {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v2, "title = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v2, "curSum = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v2, "currency = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v2, "decimals = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v2, "goal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v2, "archived = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v2, "color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1d

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->$jacocoInit()[Z

    move-result-object v2

    .line 165
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->curSum:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 168
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->decimals:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->goal:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 171
    iget-boolean v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archived:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    aput-boolean v1, v2, v0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    iget v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    const/16 v0, 0x21

    aput-boolean v1, v2, v0

    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x20

    aput-boolean v1, v2, v3

    goto :goto_0
.end method

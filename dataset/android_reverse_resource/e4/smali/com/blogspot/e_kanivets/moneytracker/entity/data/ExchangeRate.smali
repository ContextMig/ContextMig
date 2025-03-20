.class public Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
.super Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;
.source "ExchangeRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:D

.field private createdAt:J

.field private fromCurrency:Ljava/lang/String;

.field private toCurrency:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1657a40c90c10661L    # -9.322874716062487E200

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;D)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->id:J

    .line 22
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    .line 23
    iput-object p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    .line 25
    iput-wide p7, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;D)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 29
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->id:J

    .line 30
    iput-wide p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    .line 31
    iput-object p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    .line 33
    iput-wide p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    .line 34
    aput-boolean v1, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/BaseEntity;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    .line 41
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v3

    .line 78
    instance-of v4, p1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    if-eqz v4, :cond_5

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 80
    .local v0, "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->id:J

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    aput-boolean v2, v3, v4

    .line 84
    :goto_0
    const/16 v4, 0xe

    aput-boolean v2, v3, v4

    .line 80
    :goto_1
    const/16 v4, 0xf

    aput-boolean v2, v3, v4

    .line 85
    :goto_2
    return v1

    .line 80
    :cond_0
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    .line 81
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getCreatedAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0xa

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0xb

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    .line 84
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    const/16 v4, 0xc

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 85
    .end local v0    # "rate":Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    :cond_5
    const/16 v4, 0x10

    aput-boolean v2, v3, v4

    goto :goto_2
.end method

.method public getAmount()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    const/4 v1, 0x7

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getCreatedAt()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    const/4 v1, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFromCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getId()J
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->id:J

    const/4 v1, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getToCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "ExchangeRate {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v2, "id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v2, "createdAt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v2, "fromCurrency = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo v2, "toCurrency = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v2, "amount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->createdAt:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->fromCurrency:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->toCurrency:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->amount:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 114
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

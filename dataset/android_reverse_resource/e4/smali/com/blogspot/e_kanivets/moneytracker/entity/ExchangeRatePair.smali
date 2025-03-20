.class public Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;
.super Ljava/lang/Object;
.source "ExchangeRatePair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amountBuy:D

.field private amountSell:D

.field private firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fromCurrency:Ljava/lang/String;

.field private secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private toCurrency:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0xb4d4c6c7ed04ea1L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair$1;

    invoke-direct {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair$1;-><init>()V

    sput-object v1, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 38
    const-class v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    .line 43
    const/4 v0, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    .line 32
    iput-wide p3, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    .line 33
    iput-wide p5, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    .line 34
    aput-boolean v1, v0, v1

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getAmountBuy()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    const/16 v1, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getAmountSell()D
    .locals 5

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    const/16 v1, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getFromCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getToCurrency()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public make()Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v2

    .line 62
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    .line 81
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    .line 67
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    const/4 v0, 0x4

    aput-boolean v1, v2, v0

    .line 81
    :goto_1
    const/4 v0, 0x7

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getId()J

    move-result-wide v4

    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    .line 73
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    div-double v4, v8, v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    const/4 v0, 0x5

    aput-boolean v1, v2, v0

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getFromCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getToCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    .line 78
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;->getAmount()D

    move-result-wide v4

    div-double v4, v8, v4

    iput-wide v4, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    const/4 v0, 0x6

    aput-boolean v1, v2, v0

    goto :goto_1
.end method

.method public setFirstRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 86
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSecondRate(Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    .line 90
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->$jacocoInit()[Z

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->firstRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->secondRate:Lcom/blogspot/e_kanivets/moneytracker/entity/data/ExchangeRate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->fromCurrency:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->toCurrency:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountBuy:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 120
    iget-wide v2, p0, Lcom/blogspot/e_kanivets/moneytracker/entity/ExchangeRatePair;->amountSell:D

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 121
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

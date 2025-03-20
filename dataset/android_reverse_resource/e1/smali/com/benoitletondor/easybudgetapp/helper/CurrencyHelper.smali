.class public Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;
.super Ljava/lang/Object;
.source "CurrencyHelper.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z

.field private static final MAIN_CURRENCIES:[Ljava/lang/String;

.field private static final decimalFormatter:Ljava/text/DecimalFormat;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3749a9e3b5b076cL    # -8.543451120461597E291

    const-string v2, "com/benoitletondor/easybudgetapp/helper/CurrencyHelper"

    const/16 v3, 0x3d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "USD"

    aput-object v3, v1, v2

    const-string v2, "EUR"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "GBP"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "IRN"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "AUD"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "CAD"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SGD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "CHF"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "MYR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "JPY"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CNY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "NZD"

    aput-object v3, v1, v2

    sput-object v1, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->MAIN_CURRENCIES:[Ljava/lang/String;

    const/16 v1, 0x3b

    aput-boolean v4, v0, v1

    .line 52
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->decimalFormatter:Ljava/text/DecimalFormat;

    const/16 v1, 0x3c

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getCurrencyDisplayName(Ljava/util/Currency;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v1

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    const/16 v0, 0x20

    aput-boolean v3, v1, v0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Currency;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-boolean v3, v1, v2

    .line 170
    :goto_0
    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x22

    aput-boolean v3, v1, v0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x24

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public static getDBValueForDouble(D)J
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/4 v10, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v4

    .line 221
    invoke-static {p0, p1}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedAmountValue(D)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    aput-boolean v10, v4, v6

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDBValueForDouble: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v6, 0x30

    aput-boolean v10, v4, v6

    .line 224
    mul-double v6, p0, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-long v0, v6

    .line 225
    .local v0, "ceiledValue":J
    long-to-double v6, v0

    div-double/2addr v6, v12

    const/16 v8, 0x31

    aput-boolean v10, v4, v8

    .line 227
    invoke-static {v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedAmountValue(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v5, 0x32

    aput-boolean v10, v4, v5

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDBValueForDouble, return ceiled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 230
    const/16 v5, 0x33

    aput-boolean v10, v4, v5

    .line 245
    .end local v0    # "ceiledValue":J
    .local v2, "normalValue":J
    :goto_0
    return-wide v0

    .line 233
    .end local v2    # "normalValue":J
    .restart local v0    # "ceiledValue":J
    :cond_0
    double-to-long v6, p0

    const-wide/16 v8, 0x64

    mul-long v2, v6, v8

    .line 234
    .restart local v2    # "normalValue":J
    long-to-double v6, v2

    div-double/2addr v6, v12

    const/16 v8, 0x34

    aput-boolean v10, v4, v8

    .line 236
    invoke-static {v6, v7}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getFormattedAmountValue(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x35

    aput-boolean v10, v4, v5

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDBValueForDouble, return normal value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 239
    const/16 v5, 0x36

    aput-boolean v10, v4, v5

    move-wide v0, v2

    goto :goto_0

    .line 242
    :cond_1
    mul-double v6, p0, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v0, v6

    const/16 v5, 0x37

    aput-boolean v10, v4, v5

    .line 243
    .end local v0    # "ceiledValue":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDBValueForDouble, return floored value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    .line 245
    const/16 v5, 0x38

    aput-boolean v10, v4, v5

    goto :goto_0
.end method

.method public static getFormattedAmountValue(D)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 203
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/16 v2, 0x2a

    aput-boolean v3, v0, v2

    .line 205
    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/16 v2, 0x2b

    aput-boolean v3, v0, v2

    .line 206
    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/16 v2, 0x2c

    aput-boolean v3, v0, v2

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v2, 0x2d

    aput-boolean v3, v0, v2

    .line 209
    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getFormattedCurrencyString(Landroid/content/Context;D)Ljava/lang/String;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v1

    const/16 v2, 0x25

    aput-boolean v3, v0, v2

    .line 187
    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/16 v2, 0x26

    aput-boolean v3, v0, v2

    .line 188
    invoke-virtual {v1, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/16 v2, 0x27

    aput-boolean v3, v0, v2

    .line 190
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    const/16 v2, 0x28

    aput-boolean v3, v0, v2

    .line 192
    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getMainAvailableCurrencies()Ljava/util/List;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v3

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->MAIN_CURRENCIES:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v1, "mainCurrencies":Ljava/util/List;, "Ljava/util/List<Ljava/util/Currency;>;"
    sget-object v4, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->MAIN_CURRENCIES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v2, 0x0

    aput-boolean v9, v3, v9

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    const/4 v7, 0x2

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v3, v7

    .line 70
    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 71
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    const/4 v7, 0x3

    const/4 v8, 0x1

    aput-boolean v8, v3, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    const/4 v6, 0x6

    aput-boolean v9, v3, v6

    .line 66
    .end local v0    # "currency":Ljava/util/Currency;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x9

    aput-boolean v9, v3, v6

    goto :goto_0

    .line 71
    .restart local v0    # "currency":Ljava/util/Currency;
    :cond_0
    const/4 v7, 0x4

    const/4 v8, 0x1

    :try_start_1
    aput-boolean v8, v3, v7

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x5

    const/4 v8, 0x1

    aput-boolean v8, v3, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 76
    .end local v0    # "currency":Ljava/util/Currency;
    :catch_0
    move-exception v7

    const/4 v7, 0x7

    aput-boolean v9, v3, v7

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find currency with code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/benoitletondor/easybudgetapp/helper/Logger;->debug(Ljava/lang/String;)V

    const/16 v6, 0x8

    aput-boolean v9, v3, v6

    goto :goto_2

    .line 82
    :cond_1
    const/16 v2, 0xa

    aput-boolean v9, v3, v2

    return-object v1
.end method

.method public static getOtherAvailableCurrencies()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x13

    const/4 v9, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v4

    .line 92
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->getMainAvailableCurrencies()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "mainCurrencies":Ljava/util/List;, "Ljava/util/List<Ljava/util/Currency;>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_2

    const/16 v2, 0xb

    aput-boolean v9, v4, v2

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0xc

    aput-boolean v9, v4, v2

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v2, 0xd

    aput-boolean v9, v4, v2

    .line 100
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    aput-boolean v9, v4, v2

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Currency;

    const/16 v6, 0xf

    aput-boolean v9, v4, v6

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x10

    aput-boolean v9, v4, v2

    .line 108
    :goto_1
    aput-boolean v9, v4, v7

    goto :goto_0

    .line 104
    :cond_0
    const/16 v2, 0x11

    aput-boolean v9, v4, v2

    .line 106
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const/16 v2, 0x12

    aput-boolean v9, v4, v2

    goto :goto_1

    .line 110
    :cond_1
    const/16 v2, 0x14

    aput-boolean v9, v4, v2

    move-object v2, v3

    .line 146
    :goto_2
    return-object v2

    .line 114
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v2, 0x15

    aput-boolean v9, v4, v2

    .line 116
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 117
    .local v0, "locales":[Ljava/util/Locale;
    array-length v5, v0

    const/4 v2, 0x0

    const/16 v6, 0x16

    aput-boolean v9, v4, v6

    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v6, v0, v2

    const/16 v7, 0x17

    const/4 v8, 0x1

    :try_start_0
    aput-boolean v8, v4, v7

    .line 121
    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v6

    const/16 v7, 0x18

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 123
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x19

    const/4 v8, 0x1

    aput-boolean v8, v4, v7

    .line 128
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/16 v6, 0x1b

    aput-boolean v9, v4, v6

    .line 117
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x1d

    aput-boolean v9, v4, v6

    goto :goto_3

    .line 125
    :cond_3
    const/16 v6, 0x1a

    aput-boolean v9, v4, v6

    goto :goto_4

    .line 130
    :catch_0
    move-exception v6

    const/16 v6, 0x1c

    aput-boolean v9, v4, v6

    goto :goto_4

    .line 136
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v3, 0x1e

    aput-boolean v9, v4, v3

    .line 137
    new-instance v3, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;

    invoke-direct {v3}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper$1;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    const/16 v3, 0x1f

    aput-boolean v9, v4, v3

    goto :goto_2
.end method

.method public static getUserCurrency(Landroid/content/Context;)Ljava/util/Currency;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 256
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "currency_iso"

    invoke-virtual {v1, v2}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    const/16 v2, 0x39

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static setUserCurrency(Landroid/content/Context;Ljava/util/Currency;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Currency;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/helper/CurrencyHelper;->$jacocoInit()[Z

    move-result-object v0

    .line 267
    invoke-static {p0}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->getInstance(Landroid/content/Context;)Lcom/benoitletondor/easybudgetapp/helper/Parameters;

    move-result-object v1

    const-string v2, "currency_iso"

    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/benoitletondor/easybudgetapp/helper/Parameters;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/16 v1, 0x3a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

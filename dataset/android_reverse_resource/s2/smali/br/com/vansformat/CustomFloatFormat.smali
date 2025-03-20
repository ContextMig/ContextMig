.class public Lbr/com/vansformat/CustomFloatFormat;
.super Ljava/lang/Object;
.source "CustomFloatFormat.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vansformat/CustomFloatFormat;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4a7db6a33cb86502L    # 6.948195858213897E50

    const-string v2, "br/com/vansformat/CustomFloatFormat"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vansformat/CustomFloatFormat;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private static getCustomFormat()Ljava/text/NumberFormat;
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    aput-boolean v3, v0, v3

    .line 14
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    aput-boolean v3, v0, v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 16
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getMonetaryMaskedValue(Landroid/content/Context;D)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->getCustomFormat()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x7

    aput-boolean v4, v0, v2

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f05002a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method public static getSimpleFormatedValue(D)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->getCustomFormat()Ljava/text/NumberFormat;

    move-result-object v1

    const/4 v2, 0x4

    aput-boolean v3, v0, v2

    .line 21
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/4 v2, 0x5

    aput-boolean v3, v0, v2

    .line 22
    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->$jacocoInit()[Z

    move-result-object v2

    .line 31
    invoke-static {}, Lbr/com/vansformat/CustomFloatFormat;->getCustomFormat()Ljava/text/NumberFormat;

    move-result-object v3

    const/16 v1, 0x9

    const/4 v4, 0x1

    :try_start_0
    aput-boolean v4, v2, v1

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    const/4 v4, 0x1

    aput-boolean v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0xc

    aput-boolean v6, v2, v1

    .line 36
    :goto_1
    return v0

    .line 34
    :cond_0
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/16 v4, 0xb

    const/4 v5, 0x1

    aput-boolean v5, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    :goto_2
    const/16 v1, 0x10

    aput-boolean v6, v2, v1

    goto :goto_1

    :cond_1
    const/16 v0, 0x2e

    const/16 v1, 0x2c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    goto :goto_2
.end method

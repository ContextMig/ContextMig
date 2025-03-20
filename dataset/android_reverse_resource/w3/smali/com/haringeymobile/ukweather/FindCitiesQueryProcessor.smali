.class Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;
.super Ljava/lang/Object;
.source "FindCitiesQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final COORDINATES_SEPARATOR:Ljava/lang/String; = ","

.field private static final DECIMAL_MARK:Ljava/lang/String; = "."

.field private static final DECIMAL_MARK_REGEX:Ljava/lang/String; = "\\."

.field private static final LATITUDE_MAX_VALUE:I = 0x5a

.field private static final LATITUDE_MIN_VALUE:I = -0x5a

.field private static final LONGITUDE_MAX_VALUE:I = 0xb4

.field private static final LONGITUDE_MIN_VALUE:I = -0xb4


# instance fields
.field private invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

.field private query:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7e22df9011a43ce3L    # 3.949784159352466E299

    const-string v2, "com/haringeymobile/ukweather/FindCitiesQueryProcessor"

    const/16 v3, 0x2d

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoInit()[Z

    move-result-object v0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    check-cast p1, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    iput-object p1, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    .line 40
    iput-object p2, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->query:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private doesQueryContainAnyLetters()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoInit()[Z

    move-result-object v3

    .line 153
    const/16 v4, 0x28

    aput-boolean v2, v3, v4

    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->query:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/16 v4, 0x29

    aput-boolean v2, v3, v4

    .line 154
    iget-object v4, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->query:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const/16 v1, 0x2a

    aput-boolean v2, v3, v1

    move v1, v2

    .line 158
    :goto_1
    return v1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x2b

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 158
    :cond_1
    const/16 v4, 0x2c

    aput-boolean v2, v3, v4

    goto :goto_1
.end method

.method private getUrlUsingGeographicalCoordinates(Landroid/content/Context;)Ljava/net/URL;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoInit()[Z

    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->query:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    aput-boolean v8, v4, v5

    .line 70
    iget-object v5, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->query:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "coordinates":[Ljava/lang/String;
    aget-object v2, v0, v9

    .line 72
    .local v2, "providedLatitude":Ljava/lang/String;
    aget-object v5, v0, v8

    const/4 v6, 0x6

    aput-boolean v8, v4, v6

    .line 74
    invoke-direct {p0, v2, v8}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->processProvidedCoordinate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    aput-boolean v8, v4, v7

    .line 75
    invoke-direct {p0, v5, v9}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->processProvidedCoordinate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "processedLongitude":Ljava/lang/String;
    if-nez v6, :cond_0

    const/16 v5, 0x8

    aput-boolean v8, v4, v5

    .line 77
    :goto_0
    const/16 v5, 0xa

    aput-boolean v8, v4, v5

    .line 86
    .end local v0    # "coordinates":[Ljava/lang/String;
    .end local v1    # "processedLongitude":Ljava/lang/String;
    .end local v2    # "providedLatitude":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 76
    .restart local v0    # "coordinates":[Ljava/lang/String;
    .restart local v1    # "processedLongitude":Ljava/lang/String;
    .restart local v2    # "providedLatitude":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const/16 v5, 0x9

    aput-boolean v8, v4, v5

    goto :goto_0

    .line 79
    :cond_1
    new-instance v3, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;

    invoke-direct {v3, p1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;-><init>(Landroid/content/Context;)V

    const/16 v6, 0xb

    aput-boolean v8, v4, v6

    .line 80
    invoke-virtual {v3, v2, v5}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getAvailableCitiesListUrlByGeographicalCoordinates(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 79
    const/16 v5, 0xc

    aput-boolean v8, v4, v5

    goto :goto_1

    .line 84
    .end local v0    # "coordinates":[Ljava/lang/String;
    .end local v1    # "processedLongitude":Ljava/lang/String;
    .end local v2    # "providedLatitude":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    const v6, 0x7f060026

    invoke-interface {v5, v6}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;->showAlertDialog(I)V

    .line 86
    const/16 v5, 0xd

    aput-boolean v8, v4, v5

    goto :goto_1
.end method

.method private processProvidedCoordinate(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p1, "integer"    # Ljava/lang/String;

    .prologue
    const v11, 0x7f060027

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoInit()[Z

    move-result-object v9

    .line 103
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0xe

    aput-boolean v12, v9, v8

    .line 104
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "decimalFraction":[Ljava/lang/String;
    aget-object p1, v2, v3

    .line 106
    aget-object v1, v2, v12

    .line 107
    .local v1, "decimal":Ljava/lang/String;
    const/16 v8, 0xf

    aput-boolean v12, v9, v8

    .line 113
    .end local v1    # "decimal":Ljava/lang/String;
    .end local v2    # "decimalFraction":[Ljava/lang/String;
    :goto_0
    const/16 v8, 0x11

    const/4 v10, 0x1

    :try_start_0
    aput-boolean v10, v9, v8

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 123
    .local v4, "integerPart":I
    if-eqz p2, :cond_1

    const/16 v6, -0x5a

    const/16 v8, 0x14

    aput-boolean v12, v9, v8

    .line 124
    .local v6, "minValue":I
    :goto_1
    if-eqz p2, :cond_2

    const/16 v5, 0x5a

    const/16 v8, 0x16

    aput-boolean v12, v9, v8

    .line 125
    .local v5, "maxValue":I
    :goto_2
    if-ge v4, v6, :cond_3

    const/16 v8, 0x18

    aput-boolean v12, v9, v8

    .line 126
    :goto_3
    iget-object v10, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    if-eqz p2, :cond_4

    const v8, 0x7f060024

    const/16 v11, 0x1a

    aput-boolean v12, v9, v11

    :goto_4
    invoke-interface {v10, v8}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;->showAlertDialog(I)V

    .line 129
    const/16 v8, 0x1c

    aput-boolean v12, v9, v8

    .line 149
    .end local v4    # "integerPart":I
    .end local v5    # "maxValue":I
    .end local v6    # "minValue":I
    :goto_5
    return-object v7

    .line 109
    :cond_0
    const/16 v8, 0x10

    aput-boolean v12, v9, v8

    move-object v1, v7

    goto :goto_0

    .line 117
    :catch_0
    move-exception v8

    const/16 v8, 0x12

    aput-boolean v12, v9, v8

    .line 118
    iget-object v8, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    invoke-interface {v8, v11}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;->showAlertDialog(I)V

    .line 120
    const/16 v8, 0x13

    aput-boolean v12, v9, v8

    goto :goto_5

    .line 123
    .restart local v4    # "integerPart":I
    :cond_1
    const/16 v6, -0xb4

    const/16 v8, 0x15

    aput-boolean v12, v9, v8

    goto :goto_1

    .line 124
    .restart local v6    # "minValue":I
    :cond_2
    const/16 v5, 0xb4

    const/16 v8, 0x17

    aput-boolean v12, v9, v8

    goto :goto_2

    .line 125
    .restart local v5    # "maxValue":I
    :cond_3
    if-le v4, v5, :cond_5

    const/16 v8, 0x19

    aput-boolean v12, v9, v8

    goto :goto_3

    .line 126
    :cond_4
    const v8, 0x7f060025

    const/16 v11, 0x1b

    aput-boolean v12, v9, v11

    goto :goto_4

    .line 132
    :cond_5
    if-nez v1, :cond_6

    const/16 v7, 0x1d

    aput-boolean v12, v9, v7

    .line 145
    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "coordinate":Ljava/lang/String;
    if-gtz v3, :cond_7

    const/16 v7, 0x24

    aput-boolean v12, v9, v7

    .line 149
    :goto_7
    const/16 v7, 0x27

    aput-boolean v12, v9, v7

    move-object v7, v0

    goto :goto_5

    .line 132
    .end local v0    # "coordinate":Ljava/lang/String;
    :cond_6
    const/16 v8, 0x1e

    aput-boolean v12, v9, v8

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x3

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v10, 0x1f

    aput-boolean v12, v9, v10

    .line 135
    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "decimal":Ljava/lang/String;
    const/16 v8, 0x20

    const/4 v10, 0x1

    :try_start_1
    aput-boolean v10, v9, v8

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 142
    .local v3, "decimalPart":I
    const/16 v7, 0x21

    aput-boolean v12, v9, v7

    goto :goto_6

    .line 138
    .end local v3    # "decimalPart":I
    :catch_1
    move-exception v8

    const/16 v8, 0x22

    aput-boolean v12, v9, v8

    .line 139
    iget-object v8, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    invoke-interface {v8, v11}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;->showAlertDialog(I)V

    .line 141
    const/16 v8, 0x23

    aput-boolean v12, v9, v8

    goto :goto_5

    .line 146
    .end local v1    # "decimal":Ljava/lang/String;
    .restart local v0    # "coordinate":Ljava/lang/String;
    :cond_7
    const/16 v7, 0x25

    aput-boolean v12, v9, v7

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x26

    aput-boolean v12, v9, v7

    goto :goto_7
.end method


# virtual methods
.method getUrlForFindCitiesQuery(Landroid/content/Context;)Ljava/net/URL;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->$jacocoInit()[Z

    move-result-object v2

    .line 48
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->doesQueryContainAnyLetters()Z

    move-result v0

    .line 49
    .local v0, "doesQueryContainAnyLetters":Z
    if-eqz v0, :cond_0

    aput-boolean v5, v2, v5

    .line 50
    new-instance v3, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;

    invoke-direct {v3, p1}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/haringeymobile/ukweather/data/OpenWeatherMapUrl;->getAvailableCitiesListUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .local v1, "url":Ljava/net/URL;
    const/4 v3, 0x2

    aput-boolean v5, v2, v3

    .line 55
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->invalidQueryListener:Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor$InvalidQueryListener;

    .line 56
    const/4 v3, 0x4

    aput-boolean v5, v2, v3

    return-object v1

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/haringeymobile/ukweather/FindCitiesQueryProcessor;->getUrlUsingGeographicalCoordinates(Landroid/content/Context;)Ljava/net/URL;

    move-result-object v1

    const/4 v3, 0x3

    aput-boolean v5, v2, v3

    goto :goto_0
.end method

.class public Lorg/asdtm/goodweather/model/CitySearch;
.super Ljava/lang/Object;
.source "CitySearch.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1053c44bd6a9665aL    # -8.561051060963447E229

    const-string v2, "org/asdtm/goodweather/model/CitySearch"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCityName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCountryCode:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lorg/asdtm/goodweather/model/CitySearch;->mLatitude:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lorg/asdtm/goodweather/model/CitySearch;->mLongitude:Ljava/lang/String;

    .line 18
    aput-boolean v1, v0, v1

    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCityName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCountry:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCountryCode:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mLatitude:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 52
    iget-object v1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mLongitude:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    iput-object p1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCityName:Ljava/lang/String;

    .line 28
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iput-object p1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCountry:Ljava/lang/String;

    .line 38
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    iput-object p1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCountryCode:Ljava/lang/String;

    .line 68
    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iput-object p1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mLatitude:Ljava/lang/String;

    .line 48
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-object p1, p0, Lorg/asdtm/goodweather/model/CitySearch;->mLongitude:Ljava/lang/String;

    .line 58
    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/model/CitySearch;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/asdtm/goodweather/model/CitySearch;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

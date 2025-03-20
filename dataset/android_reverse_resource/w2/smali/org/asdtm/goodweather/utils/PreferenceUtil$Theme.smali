.class public final enum Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;
.super Ljava/lang/Enum;
.source "PreferenceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/asdtm/goodweather/utils/PreferenceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum dark:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

.field public static final enum light:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6726c1186203cbceL    # -5.666182024988787E-189

    const-string v2, "org/asdtm/goodweather/utils/PreferenceUtil$Theme"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    new-instance v1, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    const-string v2, "light"

    invoke-direct {v1, v2, v4}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->light:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 11
    new-instance v1, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    const-string v2, "dark"

    invoke-direct {v1, v2, v3}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->dark:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    .line 9
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    sget-object v2, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->light:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    aput-object v2, v1, v4

    sget-object v2, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->dark:Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    aput-object v2, v1, v3

    sput-object v1, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$VALUES:[Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$jacocoInit()[Z

    move-result-object v1

    .line 9
    const-class v0, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;
    .locals 4

    .prologue
    invoke-static {}, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$jacocoInit()[Z

    move-result-object v1

    .line 9
    sget-object v0, Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->$VALUES:[Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    invoke-virtual {v0}, [Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/asdtm/goodweather/utils/PreferenceUtil$Theme;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

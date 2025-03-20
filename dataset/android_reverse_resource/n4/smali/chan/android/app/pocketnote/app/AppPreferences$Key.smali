.class final enum Lchan/android/app/pocketnote/app/AppPreferences$Key;
.super Ljava/lang/Enum;
.source "AppPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/AppPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lchan/android/app/pocketnote/app/AppPreferences$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum ALPHABET_SORT_COLUMN:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum COLLECTION_VIEW:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum COLOR:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum PASSWORD:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum SORT_BY:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum USER_NAME:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum USER_PHOTO:Lchan/android/app/pocketnote/app/AppPreferences$Key;

.field public static final enum USER_PHOTO_TEMP:Lchan/android/app/pocketnote/app/AppPreferences$Key;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4e1786e3fa708c47L    # -2.8367410331035917E-68

    const-string v2, "chan/android/app/pocketnote/app/AppPreferences$Key"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "PASSWORD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->PASSWORD:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-boolean v4, v0, v5

    .line 114
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "COLOR"

    invoke-direct {v1, v2, v4}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLOR:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-boolean v4, v0, v6

    .line 115
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "SORT_BY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->SORT_BY:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-boolean v4, v0, v7

    .line 116
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "COLLECTION_VIEW"

    invoke-direct {v1, v2, v5}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLLECTION_VIEW:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-boolean v4, v0, v8

    .line 117
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "ALPHABET_SORT_COLUMN"

    invoke-direct {v1, v2, v6}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->ALPHABET_SORT_COLUMN:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 118
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "USER_PHOTO_TEMP"

    invoke-direct {v1, v2, v7}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO_TEMP:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 119
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "USER_PHOTO"

    invoke-direct {v1, v2, v8}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 120
    new-instance v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const-string v2, "USER_NAME"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lchan/android/app/pocketnote/app/AppPreferences$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_NAME:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    .line 112
    const/16 v1, 0x8

    new-array v1, v1, [Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const/4 v2, 0x0

    sget-object v3, Lchan/android/app/pocketnote/app/AppPreferences$Key;->PASSWORD:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v3, v1, v2

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLOR:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Lchan/android/app/pocketnote/app/AppPreferences$Key;->SORT_BY:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v3, v1, v2

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLLECTION_VIEW:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v2, v1, v5

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->ALPHABET_SORT_COLUMN:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v2, v1, v6

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO_TEMP:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v2, v1, v7

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v2, v1, v8

    const/4 v2, 0x7

    sget-object v3, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_NAME:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-object v3, v1, v2

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$VALUES:[Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

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
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$jacocoInit()[Z

    move-result-object v0

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lchan/android/app/pocketnote/app/AppPreferences$Key;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$jacocoInit()[Z

    move-result-object v1

    .line 112
    const-class v0, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lchan/android/app/pocketnote/app/AppPreferences$Key;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lchan/android/app/pocketnote/app/AppPreferences$Key;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$jacocoInit()[Z

    move-result-object v1

    .line 112
    sget-object v0, Lchan/android/app/pocketnote/app/AppPreferences$Key;->$VALUES:[Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v0}, [Lchan/android/app/pocketnote/app/AppPreferences$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lchan/android/app/pocketnote/app/AppPreferences$Key;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method

.class public Lchan/android/app/pocketnote/app/AppPreferences;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/AppPreferences$Key;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final AVAILABLE_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I

.field private static final VIEW_AS_GRID:I = 0x1

.field private static final VIEW_AS_LIST:I

.field private static prefs:Landroid/content/SharedPreferences;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x277d4c2f2cd27ef0L    # -2.358119309473994E118

    const-string v2, "chan/android/app/pocketnote/app/AppPreferences"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    const-string v1, "#f4da70"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lchan/android/app/pocketnote/app/AppPreferences;->DEFAULT_COLOR:I

    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    .line 22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->AVAILABLE_COLUMNS:Ljava/util/Set;

    const/16 v1, 0x1e

    aput-boolean v3, v0, v1

    .line 26
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->AVAILABLE_COLUMNS:Ljava/util/Set;

    const-string v2, "content"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1f

    aput-boolean v3, v0, v1

    .line 27
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->AVAILABLE_COLUMNS:Ljava/util/Set;

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static getDefaultAlphabetSortColumn()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->ALPHABET_SORT_COLUMN:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getDefaultCollectionView()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLLECTION_VIEW:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getDefaultColor()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 72
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLOR:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    sget v3, Lchan/android/app/pocketnote/app/AppPreferences;->DEFAULT_COLOR:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getDefaultSortBy()I
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->SORT_BY:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->PASSWORD:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_NAME:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Anonymous"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1c

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getUserPhotoFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static getUserTempPhotoFilePath()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO_TEMP:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static hasCorrectPassword(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 84
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getPassword()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v3, v0, v2

    .line 85
    invoke-static {p0}, Lchan/android/app/pocketnote/util/HashUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x16

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    aput-boolean v3, v0, v3

    .line 36
    :goto_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void

    .line 33
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 34
    const-string v1, "chan.android.app.pocketnote.prefs_"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static saveDefaultAlphabetSortColumn(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->AVAILABLE_COLUMNS:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alphabet column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    throw v1

    .line 42
    :cond_0
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->ALPHABET_SORT_COLUMN:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return-void
.end method

.method public static saveDefaultCollectionView(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    if-nez p0, :cond_0

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 51
    :goto_0
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLLECTION_VIEW:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 53
    :goto_1
    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    return-void

    .line 50
    :cond_0
    if-eq p0, v3, :cond_1

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public static saveDefaultColor(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 68
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->COLOR:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static saveDefaultSortBy(I)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->SORT_BY:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static savePassword(Ljava/lang/String;)V
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->PASSWORD:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lchan/android/app/pocketnote/util/HashUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static saveUserName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_NAME:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static saveUserPhotoFilePath(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static saveUserTempPhotoFilePath(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->$jacocoInit()[Z

    move-result-object v0

    .line 93
    sget-object v1, Lchan/android/app/pocketnote/app/AppPreferences;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lchan/android/app/pocketnote/app/AppPreferences$Key;->USER_PHOTO_TEMP:Lchan/android/app/pocketnote/app/AppPreferences$Key;

    invoke-virtual {v2}, Lchan/android/app/pocketnote/app/AppPreferences$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

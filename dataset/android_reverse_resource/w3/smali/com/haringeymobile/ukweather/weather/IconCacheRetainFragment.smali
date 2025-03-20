.class public Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "IconCacheRetainFragment.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "Cache fragment"


# instance fields
.field public iconCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x28cc56dbbf0ee2deL    # 3.68248172334426E-112

    const-string v2, "com/haringeymobile/ukweather/weather/IconCacheRetainFragment"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->$jacocoInit()[Z

    move-result-object v1

    .line 19
    const-string v2, "Cache fragment"

    aput-boolean v4, v1, v4

    .line 20
    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;

    .line 21
    .local v0, "fragment":Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 25
    :goto_0
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    return-object v0

    .line 21
    :cond_0
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 22
    new-instance v0, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;

    .end local v0    # "fragment":Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;
    invoke-direct {v0}, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;-><init>()V

    .restart local v0    # "fragment":Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;
    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "Cache fragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    .line 31
    invoke-virtual {p0, v2}, Lcom/haringeymobile/ukweather/weather/IconCacheRetainFragment;->setRetainInstance(Z)V

    .line 32
    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return-void
.end method

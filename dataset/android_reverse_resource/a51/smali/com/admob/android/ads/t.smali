.class public final Lcom/admob/android/ads/t;
.super Ljava/lang/Object;
.source "AdMobLocalizer.java"

# interfaces
.implements Lcom/admob/android/ads/h;


# static fields
.field private static a:Lcom/admob/android/ads/t;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/Thread;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/Properties;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/admob/android/ads/t;->a:Lcom/admob/android/ads/t;

    .line 28
    sput-object v0, Lcom/admob/android/ads/t;->b:Landroid/content/Context;

    .line 29
    sput-object v0, Lcom/admob/android/ads/t;->c:Ljava/lang/Thread;

    .line 94
    sput-object v0, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/admob/android/ads/t;->f:Landroid/content/Context;

    .line 101
    iput-object v4, p0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    invoke-static {}, Lcom/admob/android/ads/t;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    sget-object v0, Lcom/admob/android/ads/t;->a:Lcom/admob/android/ads/t;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admob/android/ads/t;->a:Lcom/admob/android/ads/t;

    iput-object v4, v0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/t;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/admob/android/ads/t;->c:Ljava/lang/Thread;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://mm.admob.com/static/android/i18n/20101109"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/admob/android/ads/t;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v4, v2, p0, v3}, Lcom/admob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/h;I)Lcom/admob/android/ads/e;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/admob/android/ads/t;->c:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 102
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/io/File;

    const-string v2, "admob_cache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 188
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "20101109"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 194
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    return-object v1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 109
    sput-object v0, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    const-string v0, "en"

    sput-object v0, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    .line 115
    :cond_0
    sget-object v0, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/admob/android/ads/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/admob/android/ads/t;->a(Landroid/content/Context;)V

    .line 69
    sget-object v0, Lcom/admob/android/ads/t;->a:Lcom/admob/android/ads/t;

    invoke-direct {v0}, Lcom/admob/android/ads/t;->b()Z

    iget-object v1, v0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/admob/android/ads/t;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/t;->b:Landroid/content/Context;

    .line 43
    :cond_0
    sget-object v0, Lcom/admob/android/ads/t;->a:Lcom/admob/android/ads/t;

    if-nez v0, :cond_1

    new-instance v0, Lcom/admob/android/ads/t;

    sget-object v1, Lcom/admob/android/ads/t;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/admob/android/ads/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/admob/android/ads/t;->a:Lcom/admob/android/ads/t;

    .line 44
    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 159
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/admob/android/ads/t;->f:Landroid/content/Context;

    sget-object v2, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/admob/android/ads/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 165
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 166
    iput-object v0, p0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 172
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/t;->e:Ljava/util/Properties;

    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/admob/android/ads/e;)V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    invoke-interface {p1}, Lcom/admob/android/ads/e;->a()[B

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/admob/android/ads/t;->f:Landroid/content/Context;

    sget-object v2, Lcom/admob/android/ads/t;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/admob/android/ads/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 248
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 249
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 250
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 256
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "AdMobSDK"

    const-string v1, "Could not store localized strings to cache file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/admob/android/ads/e;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 220
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "AdMobSDK"

    const-string v1, "Could not get localized strings from the AdMob servers."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    return-void
.end method

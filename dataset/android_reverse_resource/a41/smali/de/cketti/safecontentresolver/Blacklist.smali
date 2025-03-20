.class Lde/cketti/safecontentresolver/Blacklist;
.super Ljava/lang/Object;
.source "Blacklist.java"


# static fields
.field private static final META_DATA_KEY_ALLOW_INTERNAL_ACCESS:Ljava/lang/String; = "de.cketti.safecontentresolver.ALLOW_INTERNAL_ACCESS"


# instance fields
.field private blacklistedAuthorities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lde/cketti/safecontentresolver/Blacklist;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private findBlacklistedContentProviderAuthorities()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v4, p0, Lde/cketti/safecontentresolver/Blacklist;->context:Landroid/content/Context;

    invoke-direct {p0, v4}, Lde/cketti/safecontentresolver/Blacklist;->getProviderInfo(Landroid/content/Context;)[Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 58
    .local v3, "providers":[Landroid/content/pm/ProviderInfo;
    new-instance v1, Ljava/util/HashSet;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 59
    .local v1, "blacklistedAuthorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 60
    .local v2, "providerInfo":Landroid/content/pm/ProviderInfo;
    invoke-direct {p0, v2}, Lde/cketti/safecontentresolver/Blacklist;->isContentProviderWhitelisted(Landroid/content/pm/ProviderInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "authorities":[Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 59
    .end local v0    # "authorities":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :cond_1
    return-object v1
.end method

.method private getProviderInfo(Landroid/content/Context;)[Landroid/content/pm/ProviderInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "packageName":Ljava/lang/String;
    const/16 v5, 0x88

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 77
    .local v4, "providers":[Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_0

    .end local v4    # "providers":[Landroid/content/pm/ProviderInfo;
    :goto_0
    return-object v4

    .restart local v4    # "providers":[Landroid/content/pm/ProviderInfo;
    :cond_0
    const/4 v5, 0x0

    new-array v4, v5, [Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "providers":[Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private isContentProviderWhitelisted(Landroid/content/pm/ProviderInfo;)Z
    .locals 3
    .param p1, "providerInfo"    # Landroid/content/pm/ProviderInfo;

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 85
    .local v0, "metaData":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "de.cketti.safecontentresolver.ALLOW_INTERNAL_ACCESS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method declared-synchronized isBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lde/cketti/safecontentresolver/Blacklist;->blacklistedAuthorities:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lde/cketti/safecontentresolver/Blacklist;->findBlacklistedContentProviderAuthorities()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lde/cketti/safecontentresolver/Blacklist;->blacklistedAuthorities:Ljava/util/Set;

    .line 52
    :cond_0
    iget-object v0, p0, Lde/cketti/safecontentresolver/Blacklist;->blacklistedAuthorities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

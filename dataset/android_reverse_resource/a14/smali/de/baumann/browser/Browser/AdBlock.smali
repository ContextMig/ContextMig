.class public Lde/baumann/browser/Browser/AdBlock;
.super Ljava/lang/Object;
.source "AdBlock.java"


# static fields
.field private static final FILE:Ljava/lang/String; = "hosts.txt"

.field private static final hosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final locale:Ljava/util/Locale;

.field private static final whitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lde/baumann/browser/Browser/AdBlock;->hosts:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lde/baumann/browser/Browser/AdBlock;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lde/baumann/browser/Browser/AdBlock;->context:Landroid/content/Context;

    .line 70
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->hosts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lde/baumann/browser/Browser/AdBlock;->loadHosts(Landroid/content/Context;)V

    .line 73
    :cond_0
    invoke-static {p1}, Lde/baumann/browser/Browser/AdBlock;->loadDomains(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Locale;
    .locals 1

    .line 16
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 16
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->hosts:Ljava/util/Set;

    return-object v0
.end method

.method private static getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 50
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x8

    .line 52
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 57
    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "www."

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static declared-synchronized loadDomains(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lde/baumann/browser/Browser/AdBlock;

    monitor-enter v0

    .line 42
    :try_start_0
    new-instance v1, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v1, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 43
    invoke-virtual {v1, p0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 44
    sget-object p0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 45
    sget-object p0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    invoke-virtual {v1}, Lde/baumann/browser/Database/RecordAction;->listDomains()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {v1}, Lde/baumann/browser/Database/RecordAction;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0

    throw p0
.end method

.method private static loadHosts(Landroid/content/Context;)V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lde/baumann/browser/Browser/AdBlock$1;

    invoke-direct {v1, p0}, Lde/baumann/browser/Browser/AdBlock$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addDomain(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Browser/AdBlock;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 98
    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->addDomain(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 100
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearDomains()V
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Browser/AdBlock;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 114
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->clearDomains()V

    .line 115
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 116
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 111
    monitor-exit p0

    throw v0
.end method

.method isAd(Ljava/lang/String;)Z
    .locals 2

    .line 88
    :try_start_0
    invoke-static {p1}, Lde/baumann/browser/Browser/AdBlock;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->hosts:Ljava/util/Set;

    sget-object v1, Lde/baumann/browser/Browser/AdBlock;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isWhite(Ljava/lang/String;)Z
    .locals 2

    .line 77
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized removeDomain(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Browser/AdBlock;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 106
    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->deleteDomain(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 108
    sget-object v0, Lde/baumann/browser/Browser/AdBlock;->whitelist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

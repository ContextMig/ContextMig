.class public Lde/baumann/browser/Browser/Javascript;
.super Ljava/lang/Object;
.source "Javascript.java"


# static fields
.field private static final FILE:Ljava/lang/String; = "javaHosts.txt"

.field private static final hostsJS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final locale:Ljava/util/Locale;

.field private static final whitelistJS:Ljava/util/List;
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

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lde/baumann/browser/Browser/Javascript;->hostsJS:Ljava/util/Set;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lde/baumann/browser/Browser/Javascript;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lde/baumann/browser/Browser/Javascript;->context:Landroid/content/Context;

    .line 56
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->hostsJS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1}, Lde/baumann/browser/Browser/Javascript;->loadHosts(Landroid/content/Context;)V

    .line 59
    :cond_0
    invoke-static {p1}, Lde/baumann/browser/Browser/Javascript;->loadDomains(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Locale;
    .locals 1

    .line 18
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 18
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->hostsJS:Ljava/util/Set;

    return-object v0
.end method

.method private static declared-synchronized loadDomains(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lde/baumann/browser/Browser/Javascript;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Lde/baumann/browser/Database/RecordAction;

    invoke-direct {v1, p0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 45
    invoke-virtual {v1, p0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 46
    sget-object p0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 47
    sget-object p0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    invoke-virtual {v1}, Lde/baumann/browser/Database/RecordAction;->listDomainsJS()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {v1}, Lde/baumann/browser/Database/RecordAction;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0

    throw p0
.end method

.method private static loadHosts(Landroid/content/Context;)V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lde/baumann/browser/Browser/Javascript$1;

    invoke-direct {v1, p0}, Lde/baumann/browser/Browser/Javascript$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addDomain(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Browser/Javascript;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 74
    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->addDomainJS(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 76
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearDomains()V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Browser/Javascript;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 90
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->clearDomainsJS()V

    .line 91
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 92
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method

.method public isWhite(Ljava/lang/String;)Z
    .locals 2

    .line 63
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
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

    .line 80
    :try_start_0
    new-instance v0, Lde/baumann/browser/Database/RecordAction;

    iget-object v1, p0, Lde/baumann/browser/Browser/Javascript;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 82
    invoke-virtual {v0, p1}, Lde/baumann/browser/Database/RecordAction;->deleteDomainJS(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 84
    sget-object v0, Lde/baumann/browser/Browser/Javascript;->whitelistJS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    throw p1
.end method

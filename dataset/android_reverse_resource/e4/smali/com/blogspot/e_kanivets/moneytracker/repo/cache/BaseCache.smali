.class public Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;
.super Ljava/lang/Object;
.source "BaseCache.java"

# interfaces
.implements Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final CACHE_SIZE:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "BaseCache"


# instance fields
.field private lruCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x108c27d147fe87bdL    # -7.521701084132004E228

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache"

    const/16 v3, 0x15

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V
    .locals 3
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    .line 31
    new-instance v1, Landroid/support/v4/util/LruCache;

    const/high16 v2, 0x100000

    invoke-direct {v1, v2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->lruCache:Landroid/support/v4/util/LruCache;

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public create(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v2, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    .line 38
    .local v0, "createdT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    if-nez v0, :cond_0

    aput-boolean v6, v1, v6

    .line 39
    :goto_0
    const/4 v2, 0x3

    aput-boolean v6, v1, v2

    return-object v0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-interface {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->create(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public delete(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Z
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v2, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->delete(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    .local v0, "deleted":Z
    if-nez p1, :cond_0

    const/16 v2, 0xb

    aput-boolean v6, v1, v2

    .line 65
    :goto_0
    const/16 v2, 0xe

    aput-boolean v6, v1, v2

    return v0

    .line 64
    :cond_0
    if-nez v0, :cond_1

    const/16 v2, 0xc

    aput-boolean v6, v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-interface {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->delete(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    .line 46
    .local v0, "cachedT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    if-nez v0, :cond_1

    .line 47
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v3, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->read(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    .line 48
    .local v1, "readT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    if-nez v1, :cond_0

    const/4 v3, 0x4

    aput-boolean v6, v2, v3

    .line 49
    :goto_0
    const/4 v3, 0x6

    aput-boolean v6, v2, v3

    .line 50
    .end local v1    # "readT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    :goto_1
    return-object v1

    .line 48
    .restart local v1    # "readT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    :cond_0
    iget-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 50
    .end local v1    # "readT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    :cond_1
    const/4 v3, 0x7

    aput-boolean v6, v2, v3

    move-object v1, v0

    goto :goto_1
.end method

.method public bridge synthetic read(J)Ljava/lang/Object;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->read(J)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v1

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readAll()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->readAll()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, p1, p2}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->readWithCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public update(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
    .locals 7
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v2, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    .line 57
    .local v0, "updatedT":Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;, "TT;"
    if-nez v0, :cond_0

    const/16 v2, 0x8

    aput-boolean v6, v1, v2

    .line 58
    :goto_0
    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    return-object v0

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->lruCache:Landroid/support/v4/util/LruCache;

    invoke-interface {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    check-cast p1, Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/repo/cache/BaseCache;->update(Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;)Lcom/blogspot/e_kanivets/moneytracker/entity/base/IEntity;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.class public final Lio/sentry/jvmti/FrameCache;
.super Ljava/lang/Object;
.source "FrameCache.java"


# static fields
.field private static appPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Throwable;",
            "[",
            "Lio/sentry/jvmti/Frame;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/sentry/jvmti/FrameCache;->appPackages:Ljava/util/Set;

    .line 12
    new-instance v0, Lio/sentry/jvmti/FrameCache$1;

    invoke-direct {v0}, Lio/sentry/jvmti/FrameCache$1;-><init>()V

    sput-object v0, Lio/sentry/jvmti/FrameCache;->cache:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static addAppPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "newAppPackage"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lio/sentry/jvmti/FrameCache;->appPackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public static get(Ljava/lang/Throwable;)[Lio/sentry/jvmti/Frame;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    sget-object v1, Lio/sentry/jvmti/FrameCache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 46
    .local v0, "weakMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Throwable;[Lio/sentry/jvmti/Frame;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/sentry/jvmti/Frame;

    return-object v1
.end method

.class public final Lmozilla/components/support/utils/observer/ObserverRegistry;
.super Ljava/lang/Object;
.source "ObserverRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObserverRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObserverRegistry.kt\nmozilla/components/support/utils/observer/ObserverRegistry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,100:1\n1519#2,2:101\n1519#2,2:103\n*E\n*S KotlinDebug\n*F\n+ 1 ObserverRegistry.kt\nmozilla/components/support/utils/observer/ObserverRegistry\n*L\n62#1,2:101\n74#1,2:103\n*E\n"
.end annotation


# instance fields
.field private final lifecycleObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TT;",
            "Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public unregister(Ljava/lang/Object;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lmozilla/components/support/utils/observer/ObserverRegistry;->observers:Ljava/util/List;

    monitor-enter v1

    nop

    .line 52
    :try_start_0
    iget-object v0, p0, Lmozilla/components/support/utils/observer/ObserverRegistry;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v1

    .line 55
    iget-object v0, p0, Lmozilla/components/support/utils/observer/ObserverRegistry;->lifecycleObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;->remove()V

    .line 56
    :cond_0
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

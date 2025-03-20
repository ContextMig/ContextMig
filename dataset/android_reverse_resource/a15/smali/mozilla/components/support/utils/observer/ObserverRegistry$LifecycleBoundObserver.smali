.class final Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;
.super Ljava/lang/Object;
.source "ObserverRegistry.kt"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmozilla/components/support/utils/observer/ObserverRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field private final observer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final owner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final registry:Lmozilla/components/support/utils/observer/ObserverRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmozilla/components/support/utils/observer/ObserverRegistry",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    .line 90
    iget-object v0, p0, Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "owner.lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;->registry:Lmozilla/components/support/utils/observer/ObserverRegistry;

    iget-object v1, p0, Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;->observer:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmozilla/components/support/utils/observer/ObserverRegistry;->unregister(Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    check-cast p0, Landroid/arch/lifecycle/LifecycleObserver;

    .end local p0    # "this":Lmozilla/components/support/utils/observer/ObserverRegistry$LifecycleBoundObserver;
    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 97
    return-void
.end method

.class public Lcom/adjust/sdk/ActivityHandler$InternalState;
.super Ljava/lang/Object;
.source "ActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/ActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalState"
.end annotation


# instance fields
.field background:Z

.field delayStart:Z

.field enabled:Z

.field firstLaunch:Z

.field offline:Z

.field sessionResponseProcessed:Z

.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field updatePackages:Z


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->this$0:Lcom/adjust/sdk/ActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    return v0
.end method

.method public isDelayStart()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->delayStart:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->enabled:Z

    return v0
.end method

.method public isFirstLaunch()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->firstLaunch:Z

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->background:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffline()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->offline:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionResponseProcessed()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->sessionResponseProcessed:Z

    return v0
.end method

.method public isToStartNow()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->delayStart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToUpdatePackages()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler$InternalState;->updatePackages:Z

    return v0
.end method

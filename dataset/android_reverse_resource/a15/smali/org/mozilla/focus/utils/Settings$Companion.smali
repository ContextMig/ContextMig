.class public final Lorg/mozilla/focus/utils/Settings$Companion;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/utils/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/mozilla/focus/utils/Settings$Companion;-><init>()V

    return-void
.end method

.method private final getInstance()Lorg/mozilla/focus/utils/Settings;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lorg/mozilla/focus/utils/Settings;->access$getInstance$cp()Lorg/mozilla/focus/utils/Settings;

    move-result-object v0

    return-object v0
.end method

.method private final setInstance(Lorg/mozilla/focus/utils/Settings;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/mozilla/focus/utils/Settings;

    .prologue
    .line 22
    invoke-static {p1}, Lorg/mozilla/focus/utils/Settings;->access$setInstance$cp(Lorg/mozilla/focus/utils/Settings;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getInstance(Landroid/content/Context;)Lorg/mozilla/focus/utils/Settings;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/utils/Settings$Companion;

    move-object v1, v0

    invoke-direct {v1}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance()Lorg/mozilla/focus/utils/Settings;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/utils/Settings$Companion;

    move-object v1, v0

    new-instance v2, Lorg/mozilla/focus/utils/Settings;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/mozilla/focus/utils/Settings;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v1, v2}, Lorg/mozilla/focus/utils/Settings$Companion;->setInstance(Lorg/mozilla/focus/utils/Settings;)V

    .line 30
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mozilla/focus/utils/Settings$Companion;

    move-object v1, v0

    invoke-direct {v1}, Lorg/mozilla/focus/utils/Settings$Companion;->getInstance()Lorg/mozilla/focus/utils/Settings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Instance cleared"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4294967295
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

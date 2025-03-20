.class public final Lrx/android/schedulers/AndroidSchedulers;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# static fields
.field private static final INSTANCE:Lrx/android/schedulers/AndroidSchedulers;


# instance fields
.field private final mainThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lrx/android/schedulers/AndroidSchedulers;

    invoke-direct {v0}, Lrx/android/schedulers/AndroidSchedulers;-><init>()V

    sput-object v0, Lrx/android/schedulers/AndroidSchedulers;->INSTANCE:Lrx/android/schedulers/AndroidSchedulers;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    .line 30
    .local v0, "hook":Lrx/android/plugins/RxAndroidSchedulersHook;
    invoke-virtual {v0}, Lrx/android/plugins/RxAndroidSchedulersHook;->getMainThreadScheduler()Lrx/Scheduler;

    move-result-object v1

    .line 31
    .local v1, "main":Lrx/Scheduler;
    if-eqz v1, :cond_0

    .line 32
    iput-object v1, p0, Lrx/android/schedulers/AndroidSchedulers;->mainThreadScheduler:Lrx/Scheduler;

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v2, Lrx/android/schedulers/LooperScheduler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/android/schedulers/LooperScheduler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lrx/android/schedulers/AndroidSchedulers;->mainThreadScheduler:Lrx/Scheduler;

    goto :goto_0
.end method

.method public static from(Landroid/os/Looper;)Lrx/Scheduler;
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 45
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "looper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    new-instance v0, Lrx/android/schedulers/LooperScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/LooperScheduler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static mainThread()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lrx/android/schedulers/AndroidSchedulers;->INSTANCE:Lrx/android/schedulers/AndroidSchedulers;

    iget-object v0, v0, Lrx/android/schedulers/AndroidSchedulers;->mainThreadScheduler:Lrx/Scheduler;

    return-object v0
.end method
